import Swinject
import SwinjectAutoregistration

#error("Remember to register ___FILEBASENAMEASIDENTIFIER___ in global ___VARIABLE_appName___InjectionAssembler. Remove this error when done.")
public final class ___FILEBASENAMEASIDENTIFIER___: Assembly {
    public func assemble(container: Container) {
        container.autoregister(type: ___VARIABLE_appName______VARIABLE_screenName___ViewModel.self,
                               as: .graph,
                               using: ___VARIABLE_appName______VARIABLE_screenName___ViewModel.init)
        container.autoregister(type: ___VARIABLE_screenName___Interactor.self,
                               as: .graph,
                               using: ___VARIABLE_appName______VARIABLE_screenName___Interactor.init)
    }
}

extension ___VARIABLE_appName______VARIABLE_screenName___View {
    init(_ viewModel: ___VARIABLE_appName______VARIABLE_screenName___ViewModel =
        ___VARIABLE_appName___InjectionAssembler.resolver ~> ___VARIABLE_appName______VARIABLE_screenName___ViewModel.self) {
        self.init(viewModel: viewModel)
    }
}
