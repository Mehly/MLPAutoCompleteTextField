//
//  BaseAutoComplete.m
//  app
//
//  Created by Jakob Haider on 15/06/15.
//  Copyright (c) 2015 bluesource - mobile solutions. All rights reserved.
//

#import "MLPAutoCompleteRoot.h"

@implementation MLPAutoCompleteRoot

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UITableView* tableView = self.txtAutoComplete.autoCompleteTableView;
    
    if(tableView != nil && tableView.superview != nil && !tableView.hidden)
    {
        bool contains = CGRectContainsPoint(tableView.frame, point);
        
        if(contains) {
            return tableView;
        }
    }
    
    return [super hitTest:point withEvent:event];
}

@end
