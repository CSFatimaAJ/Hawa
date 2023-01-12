//
//  info.swift
//  LOC
//
//  Created by ARWA ALSALEM on 17/06/1444 AH.
//



import SwiftUI

struct info: View {
 
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    let whatarethebenefitsofdeepbreathing: LocalizedStringKey = "What are the benefits of deep breathing?"
    let reducestress: LocalizedStringKey = "Reduce stress"
    let painrelief: LocalizedStringKey = "Pain relief"
    let Reducingtheleveloftoxinsinthebody: LocalizedStringKey = "Reducing the level of toxins in the body"
    let EnhanceImmunity: LocalizedStringKey = " Enhance Immunity"
    let Loweringbloodpressure: LocalizedStringKey = "Lowering blood pressure"
    let Increasingtheenergylevel: LocalizedStringKey = "Increasing the energy level"
    let breathBenefit: LocalizedStringKey = "Breath Benefit";

    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.backward.circle.fill").resizable().foregroundColor(Color.white).frame(width: 40, height: 40) // set image here
                .aspectRatio(contentMode: .fit)
              
            }
        }
    }
    let appearance = UINavigationBarAppearance()
    
    init() {
        
        
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "whitecolor")!]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(named: "whitecolor")!,.font: UIFont(name: "HSN Sara", size: 25)!]
    
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().backgroundColor = UIColor.init(named: "backColor")!
        
    }
    var body: some View {
        NavigationView {

            ZStack {
                Color("backColor")
                    .ignoresSafeArea()
                
                
                VStack(alignment:.leading){

                            Text("What are the benefits of deep breathing?")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.bottom,20)
                            Text("Reduce stress")
                                .foregroundColor(.white)
                            Text("Pain relief")
                                .foregroundColor(.white)
                            Text("Reducing the level of toxins in the body")
                                .foregroundColor(.white)
                            Text(" Enhance Immunity")
                                .foregroundColor(.white)
                            Text("Increasing the energy level")
                                .foregroundColor(.white)
                            Text("Lowering blood pressur")
                                .foregroundColor(.white)
                        }
            }
        }.foregroundColor(.white)                        .font(Font.custom("HSN Sara", size: 20))
        .navigationTitle("Breath Benefit")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
     
    }
    
    struct info_Previews: PreviewProvider {
        static var previews: some View {
            info()
        }
    }
    
    
}
