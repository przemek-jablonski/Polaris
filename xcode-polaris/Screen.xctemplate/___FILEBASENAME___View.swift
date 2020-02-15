import Combine
import CoreData
import SwiftUI
import SFSafeSymbols

public struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject private var viewModel: ___VARIABLE_screenName___.ViewModel

    init(viewModel: ___VARIABLE_screenName___.ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        helloWorldText
    }
}

private extension ___VARIABLE_screenName___.View {
    private var helloWorldText: some View {
        Text("___FILEBASENAMEASIDENTIFIER___")
            .truncationMode(.head)
            .padding()
            .background(Color(.displayP3,
                              red: Double.random(in: 0.0...1.0),
                              green: Double.random(in: 0.0...1.0),
                              blue: Double.random(in: 0.0...1.0),
                              opacity: 0.5))
    }
}

// MARK: - SwiftUI's PreviewProvider and it's extensions

struct SwiftUIPreview___VARIABLE_appName______VARIABLE_screenName___View: PreviewProvider {
    static var previews: some View {
        appleWatchPreviewGroup(with: ___VARIABLE_screenName___.View(viewModel: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel([
            ___VARIABLE_screenName___.RenderingModel(id: 1),
            ___VARIABLE_screenName___.RenderingModel(id: 2),
            ___VARIABLE_screenName___.RenderingModel(id: 3)
        ])))
    }
}

// MARK: - Architecture mocks for SwiftUI's PreviewProvider

private class SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel: ___VARIABLE_screenName___.ViewModel {
    private let mockRenderingModels: [___VARIABLE_screenName___.RenderingModel]

    init(_ mocks: [___VARIABLE_screenName___.RenderingModel]) {
        mockRenderingModels = mocks
        super.init(interactor: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___Interactor())
    }

    override var renderingModels: [___VARIABLE_screenName___.RenderingModel] {
        mockRenderingModels
    }
}

private class SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___Interactor: ___VARIABLE_screenName___.Interactor {
    let models: AnyPublisher<[___VARIABLE_screenName___.Model], Never> = Just([]).eraseToAnyPublisher()
}
