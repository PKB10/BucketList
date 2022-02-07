//
//  BucketList.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 07/02/2022.
//

import SwiftUI

struct BucketList: View {
    var body: some View {
        List(listItems){ listItem in
            
            ListRow(listItem: listItem)
        }
    }
}

struct BucketList_Previews: PreviewProvider {
    static var previews: some View {
        BucketList()
    }
}
