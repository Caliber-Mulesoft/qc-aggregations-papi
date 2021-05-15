%dw 2.0
output application/json
var aWeekAgoDate = now() as Date - |P7D| //as String {format: "yyyy-MM-dd"}

---
{
	"LastWeekBatches": (payload filter (value, index) ->  (
		(value.StartDate as Date as String {format: "yyyy-MM-dd"} < aWeekAgoDate == true) 
		and value.EndDate as Date as String {format: "yyyy-MM-dd"} > aWeekAgoDate == true)
		) as Array
}
//payload map {
//	//"dd": todayDate,
//	"star-date < today-date": $.StartDate as Date as String {format: "yyyy-MM-dd"},
//	"start": $.StartDate as Date as String {format: "yyyy-MM-dd"} < todayDate,
//	"end-date > today-date": $.EndDate as Date as String {format: "yyyy-MM-dd"},
//	"end": $.EndDate as Date as String {format: "yyyy-MM-dd"} > todayDate
//}
