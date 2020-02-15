import Combine
import CoreData

public protocol ___VARIABLE_screenName___Interactor: Interactor {
    var models: AnyPublisher<[___VARIABLE_screenName___.Model], Never> { get }
}

internal class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_screenName___.Interactor {

    internal let models: AnyPublisher<[___VARIABLE_screenName___.Model], Never>
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
        models = self.context
            .updates(from: SOME_COREDATA_ENTITY.createFetchRequest())
            .map({ $0.models })
            .eraseToAnyPublisher()
    }
}

private extension Array where Element == SOME_COREDATA_ENTITY {
    var models: [___VARIABLE_screenName___.Model] {
        map { $0.model }
    }
}

private extension SOME_COREDATA_ENTITY {
    var model: ___VARIABLE_screenName___.Model {
        ___VARIABLE_screenName___.Model(id: /* id */)
    }
}
