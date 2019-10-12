#!/usr/bin/swift
 
var arrValue : [Value] = Value.allValues
var arrColor : [Color] = Color.allColors

for val in arrValue {
	print("The val is \(val) = \(val.rawValue)")
}

for col in arrColor {
	print("The color is \(col) = \(col.rawValue)")
}
