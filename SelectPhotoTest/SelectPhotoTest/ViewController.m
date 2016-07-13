//
//  ViewController.m
//  SelectPhotoTest
//
//  Created by zhangqi on 1/3/2016.
//  Copyright © 2016 zhangqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    UIImagePickerController* picker_library_;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    picker_library_ = [[UIImagePickerController alloc] init];
    picker_library_.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker_library_.allowsEditing = YES;
    picker_library_.allowsImageEditing=YES;
    picker_library_.delegate = self;
    [self presentModalViewController: picker_library_
                            animated: YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0)
{

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{

}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
}

@end
