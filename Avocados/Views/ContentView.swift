//
//  ContentView.swift
//  Avocados
//
//  Created by Andrea Yong on 11/9/23.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocadoes")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about Avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
