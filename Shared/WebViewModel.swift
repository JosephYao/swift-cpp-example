//
// Created by Joseph Yao on 2021/2/4.
//

import Foundation

class WebViewModel: ObservableObject {
    @Published var link: String
    @Published var didFinishLoading: Bool = false

    init (link: String) {
        self.link = link
    }
}
