//
//  ContentView.swift
//  project 1
//
//  Created by Mufti Ramdhani on 08/06/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack{
      Image("bg")
        .resizable()
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      VStack(spacing:20){
        Logo()
        FormBox()
      }
      .padding(.all,20)
      
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct Logo : View {
  var body: some View {
    
    VStack{
      Image("swift")
        .resizable()
        .frame(width: 80, height: 80)
        .background(Color("warnaku"))
        .foregroundColor(Color.white)
        .padding()
        .background(Color("warnaku"))
        .cornerRadius(20)
      
      Text("HelloSwiftUI").foregroundColor(Color.white)
    }
    
  }
}

struct FormBox:View {
  
  @State var username: String = ""
  @State var password: String = ""
  
  
  var body: some View{
    VStack(alignment: .leading) {
      Text("username").font(.callout).bold()
      
      TextField("username...",text:$username)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      
      Text("Password").font(.callout).bold()
      
      TextField("Password...",text:$password)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      
      Button(action: {print("Hello Button")}){
        HStack{
          Text("Sign In")
          Spacer()
        }
      }
      .padding()
      .background(Color.black)
      .cornerRadius(10)
      .foregroundColor(Color.white)
    }
    .padding()
    .background(Color.orange)
    .cornerRadius(10)
  }
}
