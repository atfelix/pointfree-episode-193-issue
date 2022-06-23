import Foundation

actor CounterActor {
	var count = 0
	var maximum = 0
}

func useInit() {
	let counterActor2 = CounterActor()
	
	Task {
		await print(counterActor2.count)
		await print(counterActor2.maximum)
	}
	Thread.sleep(forTimeInterval: 0.1)
}

useInit()

//let counterActor3 = CounterActor()
//
//Task.init {
//	await print("Task.init", "counterActor2.count  ", counterActor3.count)
//	await print("Task.init", "counterActor2.maximum", counterActor3.maximum)
//}
//
//Thread.sleep(forTimeInterval: 60)
