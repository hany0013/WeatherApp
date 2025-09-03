//
//  ContentView.swift
//  Weather Forecast
//
//  Created by Hany C. on 9/2/25.
//

import SwiftUI
// PROPERTIES
struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    // CHOOSES WHICH SYMBOL TO SHOW
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    //CHOOSES COLOR OF ICON
        var iconColor: Color {
            if isRainy {
                return Color.blue
            } else {
                return Color.yellow
        }
            }
    
         // UI INTERFACE (FONT, COLORS, ETC.)
            var body: some View {
                VStack {
                    Text(day)
                        .font(Font.headline)
                    Image(systemName: iconName)
                        .foregroundStyle(iconColor)
                        .font(Font.largeTitle)
                        .padding(5)
                    Text("High: \(high)")
                        .fontWeight(Font.Weight.semibold)
                    Text("Low: \(low)")
                        .fontWeight(Font.Weight.medium)
                        .foregroundStyle(Color.secondary)
                }
                .padding()
            }
        }
        
        
        struct ContentView: View {
            var body: some View {
                HStack{
                    DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                    
                    DayForecast(day: "Tues", isRainy: true, high: 60, low: 40)
                }
            }
        }
        
        #Preview {
            ContentView()
        }
