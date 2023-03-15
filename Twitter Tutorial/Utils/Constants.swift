//
//  Constants.swift
//  Twitter Tutorial
//
//  Created by Yerkegali Zhamalbekov on 12.03.2023.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")


