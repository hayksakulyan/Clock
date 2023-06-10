//
//  ContentView.swift
//  Clock
//
//  Created by Hayk Sakulyan on 10.06.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDark = false
    
    var body: some View {
        
        HStack {
            Text("Clock")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Appearance(isDark: $isDark)
                .preferredColorScheme(isDark ? .dark : .light)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Appearance: View {
    
    @Binding var isDark: Bool
    
    var body: some View {
        
        Button {
            isDark.toggle()
        } label: {
            Image(systemName: isDark ? "sun.min.fill" : "moon.fill")
                .font(.system(size: 22))
                .foregroundColor(isDark ? .black : .white)
                .padding()
                .background(Color.primary)
                .clipShape(Circle())
        }


        
    }
}
