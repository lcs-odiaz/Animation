import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dy : Int
    var dx: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        y = random(from: 1, toButNotIncluding: 499)
        x = random(from: 1, toButNotIncluding: 499)
        // Set change value
        dx = random(from: 1, toButNotIncluding: 100)
        dy = random(from: 1, toButNotIncluding: 100)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        // Change position
        
        canvas.drawAxes()
        x += dx
        y += dy
        
        if y > 500{
            dy = random(from: -50, toButNotIncluding: -1)
        }
        
        if y < 0{
            dy = random(from: 1, toButNotIncluding: 50)
        }
        
        if x < 2{
             dx = random(from: 1, toButNotIncluding: 50)
        }
        if x > 500{
            dx = random(from: -50, toButNotIncluding: -1)
        }

        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
