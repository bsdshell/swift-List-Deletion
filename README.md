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

<p align="center">
  <iframe src="https://xfido.com/publicfile/swift-list.mov" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
</p>

