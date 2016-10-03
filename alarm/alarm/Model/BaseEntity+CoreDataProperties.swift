//
//  BaseEntity+CoreDataProperties.swift
//  alarm
//
//  Created by n00993 on 2016/09/14.
//  Copyright © 2016年 CYBIRD Co., Ltd. All rights reserved.
//

import Foundation
import CoreData


extension BaseEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BaseEntity> {
        return NSFetchRequest<BaseEntity>(entityName: "BaseEntity");
    }

    @NSManaged public var identifier: String?
    @NSManaged public var createDate: NSDate?
    @NSManaged public var updateDate: NSDate?

}
