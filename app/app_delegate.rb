class AppDelegate
  def application(application, didFinishLaunchingWithOptions: launchOptions)
    @window                    = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(MainController.new)
    @window.makeKeyAndVisible
    true
  end

  def application(_, openURL: url, sourceApplication: sourceApplication, annotation: _)
    FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
  end

  def applicationDidBecomeActive(application)
    FBSession.activeSession.handleDidBecomeActive
  end

  def applicationWillTerminate(application)
    FBSession.activeSession.close
  end
end
