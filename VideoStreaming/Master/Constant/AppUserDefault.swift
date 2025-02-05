//
//  AppUserDefault.swift
//  SetupApp
//
//  Created by MultiQoS on 05/04/2021.
//  Copyright © 2021. All rights reserved.
//

import Foundation


let AppUserDefaults = UserDefaults.standard

/**
 ```
Example :
Defaults[.version] = "addasdsaad adssadsad"
print(Defaults[.version] ?? "")
```
*/

enum UserDefaultsKeys : String{
    case version = "version"
    case downloadFinish = "downloadFinish"
    case resumeData = "resumeData"
    case isInstall = "isInstall"
}

extension UserDefaults {
    
    subscript<T>(key: UserDefaultsKeys) -> T? {
        get {
            return value(forKey: key.rawValue) as? T
        }
        set {
            set(newValue, forKey: key.rawValue)
            synchronize()
        }
    }
}
