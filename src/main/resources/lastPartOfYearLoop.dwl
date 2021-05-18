%dw 2.0
output application/json
---
1 to payload.currentWeek as Number map (value, index) ->{
	"id": payload.id,
	"currentWeek": payload.currentWeek - index as String,
}