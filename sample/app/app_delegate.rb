class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    window.rootViewController = rootViewController
    window.makeKeyAndVisible

    ap Motion::Iconic::Icon.icon(:star, withSize:15, inCollection: :awesome)

    true
  end

  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
end
