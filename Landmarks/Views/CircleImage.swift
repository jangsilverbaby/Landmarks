//
//  CircleImage.swift
//  Landmarks
//
//  Created by 장은애(Eunae Jang) on 2022/04/15.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle()) // 이미지를 원형으로 깎기
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            } // 원을 만든 후 이미지를 오버레이로 추가하여 테두리 지정
            .shadow(radius: 7) // 그림자
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
