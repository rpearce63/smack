//
//  Constants.swift
//  smack
//
//  Created by Rick on 3/28/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import Foundation

//custom closure for web request
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://mac-chat-crzs.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = ["Content-Type": "application/json; charset=utf-8"]
