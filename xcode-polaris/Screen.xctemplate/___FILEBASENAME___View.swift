import Combine
import CoreData
import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___: View {

    @ObservedObject private var viewModel: ___VARIABLE_appName______VARIABLE_screenName___ViewModel

    init(viewModel: ___VARIABLE_appName______VARIABLE_screenName___ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        helloWorldText
    }
}

private extension ___VARIABLE_appName______VARIABLE_screenName___View {
    private var helloWorldText: some View {
        Text("___FILEBASENAMEASIDENTIFIER___")
            .truncationMode(.head)
            .background(Color(.displayP3,
                              red: Double.random(in: 0.0...1.0),
                              green: Double.random(in: 0.0...1.0),
                              blue: Double.random(in: 0.0...1.0),
                              opacity: 0.5))
    }
}

struct SwiftUIPreview___VARIABLE_appName______VARIABLE_screenName___View: PreviewProvider {
    private static let context = ___VARIABLE_appName___InjectionAssembler.resolve(NSManagedObjectContext.self)

    static var previews: some View {
        Group {
            ___FILEBASENAMEASIDENTIFIER___(viewModel: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel())
                .preview(on: .applewatch_old)

            ___FILEBASENAMEASIDENTIFIER___(viewModel: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel())
                .preview(on: .applewatch_large)

            ___FILEBASENAMEASIDENTIFIER___(viewModel: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel())
                .preview(on: .applewatch_small)
        }
    }
}

// MARK: - Architecture mocks for SwiftUI's PreviewProvider

private class SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___ViewModel: ___VARIABLE_appName______VARIABLE_screenName___ViewModel {
//    private let mockEvents: [___VARIABLE_appName______VARIABLE_screenName___Model]

    init(/*events: [___VARIABLE_appName______VARIABLE_screenName___Model]*/) {
//        mockEvents = events
        super.init(interactor: SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___Interactor())
    }

//    override var events: [___VARIABLE_appName______VARIABLE_screenName___Model] {
//        mockEvents
//    }
}

private class SwiftUIMock___VARIABLE_appName______VARIABLE_screenName___Interactor: ___VARIABLE_screenName___Interactor {
//    var events: AnyPublisher<[___VARIABLE_appName______VARIABLE_screenName___Model], Never> = Just([]).eraseToAnyPublisher()
//
//    func createEvent() {}
}
