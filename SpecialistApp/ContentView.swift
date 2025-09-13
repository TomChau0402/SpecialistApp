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
                    
                    TextField("Search for beauty specialist...", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }// END - Titlt and Search Box
                .padding(.horizontal, 40)
                
                //Mark: - Categories and Specialist
            
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
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20) {
                                CategoryButton(imageName: "eyelashes", title: "Eyelashes")
                                CategoryButton(imageName: "scissors", title: "Hair")
                                CategoryButton(imageName: "hand.raised", title: "Nails")
                                CategoryButton(imageName: "paintbrush", title: "Makeup")
                                CategoryButton(imageName: "drop", title: "Skincare")
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    
                    // Top Specialists Section
                    VStack {
                        HStack {
                            Text("Top Specialists")
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
                        .padding(.top, 20)
                        
                        ScrollView{
                            VStack(spacing: 15) {
                                SpecialistCard(name: "Sarah Johnson", specialty: "Eyelash Specialist", rating: 4.9)
                                SpecialistCard(name: "Michelle Brown", specialty: "Hair Stylist", rating: 4.8)
                                SpecialistCard(name: "Emma Wilson", specialty: "Nail Technician", rating: 4.7)
                                SpecialistCard(name: "Jessica Lee", specialty: "Beauty Specialist", rating: 4.9)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.surface)
                
            }//END - VStack
        }//End - ZStack
    }
}

// Category Button View
struct CategoryButton: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 3)
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.background)
            }
            
            Text(title)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.black)
        }
    }
}

// Specialist Card View
struct SpecialistCard: View {
    let name: String
    let specialty: String
    let rating: Double
    
    var body: some View {
        HStack {
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(specialty)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 14))
                    
                    Text(String(format: "%.1f", rating))
                        .font(.subheadline)
                }
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Book")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 8)
                    .background(Color.background)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ContentView()
}
