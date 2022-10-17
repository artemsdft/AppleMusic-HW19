//
//  FullPlayer.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct FullPlayer: View {
    @State var volume: CGFloat = 0
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing: 80) {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 40 , height: 6)
                    .padding(.top, 40)
            })
            Image("korn")
                .resizable()
                .frame(width: 250 , height: 250)
                .cornerRadius(15)
            VStack{
                HStack {
                    VStack(alignment: .leading){
                        Text("Freak On a Leash")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text("Korn")
                            .font(.title2)
                            .foregroundColor(.red)
                            .fontWeight(.semibold)
                    }
                    Spacer(minLength: 0)
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.system(size: 25))
                            .foregroundColor(Color.red)
                    }
                }
                .padding()
                ZStack(alignment: .leading) {
                    Capsule()
                        .frame(width: 350, height: 3)
                        .foregroundColor(.secondary)
                    
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(.primary)
                }
                HStack {
                    Text("0:00")
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                    Spacer()
                        .frame(width: 290)
                    Text("-5:35")
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                }
                HStack(spacing: 70) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.gray)
                    }
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.gray)
                    }
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.gray)
                    }
                }
                .padding(.top,40)
                VStack {
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 15))
                        Slider(value: $volume)
                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 15))
                    }
                    .padding()
                    .padding(.top,25)
                    HStack(spacing: 80) {
                        Button(action: {}) {
                            Image(systemName: "quote.bubble")
                                .font(.system(size: 20))
                                .foregroundColor(Color.red)
                        }
                        Button(action: {}) {
                            Image(systemName: "airplayaudio")
                                .font(.system(size: 20))
                                .foregroundColor(Color.red)
                        }
                        Button(action: {}) {
                            Image(systemName: "list.bullet")
                                .font(.system(size: 20))
                                .foregroundColor(Color.red)
                        }
                    }
                    
                }
                Spacer(minLength: 0)
            }
        }
        .background(Color.white)
        .cornerRadius(15)
    }
}


struct FullPlayer_Previews: PreviewProvider {
    static var previews: some View {
        FullPlayer()
    }
}
