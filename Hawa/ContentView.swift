//
//  ContentView.swift
//  Hawa
//
//  Created by Fatima Aljaber on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stopWatch = breathTimer()
    
    @State private var rBreath = false
    @State private var lBreath = false
    @State private var mrBreath = false
    @State private var mlBreath = false
    @State private var rBreath2 = false
    @State private var lBreath2 = false
    @State private var mrBreath2 = false
    @State private var mlBreath2 = false
    @State private var showShadow = false
    @State private var showRightStroke = false
    @State private var showLeftStroke = false
    //@State var currentIndex : Int = 0
    // @State var firstString : String = ""
    @State var buttonState : LocalizedStringKey = "Start"
    @State var timer: Timer? = nil
    //    @State var isBlurred = false
    @State var count : Int = 0
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var array = ["امسك","زفير","امسك","شهيق"]
    let screenFrame = Color(#colorLiteral(red: 0.2156862745, green: 0.2039215686, blue: 0.3098039216, alpha: 1))
    
    
    var body: some View {
        let minutes = String(format: "%01d", stopWatch.counter / 60)
        let seconds = String(format: "%02d", stopWatch.counter % 60)
        var time = minutes + " : " + seconds
        NavigationView {
            ZStack{
                screenFrame
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                VStack {
                    
                    Text(self.stopWatch.firstString).font(Font.custom("HSN Sara", size: 50))
                        .foregroundColor(Color("whitecolor"))
                        .offset(y: -300)
                    //.opacity(isBlurred ? 0 : 1)
                    // .scaleEffect(isBlurred ? 0 : 1, anchor: .top)
                        .animation(Animation.easeInOut(duration: 1))
                        .accessibilityLabel(self.stopWatch.firstString)
                }
                
                .navigationBarItems(
                    
                    trailing:
                        NavigationLink(destination: info()) {
                            Image("info")
                                .resizable().frame(width: 45,height: 45)
                            
                        })
                
                
                ZStack{
                    Image("logo").resizable().frame(width: 320,height: 300)
                    HStack(alignment:.center, spacing: 90){
                        ZStack{
                            Image("flower")
                                .rotationEffect(.degrees(0), anchor: .bottom)
                            
                            Image("flower")  // Middle left
                            Image("flower")  // Left
                                .rotationEffect(.degrees( mlBreath ? -5 : -25), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        mlBreath = state
                                    }
                                    
                                }
                            Image("flower")  // Middle right
                            Image("flower")  // Right
                                .rotationEffect(.degrees( mrBreath ? 5 : 25), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever(): nil)
                                    {
                                        mrBreath = state
                                    }
                                    
                                }
                            
                            Image("flower") // Left
                                .rotationEffect(.degrees( lBreath ? -10 : -50), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        lBreath = state
                                    }
                                    
                                }
                            
                            
                            Image("flower") // Right
                                .rotationEffect(.degrees( rBreath ? 10 : 50), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        rBreath = state
                                    }
                                    
                                }
                            
                        }//.position(x:215,y:340)
                     //   .position(x: screenWidth/1.999,y: screenHeight/2.89)
                        .shadow(radius: showShadow ? 20 : 0)
                        .hueRotation(Angle(degrees: showShadow ? 0 : 335))
                        .accessibilityHidden(true)
                        .animation(Animation.easeInOut(duration: 2).delay(0.5),value: self.showShadow)
                        .onReceive(self.stopWatch.$state) { state in
                            withAnimation(state ? .easeInOut(duration: 2).delay(0.5): nil)
                            {
                                showShadow = state
                            }
                        }
                        .rotationEffect(.degrees(-90))
                        
                     
                        ZStack{
                            Image("flower")
                                .rotationEffect(.degrees(0), anchor: .bottom)
                            
                            Image("flower")  // Middle left
                            Image("flower")  // Left
                                .rotationEffect(.degrees( mlBreath2 ? -5 : -25), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        mlBreath2 = state
                                    }
                                    
                                    
                                }
                            
                            Image("flower")  // Middle right
                            Image("flower")  // Right
                                .rotationEffect(.degrees( mrBreath2 ? 5 : 25), anchor: .bottom)
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        mrBreath2 = state
                                    }
                                }
                            Image("flower") // Left
                                .rotationEffect(.degrees( lBreath2 ? -10 : -50), anchor: .bottom)
                            //     .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil)
                                    {
                                        lBreath2 = state
                                    }
                                    
                                }
                            
                            
                            Image("flower") // Right
                                .rotationEffect(.degrees( rBreath2 ? 10 : 50), anchor: .bottom)
                            //  .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
                                .onReceive(self.stopWatch.$state) { state in
                                    withAnimation(state ? .easeInOut(duration: 2).delay(2).repeatForever() : nil){
                                        rBreath2 = state
                                    }
                                }
                            
                            
                        }//.position(x:215,y:340)
                        
                    //    .position(x: screenWidth/1.999,y: screenHeight/2.89)
                        .accessibilityHidden(true)
                        .shadow(radius: showShadow ? 20 : 0)
                        .hueRotation(Angle(degrees: showShadow ? 0 : 335))
                        .animation(Animation.easeInOut(duration: 2).delay(0.5),value: self.showShadow)
                        .onReceive(self.stopWatch.$state) { state in
                            withAnimation(state ? .easeInOut(duration: 2).delay(0.5): nil)
                            {
                                showShadow = state
                            }
                            
                            
                        }
                        .rotationEffect(.degrees(90))
                        
                    }.padding()
                    }.offset(y: -50)
                    
                
                VStack{
                    
                    HStack(alignment: .center){
                        Text("-")
                            .font(Font.custom("HSN Sara", size: 70))
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color("backColor"))
                            .padding()
                        
                            .background(
                                Circle()
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .foregroundColor(Color("whitecolor"))
                                
                            ).onTapGesture {
                                if self.count != 0 && self.count-5 >= 0 {
                                    self.count = count - 5
                                    self.stopWatch.counter = count
                                }
                            }
                        Text("\(time)")
                            .font(.system(size: 80)).minimumScaleFactor(0.6)
                            .foregroundColor(Color("whitecolor"))
                            .padding()
                            .frame(width: 170, height: 60, alignment: .center)
                            .lineLimit(1)
                              .layoutPriority(1)
                        
                        Text("+")
                            .font(Font.custom("HSN Sara", size: 70))
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color("backColor"))
                            .padding()
                        
                            .background(
                                Circle()
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .foregroundColor(Color("whitecolor"))
                                
                            ).onTapGesture {
                                self.count = count + 20
                                self.stopWatch.counter = count
                                
                            }
                    }
                    .padding(.horizontal)
                    .offset(y: 300)
                    
                    Button(buttonState) {
                                if buttonState == "\(NSLocalizedString("STOP", comment: ""))"{
                                    time = "\(self.stopWatch.counter)"
                                    //   self.stopWatch.counter
                                    self.stopWatch.stop()
                                    self.buttonState = "\(NSLocalizedString("START", comment: ""))"
                                }else{
                                    self.stopWatch.start()
                                    self.buttonState = "\(NSLocalizedString("STOP", comment: ""))"
                                }
                                
                            }.accessibilityLabel(buttonState)
                        .padding()
                                .font(Font.custom("HSN Sara", size: 24)).foregroundColor(Color("redColor")).background(
                                    Rectangle()
                                        .frame(width: 214, height: 50, alignment: .center)
                                        .foregroundColor(Color("whitecolor"))
                                        .cornerRadius(8)
                                    
                                ).offset(y: 320).padding(.bottom, 100.0)
                                .onReceive(self.stopWatch.$counter) { count in
                                    if count == 0 {
                                        self.buttonState = "\(NSLocalizedString("START", comment: ""))"
                                    }
                                }
                            
                        }.padding()
            }
                    
                }
                
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
