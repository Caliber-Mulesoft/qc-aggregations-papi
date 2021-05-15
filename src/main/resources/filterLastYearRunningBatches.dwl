%dw 2.0
output application/json
var lastYearDate = (now() - |P1Y|) as Date  as String {format: "yyyy-MM-dd"}

---
{
	"LastYearCurrentBatches": (payload filter (value, index) ->  (
		(value.StartDate  as String {format: "yyyy-MM-dd"} < lastYearDate == true) 
		and value.EndDate  as String {format: "yyyy-MM-dd"} > lastYearDate == true)
		) as Array
}


//payload map {
//	//"dd": todayDate,
//	"star-date < today-date": $.StartDate as Date as String {format: "yyyy-MM-dd"},
//	"start": $.StartDate as Date as String {format: "yyyy-MM-dd"} < todayDate,
//	"end-date > today-date": $.EndDate as Date as String {format: "yyyy-MM-dd"},
//	"end": $.EndDate as Date as String {format: "yyyy-MM-dd"} > todayDate
//}
