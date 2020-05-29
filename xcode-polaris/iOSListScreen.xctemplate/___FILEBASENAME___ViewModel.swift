import Foundation
import Combine

public extension ___VARIABLE_screenName___.ViewModel {
    typealias Renderables = RenderableCollection<___VARIABLE_screenName___.RenderingModel, Architecture.ApplicationError>
}

public class ___FILEBASENAMEASIDENTIFIER___: ObservableObject, Architecture.ViewModel {

    @Published internal private(set) var renderingModels: Renderables = .loading
    private let interactor: ___VARIABLE_screenName___.Interactor
    private var cancellables = Set<AnyCancellable>()

    init(interactor: ___VARIABLE_screenName___.Interactor) {
        self.interactor = interactor
        interactor.models
            .subscribe(on: DispatchQueue.global(qos: .userInitiated))
            .map ({ $0.asRenderables() })
            .logEvents(with: "___FILEBASENAMEASIDENTIFIER___, interactor.models")
            .receive(on: DispatchQueue.main)
            .assign(to: \.renderingModels, on: self)
            .store(in: &cancellables)
    }

    public func viewAppeared() {
        log.verbose("")
    }

    public func viewDisappeared() {
        log.verbose("")
        cancellables.cancelAll()
    }
}

private extension ___VARIABLE_screenName___.Model {
    func asRenderingModel() -> ___VARIABLE_screenName___.RenderingModel {
        ___VARIABLE_screenName___.RenderingModel(id: -1)
    }
}

private extension RenderableCollection where Content == ___VARIABLE_screenName___.Model, Error == Architecture.ApplicationError {
    func asRenderables() -> ___VARIABLE_screenName___.ViewModel.Renderables {
        map { $0.map({ $0.asRenderingModel() }) }
    }
}
