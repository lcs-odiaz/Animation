import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    var xd : Double
    var d : Double
    var w : Double
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        xd = 2
        d = 0
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        
        // Draw an ellipse in the middle of the canvas
        
        x += 1
        d = x - 250
        y = x * x
        w = y * 0.009
        
        
        
        
        
        canvas.drawEllipse(centreX: Int(x), centreY: Int(w), width: 10, height: 10)
        
    }
    
}
