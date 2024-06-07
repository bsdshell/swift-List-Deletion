# Swift List with deletion

```
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
```

<img src="swift-list.png" alt="drawing" width="400"/>

<video width="320" height="240" controls>
  <source src="https://xfido.com/publicfile/swift-list.mov" type="video/mp4">
</video>
