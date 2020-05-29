import Combine
import CoreData

public protocol ___VARIABLE_screenName___Interactor: Architecture.Interactor {
    typealias Renderables = RenderableContent<___VARIABLE_screenName___.Model, Architecture.ApplicationError>
    typealias RenderablesPublisher = AnyPublisher<Renderables, Never>
    var models: RenderablesPublisher { get }
}

internal class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_screenName___.Interactor {

    internal let models: ___VARIABLE_screenName___.Interactor.RenderablesPublisher
    private let repository: Repository
    private let commonModelsMapper: CommonModelsMapper

    init(repository: Repository, commonModelsMapper: CommonModelsMapper, selectedId id: Int) {
        self.repository = repository
        self.commonModelsMapper = commonModelsMapper
        #warning("Replace `self.repository.entities` with actual method / property.")
        models = self.repository
            .entities(for: id)
            .subscribe(on: DispatchQueue.global(qos: .userInitiated))
            .renderableContent(
                mappingOutput: { $0.asRenderables(with: commonModelsMapper) },
                mappingError: { $0.asRenderables(with: commonModelsMapper) })
            .eraseToAnyPublisher()
    }
}

private extension SOME_TYPE_FROM_REPOSITORY {
    func asModel(with mapper: CommonModelsMapper) -> ___VARIABLE_screenName___.Model {
        ___VARIABLE_screenName___.Model(id: -1)
    }
}

private extension SOME_TYPE_FROM_REPOSITORY {
    func asRenderables(with mapper: CommonModelsMapper) -> ___VARIABLE_screenName___.Interactor.Renderables {
        .content(content: asModel(with: mapper))
    }
}

private extension RepositoryError {
    func asRenderables(with mapper: CommonModelsMapper) -> ___VARIABLE_screenName___.Interactor.Renderables {
        .failure(error: asApplicationError(with: mapper))
    }

    func asApplicationError(with mapper: CommonModelsMapper) -> Architecture.ApplicationError {
        .genericError
    }
}
