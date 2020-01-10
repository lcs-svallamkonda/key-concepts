//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

//// No border, has a fill
//canvas.drawShapesWithBorders = false
//canvas.drawShapesWithFill = true
//canvas.drawEllipse(at: Point(x: 100, y: 100), width: 50, height: 75)
//
//// Has a border, no fill
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//canvas.drawEllipse(at: Point(x: 200, y: 100), width: 50, height: 75)

//draw light grey rectangle that covers the entire page
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
//change color of rectangle
canvas.fillColor = grey
//actually draw rectangle
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//draw red circle with thick border and no fill
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 100
//change color of circle
canvas.borderColor = lightRed
//actually draw circle
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 275, height: 275)

//draw blue circe to overlap blue circle
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 100
//change color fo circle
canvas.borderColor = lightBlue
//actually draw circle
canvas.drawEllipse(at: Point(x: 350, y: 200), width: 275, height: 275)

//add band name text
//add "the jesus" text
canvas.drawText(message: "the jesus", at: Point(x: 15, y: 440), size: 42)
//add "and mary chain" text
canvas.drawText(message: "and mary chain", at: Point(x: 15, y: 395), size: 42)

//Add information about show
//create constants for the y values of the rows
let row1Y = 570
let row2Y = 552
let row3Y = 535

//create constants for x values of columns
let column1X = 15
let column2X = 130
let column3X = 275

//show time information (left most block)
canvas.drawText(message: "friday", at: Point(x: column1X, y: row1Y), size: 10)
canvas.drawText(message: "december 4 1987", at: Point(x: column1X, y: row2Y), size: 10)
canvas.drawText(message: "8 pm show", at: Point(x: column1X, y: row3Y), size: 10)

//opening acts? (middle block)
canvas.drawText(message: "with", at: Point(x: column2X, y:row1Y), size: 10)
canvas.drawText(message: "social distortion", at: Point(x: column2X, y: row2Y), size: 10)
canvas.drawText(message: "and opal", at: Point(x: column2X, y: row3Y), size: 10)

//location of show (right block)
canvas.drawText(message: "hollywood paladium", at: Point(x: column3X, y: row1Y), size: 10)
canvas.drawText(message: "6215 sunset blvd.", at: Point(x: column3X, y: row2Y), size: 10)
canvas.drawText(message: "los angeles, california", at: Point(x: column3X, y: row3Y), size: 10)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

