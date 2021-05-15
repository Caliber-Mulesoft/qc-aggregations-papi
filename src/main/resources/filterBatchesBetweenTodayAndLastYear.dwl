%dw 2.0
output application/json
var todayDate = now() as Date //as String {format: "yyyy-MM-dd"}
var aYearAgo = now() as Date - |P1Y|
---
payload map {
	"id": $.BatchId,
	"startDate": $.StartDate,
	"endDate": $.EndDate,
} filter ($.startDate >= aYearAgo and $.startDate < todayDate) and 
		($.endDate <= todayDate and $.endDate > aYearAgo)

//payload map {
//	"id": $.BatchId,
//	"startDate": $.StartDate,
//	"endDate": $.EndDate,
//	"TodayDate": todayDate as String {format: "yyyy-MM-dd"},
//	"AYearAgoDate": aYearAgo as String {format: "yyyy-MM-dd"}
//} filter ($.startDate < todayDate and $.startDate > aYearAgo) or 
//		($.endDate > aYearAgo and $.endDate < todayDate)

//{
//	"CurrentBatches": (payload filter (value, index) ->  (
//		(value.StartDate.year == vars.period) 
//		or value.EndDate.year == vars.period)
//		) as Array
//}
