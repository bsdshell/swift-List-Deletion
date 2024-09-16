//
//  ContentView.swift
//  List-Deletion
//
//  Created by aaa on 2024-06-07.
//

import SwiftUI


struct Product : Identifiable, Hashable {
    let id = UUID()
    var title : String
}

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        Text(product.title)
            .font(.title)
            .navigationTitle(product.title)
    }
}

struct ContentView: View {
    @State var recentProducts: [Product] = [Product(title: "Milk"), Product(title: "Vegetable"), Product(title: "Meat")]
    var body: some View {
        
        NavigationView {
            List{
                Section("Recent") {
                    ForEach(recentProducts, id : \.self) { recentProducts in
                        Text(recentProducts.title)
                    }
                    .onDelete(perform: deleteRow)
                }
            }
            .navigationTitle("Todo")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func deleteRow(at offsets: IndexSet) {
        recentProducts.remove(atOffsets: offsets)
    }
    func insertItem(at plit : [Product]){
        
    }
}

#Preview {
    ContentView()
}
