//
//  User.swift
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

class User: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _email: String?
    var _firstName: String?
    var _lastName: String?
    var _password: String?
    var _phoneNumber: String?
    
    class func dynamoDBTableName() -> String {

        return "spendonyoursavings-mobilehub-2000920463-User"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_email" : "email",
               "_firstName" : "firstName",
               "_lastName" : "lastName",
               "_password" : "password",
               "_phoneNumber" : "phoneNumber",
        ]
    }
}
