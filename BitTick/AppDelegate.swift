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
    let popover = NSPopover()

    @objc func printQuote(_ sender: Any?) {
      let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
      let quoteAuthor = "Mark Twain"
      
      print("\(quoteText) — \(quoteAuthor)")
    }
    
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
    
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

