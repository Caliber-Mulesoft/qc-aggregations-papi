%dw 2.0
output application/json
---
{
	"PoorDifference": (vars.CurrentWeekPercentages.PoorPer - vars.AllTimePercentages.PoorPer) as Number,
	"AverageDifference": (vars.CurrentWeekPercentages.AveragePer - vars.AllTimePercentages.AveragePer) as Number,
	"GoodDifference": (vars.CurrentWeekPercentages.GoodPer - vars.AllTimePercentages.GoodPer) as Number,
	"SuperstarDifference": (vars.CurrentWeekPercentages.SuperstarPer - vars.AllTimePercentages.SuperstarPer) as Number
}