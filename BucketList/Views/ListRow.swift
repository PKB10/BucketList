//
//  ListRow.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 07/02/2022.
//

import SwiftUI

struct ListRow: View {
    var listItem:ListItem
    
    var body: some View {
        
        HStack {
            listItem.image
             .resizable()
             .frame(width: 50, height: 50)
            Text(listItem.name)
            
            Spacer()
            
            if listItem.isFavorite {
                            Image(systemName: "star.fill")
                            .foregroundColor(.purple)
                        }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    
    static var listItems = ListData().listItems
    
    static var previews: some View {
        
        Group {
            ListRow(listItem: listItems[0])
            ListRow(listItem: listItems[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
