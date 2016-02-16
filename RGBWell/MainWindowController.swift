//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Marco Herrera on 2/16/16.
//  Copyright (c) 2016 Marco Herrera. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController
{
    var r = 0.0
    var g = 0.0
    var b = 0.0
    var a = 1.0
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String?
    {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(sender: NSSlider)
    {
        println("R slider's value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    @IBAction func adjustRGreen(sender: NSSlider)
    {
        println("G slider's value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
        
    }
    @IBAction func adjustBlue(sender: NSSlider)
    {
        println("B slider's value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor()
    {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
    }
    
    
}
