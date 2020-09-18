//
//  ContentView.swift
//  TheChef
//
//  Created by Tommaso Capecchi on 16/09/2020.
//  Copyright © 2020 Tommaso Capecchi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                HStack {
                    Spacer()
                    Text("The").font(.system(size: 40, weight: .bold, design: .default)).foregroundColor(Color.black)
                    Text("Chef").font(.system(size: 40, weight: .bold, design: .default)).foregroundColor(Color.orangeCustom)
                    Spacer()
                }
                VStack(spacing: 0) {
                    Spacer()
                    VStack{
                        CustomTextfield(width: geometry.size.width, placeholder: "Email")
                        Divider().padding(.bottom, 20)
                        CustomTextfield(width: geometry.size.width, placeholder: "Password")
                        Divider().padding(.bottom, 20)
                    }
                    
                    VStack{
                        HStack{
                            Text("Sign in").font(.system(size: 35, weight: .semibold, design: .default)).foregroundColor(.orangeCustom)
                            Spacer()
                            ZStack{
                                Circle().frame(width: geometry.size.width / 6, height: geometry.size.width / 6).overlay(Circle().stroke(Color.orangeCustom, lineWidth: 4)).foregroundColor(.clear)
                                Button(action: {
                                    //segue to the next view.
                                }, label: {
                                    Image(systemName: "arrow.right").font(.system(size: 35, weight: .regular, design: .default)).foregroundColor(.orangeCustom)
                                })
                            }
                            
                        }
                    }.padding(.top)
                    Spacer()
                    VStack{
                        HStack{
                            Button(action: {
                                //segue to sign up view
                            }, label: {
                                Text("Login").font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.black)
                                })
                            Spacer()
                            Button(action: {
                                //segue to sign up view
                            }, label: {
                                Text("Forgot Password?").font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.black)
                            })
                        }
                    }
                    Spacer()
                }
            }
        }.padding([.leading,.trailing])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11"], id: \.self){ deviceName in
            ContentView().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}

struct CustomTextfield: View {
    var width:CGFloat
    var placeholder:String
    @State private var text = ""
    @State private var isActive = false;
    var body: some View {
        ZStack{
            TextField("", text: self.$text).frame(width:
                width - 10, height: 45)
            Text(placeholder).font(.system(size: self.isActive == true ? 14 : 16, weight: .light, design: .default)).frame(width: width - 10, height: 45, alignment: .leading).foregroundColor(self.isActive == true ? .gray: .black).onTapGesture {
                if (self.text.isEmpty) {
                    self.isActive.toggle()
                }
            }.offset(x: 0, y: self.isActive == true ? -20 : 0).animation(.default)
            
        }
    }
}
