//
//  MenuItem.swift
//  MySampleApp
//
//
// Copyright 2019 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.21
//

import Foundation
import UIKit
import AWSDynamoDB

class MenuItem: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _itemId: String?
    var _info: String?
    var _price: NSNumber?
    var _storeId: String?
    
    class func dynamoDBTableName() -> String {

        return "spendonyoursavings-mobilehub-2000920463-MenuItem"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    class func rangeKeyAttribute() -> String {

        return "_itemId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_itemId" : "itemId",
               "_info" : "info",
               "_price" : "price",
               "_storeId" : "storeId",
        ]
    }
}
