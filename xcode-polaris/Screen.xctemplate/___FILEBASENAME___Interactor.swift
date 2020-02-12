import Combine
import CoreData

public protocol ___VARIABLE_screenName___Interactor: Interactor {

}

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_screenName___Interactor {

    // let events: AnyPublisher<[___VARIABLE_appName______VARIABLE_screenName___Model], Never>

    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
        // events = self.context.updates(from: ___VARIABLE_appName______VARIABLE_screenName___Model.createFetchRequest())
    }

}
