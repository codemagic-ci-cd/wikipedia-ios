
import Foundation

struct ArticleDescriptionPublishResult {
    let newRevisionID: UInt64?
    let newDescription: String
}

protocol ArticleDescriptionControlling {
    var descriptionSource: ArticleDescriptionSource { get }
    var article: WMFArticle { get }
    var articleLanguage: String { get }
    func publishDescription(_ description: String, completion: @escaping (Result<ArticleDescriptionPublishResult, Error>) -> Void)
    func currentDescription(completion: @escaping (String?) -> Void)
    func errorTextFromError(_ error: Error) -> String
    func learnMoreViewControllerWithTheme(_ theme: Theme) -> UIViewController?
}

extension ArticleDescriptionControlling {
    var articleDisplayTitle: String? { return article.displayTitle }
}