class MainController < UIViewController

  def viewDidLoad
    super
    rmq.stylesheet = MainStylesheet
    rmq(self.view).apply_style :root_view

    @fb_login_button = rmq.append(FBLoginView.new, :fb_login_button).get
    @fb_login_button.delegate = self
  end

  def loginViewFetchedUserInfo(_, user: user)
    rmq(@fb_login_button).animate { |btn| btn.move(b: 400) }
    @name_label      = rmq.append(UILabel, :label_name).get
    @name_label.text = "#{user['first_name']} #{user['last_name']}"
    rmq(@name_label).animations.fade_in
  end

  def loginViewShowingLoggedOutUser(_)
    set_title 'User logged out'
    if @name_label
      rmq(@name_label).animations.fade_out
      @name_label.removeFromSuperview
      rmq(@fb_login_button).animate { |btn| btn.move(b: 300) }
    end
  end

  def loginViewShowingLoggedInUser(_)
    set_title 'User logged in'
  end

  def set_title(text)
    self.title = text
  end
end
