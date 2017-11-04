import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    var dx : Int
    var dy : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        dx = 2
        dy = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        
        // Draw an ellipse in the middle of the canvas
        
        x += 1
        y = -(0.008(x-250)^2)+500
        
        
        
        
        
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
