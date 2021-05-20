%dw 2.0
output application/json
var numberOfDaysAfterMonday = now().dayOfWeek - 1
var currentMondayDate = now() as Date - ("P$(numberOfDaysAfterMonday)D")
---
payload.CurrentBatches map {
	"id": $.BatchId,
	"currentWeek": ceil(daysBetween( $.StartDate, currentMondayDate) / 7) as String {format: "###"}
}


//{
//	"currentWeek": (todayDate as String {format: "yyyy-MM-dd"} 
//	+ |P1M| - |P1D|) as String {format: "yyyy-MM-dd"}
//}