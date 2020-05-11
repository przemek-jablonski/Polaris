import Combine

public class ___FILEBASENAMEASIDENTIFIER___: ObservableObject, ViewModel {

    @Published internal private(set) var renderingModels: [___VARIABLE_screenName___.RenderingModel] = []
    private let interactor: ___VARIABLE_screenName___.Interactor
    private var cancellables = Set<AnyCancellable>()

    init(interactor: ___VARIABLE_screenName___.Interactor) {
        self.interactor = interactor
        interactor.models
            .map ({ $0.renderingModels })
            .assign(to: \.renderingModels, on: self)
            .store(in: &cancellables)
    }

    public func viewDisappeared() {
        cancellables.cancelAll()
    }
}

private extension Array where Element == ___VARIABLE_screenName___.Model {
    var renderingModels: [___VARIABLE_screenName___.RenderingModel] {
        map { $0.renderingModel }
    }
}

private extension ___VARIABLE_screenName___.Model {
    var renderingModel: ___VARIABLE_screenName___.RenderingModel {
        ___VARIABLE_screenName___.RenderingModel(id: id)
    }
}
