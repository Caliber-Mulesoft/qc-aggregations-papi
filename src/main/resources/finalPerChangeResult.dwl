%dw 2.0
output application/json
//fun getIncreaseOrDecrease(number: Number) = do {
//	var word =
//		if (number == 0)
//			"NoChange"
//		else if (number < 0)
//			"Decrease"
//		else
//			"Increase"
//	---
//	word
//}
---
{
	"PoorPercentageChange":payload.PoorDifference as String,
	"AveragePercentageChange": payload.AverageDifference as String,
	"GoodPercentageChange": payload.GoodDifference as String,
	"SuperstarPercentageChange": payload.SuperstarDifference as String
}


//{
//	"PoorPercentageChange": getIncreaseOrDecrease(payload.PoorDifference) ++ " " ++ abs(payload.PoorDifference) as String,
//	"AveragePercentageChange": getIncreaseOrDecrease(payload.AverageDifference) ++ " " ++ abs(payload.AverageDifference) as String,
//	"GoodPercentageChange": getIncreaseOrDecrease(payload.GoodDifference) ++ " " ++ abs(payload.GoodDifference) as String,
//	"SuperstarPercentageChange": getIncreaseOrDecrease(payload.SuperstarDifference) ++ " " ++ abs(payload.SuperstarDifference)as String
//}