//
//  AppDelegate.swift
//  firebase usage
//
//  Created by zhongming on 2020/6/28.
//  Copyright © 2020 zhongming. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var provider = OAuthProvider(providerID: "github.com")
    
//    provider.getCredentialWith(nil) { credential, error in
//      if error != nil {
//        // Handle error.
//      }
//      if credential != nil {
//        Auth().signIn(with: credential) { authResult, error in
//          if error != nil {
//            // Handle error.
//          }
//          // User is signed in.
//          // IdP data available in authResult.additionalUserInfo.profile.
//          // GitHub OAuth access token can also be retrieved by:
//          // authResult.credential.accessToken
//          // GitHub OAuth ID token can be retrieved by calling:
//          // authResult.credential.idToken
//        }
//      }
//    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

