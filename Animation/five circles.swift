//
//  five circles.swift
//  Animation
//
//  Created by Diaz, Octavio on 2017-10-26.
//  Copyright © 2017 Royal St. George's College. All rights reserved.
//

import Foundation
class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    //change in position
    var dx : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        // set dx (change in x) value
        dx = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        //clean up draw whit rectangle over whole canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 0, centreY: 0, width: 5000, height: 5000)
        //why is this rectangle too small???
        //make circle bounce on right edge
        
        // Change position
        x += dx
        if x >= 500 {//start of block
            dx = -2
        }//end of block
        if x <= 0 {//start of block
            dx = 2
        }
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}
