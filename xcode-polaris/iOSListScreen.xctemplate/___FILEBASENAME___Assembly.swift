import Swinject
import SwinjectAutoregistration

#error("Remember to register ___FILEBASENAMEASIDENTIFIER___ in global ___VARIABLE_appName___InjectionAssembler. Remove this error when done.")
public final class ___FILEBASENAMEASIDENTIFIER___: Assembly {
    public func assemble(container: Container) {
        container.register(
            type: ___VARIABLE_screenName___.ViewModel.self,
            as: .graph,
            using: { (resolver: Resolver, selected: LIST_SCREEN.RenderingModel) -> ___VARIABLE_screenName___.ViewModel in
                ___VARIABLE_appName______VARIABLE_screenName___ViewModel(
                    interactor: resolver.resolveInteractor(with: selected.id))
        })

        container.register(
            type: ___VARIABLE_screenName___.Interactor.self,
            as: .graph,
            using: { (resolver: Resolver, selectedId: Int) -> ___VARIABLE_screenName___.Interactor in
                ___VARIABLE_appName______VARIABLE_screenName___Interactor(
                    repository: resolver ~> Repository.self,
                    commonModelsMapper: resolver ~> CommonModelsMapper.self,
                    selectedId: selectedId)
        })
    }
}

extension ___VARIABLE_screenName___.View {
    init(selected: LIST_SCREEN.RenderingModel) {
        self.init(viewModel: ___VARIABLE_appName___InjectionAssembler.resolver.resolveViewModel(with: selected))
    }
}

private extension Resolver {
    func resolveInteractor(with selectedId: Int) -> ___VARIABLE_screenName___.Interactor {
        guard let resolved = resolve(___VARIABLE_screenName___.Interactor.self, argument: selectedId) else {
            fatalError("Unable to resolve ___VARIABLE_screenName___.Interactor, with \(selectedId)")
        }
        return resolved
    }

    func resolveViewModel(with selected: LIST_SCREEN.RenderingModel) -> ___VARIABLE_screenName___.ViewModel {
        guard let resolved = resolve(___VARIABLE_screenName___.ViewModel.self, argument: selected) else {
            fatalError("Unable to resolve ___VARIABLE_screenName___.ViewModel, with \(selected)")
        }
        return resolved
    }
}
