%dw 2.0
output application/json

---
payload map {
	"id": $.BatchId,
	"startDate": $.StartDate,
	"endDate": $.EndDate
} filter $.startDate.year as String == vars.period or $.endDate.year as String == vars.period

//{
//	"CurrentBatches": (payload filter (value, index) ->  (
//		(value.StartDate.year == vars.period) 
//		or value.EndDate.year == vars.period)
//		) as Array
//}
