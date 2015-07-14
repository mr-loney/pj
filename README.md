# 放一些乱起八糟的知识点

ios姿势
====

	左滑返回：
	if ([navigation respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
		navigation.interactivePopGestureRecognizer.enabled = YES;
		navigation.interactivePopGestureRecognizer.delegate = nil;
    }

	键盘收起管理：https://github.com/hackiftekhar/IQKeyboardManager

	UITableView空白cell不显示：self.tableView.tableFooterView = [[UIView alloc] init];
	
	ScrollView滑不到顶：self.automaticallyAdjustsScrollViewInsets = NO;  
	
	滑动隐藏导航栏：navigationController.hidesBarsOnSwipe = Yes
	
	导航返回按钮文字去除：
	[[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
														 forBarMetrics:UIBarMetricsDefault];
														 
	CollectionView悬停header：https://github.com/jamztang/CSStickyHeaderFlowLayout
	
	uitextfield placeholder颜色和位置：
	- (void) drawPlaceholderInRect:(CGRect)rect {  
    	[[UIColor blueColor] setFill];  
    	[self.placeholder drawInRect:rect withFont:self.font lineBreakMode:UILineBreakModeTailTruncation 
    				   	   alignment:self.textAlignment];  
	}  

	NSTimer因界面有动画和操作导致延迟执行解决：[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
