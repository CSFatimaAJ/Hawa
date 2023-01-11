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
    let Improveimmunity: LocalizedStringKey = " Improve immunity"
    let Loweringbloodpressure: LocalizedStringKey = "Lowering blood pressure"
    let Increasingtheenergylevel: LocalizedStringKey = "Increasing the energy level"
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
            Image("back") // set image here
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
                
                
                VStack(alignment:.trailing){
                    Text("ما هي فوائد التنفس العميق؟")
                        .font(Font.custom("HSN Sara", size: 30))
                        .foregroundColor(.white)
                    
                    
                    Text("التقليل من التوتر ")
                        .foregroundColor(.white)
                    Text(" التخفيف من الألم")
                        .foregroundColor(.white)
                    Text(" التقليل من مستوى السموم في الجسم")
                        .foregroundColor(.white)
                    Text(" تحسين المناعة ")
                        .foregroundColor(.white)
                    Text(" زيادة مستوى الطاقة")
                        .foregroundColor(.white)
                    Text("خفض ضغط الدم")
                        .foregroundColor(.white)
                    Text(" فوائد التنفس العميق الأخرى")
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
