
import SwiftUI
class ViewManager: ObservableObject {

    @Published var exitView = false

    public static var shared = ViewManager()

    private init() { }
}
