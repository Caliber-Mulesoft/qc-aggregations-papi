%dw 2.0
output application/json
---
{
	"PoorDifference": (vars.CurrentWeekPercentages.PoorPer - vars.LastWeekPercentages.PoorPer) as Number,
	"AverageDifference": (vars.CurrentWeekPercentages.AveragePer - vars.LastWeekPercentages.AveragePer) as Number,
	"GoodDifference": (vars.CurrentWeekPercentages.GoodPer - vars.LastWeekPercentages.GoodPer) as Number,
	"SuperstarDifference": (vars.CurrentWeekPercentages.SuperstarPer - vars.LastWeekPercentages.SuperstarPer) as Number
}