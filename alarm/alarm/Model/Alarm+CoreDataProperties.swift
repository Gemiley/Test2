//
//  Alarm+CoreDataProperties.swift
//  alarm
//
//  Created by n00993 on 2016/09/14.
//  Copyright © 2016年 CYBIRD Co., Ltd. All rights reserved.
//

import Foundation
import CoreData


extension Alarm {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Alarm> {
        return NSFetchRequest<Alarm>(entityName: "Alarm");
    }

    @NSManaged public var title: String?

}
