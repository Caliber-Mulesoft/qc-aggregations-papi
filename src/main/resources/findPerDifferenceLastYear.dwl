%dw 2.0
output application/json
---
{
	"PoorDifference": (vars.CurrentWeekPercentages.PoorPer - vars.LastYearPercentages.PoorPer) as Number,
	"AverageDifference": (vars.CurrentWeekPercentages.AveragePer - vars.LastYearPercentages.AveragePer) as Number,
	"GoodDifference": (vars.CurrentWeekPercentages.GoodPer - vars.LastYearPercentages.GoodPer) as Number,
	"SuperstarDifference": (vars.CurrentWeekPercentages.SuperstarPer - vars.LastYearPercentages.SuperstarPer) as Number
}