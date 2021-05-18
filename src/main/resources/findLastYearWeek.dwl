%dw 2.0
output application/json
var lastYear = now() - |P1Y|
var numberOfDaysAfterMonday = lastYear.dayOfWeek - 1
var currentMondayDate = now() - |P1Y| - ("P$(numberOfDaysAfterMonday)D")

---
payload.LastYearCurrentBatches map {
	"id": $.BatchId,
	"TimesOfLoops": (ceil(daysBetween(currentMondayDate, $.EndDate)/7)) as Number,
	"currentWeek": ceil(daysBetween( $.StartDate, currentMondayDate) / 7) as String {format: "###"}
}

//{
//	last: lastYear,
//	number: numberOfDaysAfterMonday,
//	curr: currentMondayDate
//}
