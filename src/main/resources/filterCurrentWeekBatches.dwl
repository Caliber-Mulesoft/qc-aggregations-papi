%dw 2.0
output application/json

var todayDate = now() as Date as String {format: "yyyy-MM-dd"}

---
{
	"CurrentBatches": (payload filter (value, index) ->  (
		(value.StartDate as Date as String {format: "yyyy-MM-dd"} <= todayDate == true) 
		and value.EndDate as Date as String {format: "yyyy-MM-dd"} >= todayDate == true)
		) as Array
}
//payload map {
//	//"dd": todayDate,
//	"star-date < today-date": $.StartDate as Date as String {format: "yyyy-MM-dd"},
//	"start": $.StartDate as Date as String {format: "yyyy-MM-dd"} < todayDate,
//	"end-date > today-date": $.EndDate as Date as String {format: "yyyy-MM-dd"},
//	"end": $.EndDate as Date as String {format: "yyyy-MM-dd"} > todayDate
//}