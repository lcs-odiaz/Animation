import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        
        // Change position
        x += 1
        y += 1
        
        
        //upright red
        canvas.fillColor = Color(hue: 360, saturation: 100, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
        //downleft yellow
        canvas.fillColor = Color(hue: 56, saturation: 100, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: 500-x, centreY: 500-y, width: 50, height: 50)
        
        //upleft green
        canvas.fillColor = Color(hue: 123, saturation: 100, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: 500-x, centreY: y, width: 50, height: 50)
        
        //downright blue
        canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: 500-y, width: 50, height: 50)

    }
    
}
