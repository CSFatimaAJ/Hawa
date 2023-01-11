////
////  logo.swift
////  LOC
////
////  Created by ARWA ALSALEM on 17/06/1444 AH.
////
//import SwiftUI
//struct LaunchView: View {
//
//    @State var isActive : Bool = false
//    @State private var size = 0.5
//    @State private var opacity = 0.5
//
//    var body: some View {
//
//        if isActive {
//          ContentView()
//        } else {
//            ZStack {
//                Color("backColor")
//                    .ignoresSafeArea()
//
//                Image("logoEN")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 270)
//                    .scaleEffect(size)
//                    .opacity(opacity)
//                    .onAppear {
//                        withAnimation(.easeIn(duration: 1.2)) {
//                            self.size = 1.00
//                            self.opacity = 1.00
//                        }
//                    }
//
////                    .onAppear {
////                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
////                            withAnimation {
////                              //  self.isActive = true
////                            }
////                        }
////                    }
//            }
//        }
//
//    }
//}
//
//struct LaunchView_Previews: PreviewProvider {
//    static var previews: some View {
//        LaunchView()
//    }
//}
//
