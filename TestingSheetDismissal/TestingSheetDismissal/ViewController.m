//
//  ViewController.m
//  TestingSheetDismissal
//
//  Created by Micah T. Moore on 4/7/17.
//  Copyright © 2017 Zetetic LLC. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)viewWillAppear {
    self.view.layer.backgroundColor = [[NSColor blueColor] CGColor];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)showSheet:(id)sender {
    NSWindow *sheetWindow = [[NSWindow alloc] init];
    [self.view.window beginSheet:sheetWindow completionHandler:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view.window endSheet:sheetWindow];
    });
}
@end
