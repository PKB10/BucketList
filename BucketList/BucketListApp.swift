//
//  BucketListApp.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 06/02/2022.
//

import SwiftUI

@main
struct BucketListApp: App {
    
    @StateObject private var listData = ListData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(listData)
        }
    }
}
