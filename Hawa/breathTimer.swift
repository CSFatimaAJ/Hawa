//
//  breathTimer.swift
//  Hawa
//
//  Created by Fatima Aljaber on 09/01/2023.
//

import Foundation

class breathTimer: ObservableObject {
    
    @Published var counter: Int = 0
    @Published var timer = Timer()
    @Published var state = false

    var newTimer = Timer()
    var newTimer2 = Timer()
    var isBlurred = false
    var currentIndex : Int = 0
    @Published var firstString : String = "Hawa"
    
    var array = ["BreathIn","Hold","BreathOut","Hold"]

    func start() {
        self.firstString = self.array[0]

        self.newTimer = Timer.scheduledTimer(withTimeInterval: 1.0,
                                             repeats: true) { v in
            if self.counter != 0 {
                self.counter -= 1
                self.timer = self.newTimer
                self.state = true
            }
            else{
                if self.counter == 0{
                    self.newTimer.invalidate()
                    self.state = false
                }
            }

        }

        self.newTimer2 = Timer.scheduledTimer(withTimeInterval: 4.0,
                                          repeats: true) { v in
            if self.counter != 0 {
                let rndTime = [0.5, 0.3, 0.7, 1.0].randomElement()! // I wanted a random time up to 1 second.
                self.currentIndex += 1

                if self.currentIndex == self.array.count { self.currentIndex = 0 }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isBlurred.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        self.isBlurred.toggle()
                        self.firstString = self.array[self.currentIndex]
                        
                    }
                }
            }
            else{
                if self.counter == 0{
                    self.newTimer.invalidate()
                    self.state = false
                }
            }
        }
    }
    func stop() {
        self.newTimer.invalidate()
        self.state = false
    }

 
}
