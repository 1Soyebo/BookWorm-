//
//  ContentView.swift
//  Bookworm
//
//  Created by Ibukunoluwa Soyebo on 22/06/2022.
//

import SwiftUI

struct ContentView: View {
   
    @AppStorage("notes") private var notes = ""
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>

   var body: some View {
       NavigationView {
           VStack {
               List(students) { student in
                   Text(student.name ?? "Unknown")
               }
           }
           .navigationTitle("Core Data")
       }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
