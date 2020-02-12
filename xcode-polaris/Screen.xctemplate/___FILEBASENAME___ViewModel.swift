import Combine

internal class ___FILEBASENAMEASIDENTIFIER___: ObservableObject, ViewModel {

    private var cancellables = Set<AnyCancellable>()
//    @Published internal private(set) var events: [___VARIABLE_appName______VARIABLE_screenName___Model] = []

    private let interactor: ___VARIABLE_screenName___Interactor

    init(interactor: ___VARIABLE_screenName___Interactor) {
        self.interactor = interactor
//        interactor.events
//            .assign(to: \.events, on: self)
//            .store(in: &cancellables)
    }

//    func addEventButtonClicked() {
//        interactor.createEvent()
//    }

}
