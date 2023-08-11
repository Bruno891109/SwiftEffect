//
//  ContentView.swift
//  SwiftEffect
//
//  Created by MacDev1 on 2/7/23.
//

import SwiftUI

struct User: Codable, Identifiable{
    let id = UUID()
    let userName:String
    let name:String
}

class apiCall{
    func getUsers(completion:@escaping([User]) -> ()) {
        var users = Array<User>()
        let new_user = User(userName: "aaaa", name: "bbb")
        users.append(new_user)
        completion(users)
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world here!")
                .onAppear{
                    apiCall().getUsers(completion: {(users) in
                    })
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
