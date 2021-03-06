//
//  NSData+Image.m
//  ICome
//
//  Created by zhangrongwu on 2017/4/25.
//  Copyright © 2017年 iCom. All rights reserved.
//

#import "NSData+Image.h"

@implementation NSData (Image)
+(NSData *)imageData:(UIImage *)myimage{
    NSData *data=UIImageJPEGRepresentation(myimage, 1.0);
    if (data.length>100*1024) {
        if (data.length>1024*1024) {
            //1M以及以上
            data=UIImageJPEGRepresentation(myimage, 0.4);
        }else if (data.length>512*1024) {//0.5M-1M
            data=UIImageJPEGRepresentation(myimage, 0.7);
        }else if (data.length>200*1024) {//0.25M-0.5M
            data=UIImageJPEGRepresentation(myimage, 0.9);
        }
    }
    return data;
}


@end
