class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    leftDrawer  = LeftDrawerController.alloc.init
    center      = MainController.alloc.init
    rightDrawer = RightDrawerController.alloc.init
    nav = UINavigationController.alloc.initWithRootViewController(center)

    left_button = UIBarButtonItem.alloc.initWithTitle("->", style: UIBarButtonItemStyleBordered, target:self, action:'toggle_left_menu')
    center.navigationItem.leftBarButtonItem = left_button

    right_button = UIBarButtonItem.alloc.initWithTitle("<-", style: UIBarButtonItemStyleBordered, target:self, action:'toggle_right_menu')
    center.navigationItem.rightBarButtonItem = right_button

    @drawerController = MMDrawerController.alloc.initWithCenterViewController(nav,
      leftDrawerViewController: leftDrawer,
      rightDrawerViewController: rightDrawer)

    @drawerController.setOpenDrawerGestureModeMask(MMOpenDrawerGestureModeAll)
    @drawerController.setCloseDrawerGestureModeMask(MMCloseDrawerGestureModeAll)

    @window.rootViewController = @drawerController

    true
  end

  def toggle_left_menu
    @drawerController.toggleDrawerSide(MMDrawerSideLeft, animated: true, completion: nil)
  end

  def toggle_right_menu
    @drawerController.toggleDrawerSide(MMDrawerSideRight, animated: true, completion: nil)
  end

end
