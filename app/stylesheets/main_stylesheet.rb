class MainStylesheet < RubyMotionQuery::Stylesheet
  def root_view(st)
    st.background_color = color.white
  end

  def fb_login_button(st)
    st.frame = { centered: :both }
  end

  def label_name(st)
    st.frame          = { w: app_width, h: 40, centered: :both }
    st.text_alignment = :center
    st.hidden         = true
  end
end
