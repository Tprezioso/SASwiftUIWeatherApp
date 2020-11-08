//
//  ContentView.swift
//  SeanAllenSwiftUIWeather
//
//  Created by Thomas Prezioso on 11/5/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)

                HStack(spacing: 20){
                    WeatherDayView(dayOfTheWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 78)
                
                    WeatherDayView(dayOfTheWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayOfTheWeek: "Thu",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayOfTheWeek: "Fri",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfTheWeek: "Sat",
                                   imageName: "snow",
                                   temperature: 25)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 40 , height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
