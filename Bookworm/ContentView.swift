//
//  ContentView.swift
//  Bookworm
//
//  Created by Ibukunoluwa Soyebo on 22/06/2022.
//

import SwiftUI

struct ContentView: View {
   
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>

    @State private var showingAddScreen = false
    
    var body: some View {
           
       NavigationView {
           VStack{
               Text("Count: \(books.count)")
                   .padding(.top)
               Spacer()
           }
           
               .navigationTitle("Bookworm")
               .toolbar {
                   ToolbarItem(placement: .navigationBarTrailing) {
                       Button {
                           showingAddScreen.toggle()
                       } label: {
                           Label("Add Book", systemImage: "plus")
                       }
                   }
               }
               .sheet(isPresented: $showingAddScreen) {
                   AddBookView()
               }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
