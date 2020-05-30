import Combine
import CoreData

public protocol ___VARIABLE_screenName___Interactor: Architecture.Interactor {
    typealias Renderables = RenderableCollection<___VARIABLE_screenName___.Model, Architecture.ApplicationError>
    typealias RenderablesPublisher = AnyPublisher<Renderables, Never>
    var models: RenderablesPublisher { get }
}

internal class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_screenName___.Interactor {

    internal let models: ___VARIABLE_screenName___.Interactor.RenderablesPublisher
    private let repository: Repository
    private let commonModelsMapper: CommonModelsMapper

    init(repository: Repository, commonModelsMapper: CommonModelsMapper) {
        self.repository = repository
        self.commonModelsMapper = commonModelsMapper
        models = self.repository
            .entities
            .subscribe(on: DispatchQueue.global(qos: .userInitiated))
            .renderableCollection(
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

private extension Array where Element == SOME_TYPE_FROM_REPOSITORY {
    func asRenderables(with mapper: CommonModelsMapper) -> ___VARIABLE_screenName___.Interactor.Renderables {
        .content(content: map { $0.asModel(with: mapper) })
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
