//
//  AppDelegate.swift
//  BitTick
//
//  Created by Radek Pachla on 05/01/2021.
//  Copyright © 2021 Radek Pachla. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.variableLength)

    let liskTicker = Decoder()
    
//    func fetchCoins( ) {
//
//
//        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {(data, completion, error) in
//
//            if let error = error {
//                print("Error with fetching data from BitBay API: \(error)")
//                return
//            }
//
//            guard let httpResponse = response as? HTTPURLResponse,
//                (200...299).contains(httpResponse.statusCode) else {
//                print("Error with the response, unexpected status code: \(response)")
//                return
//            }
//
//           if let data = data,
//            let liskTicker = try? JSONDecoder().decode(<#T##type: Decodable.Protocol##Decodable.Protocol#>, from: <#T##Data#>)
//
//        })
//    }
    
    func constructMenu() {
      let menu = NSMenu()

        menu.addItem(NSMenuItem(title: "Settings", action: #selector(NSApplication.terminate(_:)) , keyEquivalent: ","))
        menu.addItem(NSMenuItem(title: "Select Coins...", action: #selector(NSApplication.terminate(_:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "About...", action: #selector(NSApplication.terminate(_:)) , keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

      statusItem.menu = menu
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if let button = statusItem.button{
            //button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
            button.title = "BitTicker"
        }
        constructMenu()
        liskTicker.getData()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

