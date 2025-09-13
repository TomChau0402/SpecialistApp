//
//  ContentView.swift
//  SpecialistApp
//

//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.background
                .ignoresSafeArea()// Makes it cover the whole screen
            VStack{
                //Mark: - Title and Search Box
                VStack{
                    
                    Text("Find Your \n Best Specialist")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                    TextField("Search for beaty specialist...", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }// END - Titlt and Search Box
                .padding(.horizontal, 40)
                
                //MArk: - Catergories and Specialist
            
                VStack{
                    VStack{
                        HStack{
                            Text("Categories")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            NavigationLink(destination: EmptyView()) {
                                Text ("See all")
                                    .foregroundStyle(Color.background)
                                    .font(.headline)
                            }
                            
                        }
                        .padding(.horizontal, 20)
                        
                        ScrollView(.horizontal, showsIndicators: true){
                            
                            HStack{
                                Circle()
                                    .frame(width: 80)
                                Circle()
                                    .frame(width: 80)
                                Circle()
                                    .frame(width: 80)
                                Circle()
                                    .frame(width: 80)
                                Circle()
                                    .frame(width: 80)
                            }
                        }
                    }
                    VStack{
                        
                    }
                    
                }
                
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.surface)
                //End Categories
                //MArk Top Specialist
                VStack {
                    
                    Text ("Top Specialists")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ScrollView{
                        
                        VStack (spacing: 30) {
                            
                            Rectangle()
                                .frame(width: .infinity, height: 100)
                            Rectangle()
                                .frame(width: .infinity, height: 100)
                            Rectangle()
                                .frame(width: .infinity, height: 100)
                            Rectangle()
                                .frame(width: .infinity, height: 100)
                            
                                    }
                                }
                            }
                        }
                    
                    
                
            
            
            
            
            }//END - ZShack - background color
        }//End - Body
    }// END - ZStack - background color



#Preview {
    ContentView()
}
