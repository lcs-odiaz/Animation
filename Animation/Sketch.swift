import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    //change in position
    var offset : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
        // set dx (change in x) value
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        //clean up draw whit rectangle over whole canvas
        
        
       canvas.drawShapesWithBorders = false
        
        // Change position
        offset += 1
        
        //black circle going right (+)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: offset, centreY: 83, width: 50, height: 50)
        
        //blue circle going left (-)
        
        canvas.fillColor = Color(hue: 230, saturation: 63, brightness: 60, alpha: 100)
        canvas.drawEllipse(centreX: 500 - offset, centreY: 166, width: 50, height: 50)
        
        
        //green circle going right (+)
        
        canvas.fillColor = Color(hue: 131, saturation: 63, brightness: 60, alpha: 100)
        canvas.drawEllipse(centreX: offset, centreY: 249, width: 50, height: 50)
        
        //orange circle going left (-)
        
        canvas.fillColor = Color(hue: 38, saturation: 100, brightness: 54, alpha: 100)
        canvas.drawEllipse(centreX: 500 - offset, centreY: 332, width: 50, height: 50)
        
        //purple circle going right (+)
        canvas.fillColor = Color(hue: 266 ,saturation: 63, brightness: 60, alpha: 97)
        canvas.drawEllipse(centreX: offset, centreY: 415, width: 50, height: 50)
        
        
        
    }
    
}
