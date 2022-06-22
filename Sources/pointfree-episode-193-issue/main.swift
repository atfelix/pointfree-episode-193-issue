import Foundation

actor CounterActor {
	var count = 0
	var maximum = 0
	
	func increment(function: StaticString = #function) {
		print(function, Thread.current)
		self.count += 1
		self.computeMaximum()
	}
	
	func decrement(function: StaticString = #function) {
		print(function, Thread.current)
		self.count -= 1
	}
	
	private func computeMaximum() {
		self.maximum = Swift.max(self.maximum, self.count)
	}
}

func useDetached() {
	let counterActor1 = CounterActor()
	
	Thread.sleep(forTimeInterval: 4)
	for _ in 1 ... 10 {
		Task.detached {
			await counterActor1.increment()
		}
		Task.detached {
			await counterActor1.decrement()
		}
	}
	
	Task.detached {
		await print("Task.detached", "counterActor.count  ", counterActor1.count)
		await print("Task.detached", "counterActor.maximum", counterActor1.maximum)
	}
}

func useInit() {
	let counterActor2 = CounterActor()
	
	Thread.sleep(forTimeInterval: 4)
	for _ in 1 ... 10 {
		Task {
			await counterActor2.increment()
		}
		Task {
			await counterActor2.decrement()
		}
	}
	
	Task {
		await print("Task.init", "counterActor2.count  ", counterActor2.count)
		await print("Task.init", "counterActor2.maximum", counterActor2.maximum)
	}
}

//useDetached()
//useInit()

let counterActor3 = CounterActor()

Thread.sleep(forTimeInterval: 4)
for _ in 1 ... 10 {
	Task.init {
		await counterActor3.increment()
	}
	Task.init {
		await counterActor3.decrement()
	}
}

Task.init {
	await print("Task.init", "counterActor2.count  ", counterActor3.count)
	await print("Task.init", "counterActor2.maximum", counterActor3.maximum)
}


Thread.sleep(forTimeInterval: 20)
