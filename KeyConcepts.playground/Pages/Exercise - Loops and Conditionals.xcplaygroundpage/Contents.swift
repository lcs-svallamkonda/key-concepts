//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

//create a rectangle to cover the background
canvas.drawShapesWithBorders = false
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//create alternating blue and green rectangles
for counter in 0...7 {
    
    //determine x and y position
    let x = counter * 50
    var y = 0
    
    //set fill color and y position
    let remainder = x % 100
    if remainder == 0 {
        canvas.fillColor = lightBlue
    } else {
        canvas.fillColor = neonGreen; y = 50
    }
    //draw the rectangles
    canvas.drawRectangle(at: Point(x: x, y: y), width: 50, height: 350)
}

//draw "sloan" text
canvas.textColor = Color.white
canvas.drawText(message: "sloan", at: Point(x: 150, y: 400), size: 90, kerning: 3)

//Add information about show
//create constants for the y values of the rows
let row1Y = 570
let row2Y = 552
let row3Y = 535

//create constants for x values of columns
let column1X = 15
let column2X = 150
let column3X = 275

//show time information (left most block)
canvas.drawText(message: "saturday", at: Point(x: column1X, y: row1Y), size: 10)
canvas.drawText(message: "december 19 1992", at: Point(x: column1X, y: row2Y), size: 10)
canvas.drawText(message: "9 pm", at: Point(x: column1X, y: row3Y), size: 10)

//opening acts? (middle block)
canvas.drawText(message: "with", at: Point(x: column2X, y:row1Y), size: 10)
canvas.drawText(message: "thrush hermit", at: Point(x: column2X, y: row2Y), size: 10)
canvas.drawText(message: "the quahogs", at: Point(x: column2X, y: row3Y), size: 10)

//location of show (right block)
canvas.drawText(message: "camaro's cafe", at: Point(x: column3X, y: row1Y), size: 10)
canvas.drawText(message: "halifax", at: Point(x: column3X, y: row2Y), size: 10)
canvas.drawText(message: "nova scotia", at: Point(x: column3X, y: row3Y), size: 10)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

