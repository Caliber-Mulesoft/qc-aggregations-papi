%dw 2.0
output application/json
---
payload map {
	"BatchId": $.BatchId,
	"StartDate": $.StartDate as Date,
	"EndDate": $.EndDate as Date
} 