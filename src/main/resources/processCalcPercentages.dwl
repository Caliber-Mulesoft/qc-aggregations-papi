%dw 2.0
output application/json
 import * from dw::core::Arrays
var total =  (sizeOf(payload.averagePer)
		+ sizeOf(payload.goodPer) + sizeOf(payload.poorPer)
		+ sizeOf(payload.superstarPer))
---
{
	"PoorPer": ((sizeOf(payload.poorPer) / total) * 100) as String {format: "##.00"},
	"AveragePer": ((sizeOf(payload.averagePer)  / total) * 100) as String {format: "##.00"},
	"GoodPer": ((sizeOf(payload.goodPer)  / total) * 100) as String {format: "##.00"},
	"SuperstarPer": ((sizeOf(payload.superstarPer)  / total) * 100)  as String {format: "##.00"} 
	
}