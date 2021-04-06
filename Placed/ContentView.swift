//
//  ContentView.swift
//  Placed
//
//  Created by Giovanni Luidi Bruno on 06/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedAlternative: String?
    @State var showNextView: Bool = false
    
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    ZStack {
                        Text("\("asdasds")")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .frame(height: geometry.size.height/4)
                    }
                    SpacerRectangle()
                    ForEach(["a","b","c","d"], id: (\.self)) { alternative in
                        Alternative(text: alternative, selectedAlternative: $selectedAlternative)
                    }
                    SpacerRectangle()
                    ZStack {
                        SpacerRectangle()
                        NavigationLink(destination: ContentView(selectedAlternative: nil), isActive: $showNextView) {
                            
                            Button(action: {
                                self.showNextView = true
                            }, label: {
                                Text("Listitem")
                            })
                            
                        }
                        .disabled(selectedAlternative == nil)
                        .font(.headline)
                    }
                }
            }
                .padding()
            .onDisappear {
                print("Dissapear")
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        
    }
}

struct Test: View {
    var body: some View {
        NavigationLink("Answer", destination: Test())
    }
}

struct Alternative: View {
    let text: String
    @Binding var selectedAlternative: String?
    
    var body: some View {
        ZStack {
            Rectangle()
                .border(Color.black, width: 5)
                .foregroundColor(selectedAlternative == text ? .green : .white)
            Text(text)
                .foregroundColor(selectedAlternative == text ? .white : .black)
        }.onTapGesture {
            if selectedAlternative == text {
                selectedAlternative = nil
            } else {
                selectedAlternative = text
            }
        }
    }
    
}

struct SpacerRectangle: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: ViewModel())
//    }
//}

