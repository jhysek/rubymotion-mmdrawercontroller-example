class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    leftDrawer  = LeftDrawerController.alloc.init
    center      = MainController.alloc.init
    rightDrawer = RightDrawerController.alloc.init
    nav = UINavigationController.alloc.initWithRootViewController(center)

    drawerController = MMDrawerController.alloc.initWithCenterViewController(nav,
      leftDrawerViewController: leftDrawer,
      rightDrawerViewController: rightDrawer)

    drawerController.setOpenDrawerGestureModeMask(MMOpenDrawerGestureModeAll)
    drawerController.setCloseDrawerGestureModeMask(MMCloseDrawerGestureModeAll)

    @window.rootViewController = drawerController

    true
  end
end
