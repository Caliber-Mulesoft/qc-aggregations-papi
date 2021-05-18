%dw 2.0
output application/json
//fun prepareList(list:Array, maxSize: Number) = if(sizeOf(list) >= maxSize )
//list
//else
//prepareList(list ++ [(sizeOf(list) + 1) as Number],maxSize)
---
1 to payload.TimesOfLoops map (value, index) ->{
	"id": payload.id,
	"currentWeek": payload.currentWeek + index
}

//prepareList([],payload.TimesOfLoops)
