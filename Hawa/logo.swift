////
////  logo.swift
////  Hawa
////
////  Created by Fatima Aljaber on 11/01/2023.
////
//
//import SwiftUI
//
//class logo: ObservableObject {
//    @State private var size = 0.5
//    @State private var opacity = 0.5
//    @State private var rBreath = false
//    @State private var lBreath = false
//    @State private var mrBreath = false
//    @State private var mlBreath = false
//    @State private var rBreath2 = false
//    @State private var lBreath2 = false
//    @State private var mrBreath2 = false
//    @State private var mlBreath2 = false
//    @State private var showShadow = false
//    @State private var showRightStroke = false
//    @State private var showLeftStroke = false
//    let screenWidth = UIScreen.main.bounds.width
//    let screenHeight = UIScreen.main.bounds.height
//
//    var body: some View {
//        ZStack{
//
//                Color("backColor")
//                    .ignoresSafeArea()
//
//
//                              ZStack{
//
//                                  Image("logo").resizable().frame(width: 320,height: 300).onAppear {
//                                      DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                                      //    self.isActive = true
//                                      }
//                                  }
//                                  ZStack{
//                                      Image("flower")
//                                          .rotationEffect(.degrees(0), anchor: .bottom)
//
//                                      Image("flower")  // Middle left
//                                      Image("flower")  // Left
//                                          .rotationEffect(.degrees( mlBreath ? -5 : -25), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//                                      Image("flower")  // Middle right
//                                      Image("flower")  // Right
//                                          .rotationEffect(.degrees( mrBreath ? 5 : 25), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//                                      Image("flower") // Left
//                                          .rotationEffect(.degrees( lBreath ? -10 : -50), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//
//                                      Image("flower") // Right
//                                          .rotationEffect(.degrees( rBreath ? 10 : 50), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//                                  }//.position(x:215,y:340)
//                                  .position(x: screenWidth/1.999,y: screenHeight/2.75)
//                                  .shadow(radius: showShadow ? 20 : 0)
//                                  .hueRotation(Angle(degrees: showShadow ? 0 : 335))
//                                  .accessibilityHidden(true)
//                                  .animation(Animation.easeInOut(duration: 1).delay(0.5),value: self.showShadow)
//                                  .onAppear {
//                                      showShadow.toggle()
//                                  }
//                                  .rotationEffect(.degrees(90))
//
//
//
//                                  ZStack{
//                                      Image("flower")
//                                          .rotationEffect(.degrees(0), anchor: .bottom)
//
//                                      Image("flower")  // Middle left
//                                      Image("flower")  // Left
//                                          .rotationEffect(.degrees( mlBreath2 ? -5 : -25), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//                                      Image("flower")  // Middle right
//                                      Image("flower")  // Right
//                                          .rotationEffect(.degrees( mrBreath2 ? 5 : 25), anchor: .bottom)
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//                                      Image("flower") // Left
//                                          .rotationEffect(.degrees( lBreath2 ? -10 : -50), anchor: .bottom)
//                                      //     .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//
//                                      Image("flower") // Right
//                                          .rotationEffect(.degrees( rBreath2 ? 10 : 50), anchor: .bottom)
//                                      //  .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
//                                          .onAppear {
//                                              mrBreath.toggle()
//                                          }
//
//
//                                  }//.position(x:215,y:340)
//                                  .position(x: screenWidth/1.999,y: screenHeight/2.75)
//                                  .accessibilityHidden(true)
//                                  .shadow(radius: showShadow ? 20 : 0)
//                                  .hueRotation(Angle(degrees: showShadow ? 0 : 335))
//                                  .animation(Animation.easeInOut(duration: 1).delay(0.5),value: self.showShadow)
//                                  .onAppear {
//                                      showShadow.toggle()
//                                  }
//
//                                  .rotationEffect(.degrees(-90))
//                                  Text("Hawa").font(Font.system(size: 80)).foregroundColor(.white)
//
//                              }.offset(y: -50)
//
//            }
//
//    }
//}
//
//struct logo_Previews: PreviewProvider {
//    static var previews: some View {
//        logo()
//    }
//}
