%dw 2.0
output application/json
---

{
	"poorPer": (payload.TechnicalStatus filter (value, index) ->  (upper(value) == "POOR")) as Array,
	"averagePer": (payload.TechnicalStatus filter (value, index) -> (upper(value) == "AVERAGE")) as Array,
	"goodPer": (payload.TechnicalStatus filter (value, index) -> (upper(value) == "GOOD")) as Array,
	"superstarPer": (payload.TechnicalStatus filter (value, index) -> (upper(value) == "SUPERSTAR")) as Array
	
}

