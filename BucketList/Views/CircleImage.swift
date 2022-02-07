//
//  CircleImage.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 06/02/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("burjkhalifa")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
