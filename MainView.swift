//
//  ContentView.swift
//  Splitz
//
//  Created by Julian Schmid on 21.06.22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        //TODO: Implement Header
        VStack(alignment: .trailing) {
            ZStack{
                VStack {
                    Spacer()
                    MainViewList()
                }
                Spacer()
                VStack {
                    MainViewNavigationBar()
                    Spacer()
                }
                VStack {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .font(.system(size: 35))
                    })
                        .buttonStyle(NewItemButtonStyle(bgColor: Color.white, fgColor: Color.background.navigationBar, size: 70))
                        .alignmentGuide(.trailing, computeValue: {d in d[.trailing]})
                        .alignmentGuide(.bottom, computeValue: {d in d[.bottom]})
                }
                
            }
        }
        .background(.thickMaterial)
        .ignoresSafeArea(.all, edges: .vertical)
        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewInterfaceOrientation(.portrait)
    }
}
