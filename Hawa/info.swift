//
//  info.swift
//  LOC
//
//  Created by ARWA ALSALEM on 17/06/1444 AH.
//



import SwiftUI

struct info: View {
    let whatarethebenefitsofdeepbreathing: LocalizedStringKey = "What are the benefits of deep breathing?"
    let reducestress: LocalizedStringKey = "Reduce stress"
    let painrelief: LocalizedStringKey = "Pain relief"
    let Reducingtheleveloftoxinsinthebody: LocalizedStringKey = "Reducing the level of toxins in the body"
    let Improveimmunity: LocalizedStringKey = " Improve immunity"
    let Loweringbloodpressure: LocalizedStringKey = "Lowering blood pressure"
    let Increasingtheenergylevel: LocalizedStringKey = "Increasing the energy level"
  
    var body: some View {
        ZStack {
            Color("backColor")
                .ignoresSafeArea()
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom,500)
               
            VStack(alignment:.leading){
                Text("ما هي فوائد التنفس العميق؟")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
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
            .padding(.bottom)
        }
     
    }
    
    struct info_Previews: PreviewProvider {
        static var previews: some View {
            info()
        }
    }
    
    
}
