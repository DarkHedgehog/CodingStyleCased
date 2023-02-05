//public struct CodingStyleCased {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}
//
//public struct CodingStyleCasedTest1 {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}


@propertyWrapper
public struct CodingStyleCased {
    var value: String
    var style: Style

    init(wrappedValue: String, _ style: Style) {
        self.style = style
        self.value = wrappedValue
    }

    public var wrappedValue: String {
        get {
            return value
        }
        set {
            value = style.styling(newValue)
            print("set to " + value)
        }
    }

    public enum Style {
        /// camelCaseExample
        case camelCase
        /// snake_case_example
        case snakeCase
        /// kebab-case-example
        case kebabCase

        func styling (_ caseValue: String) -> String {
            switch self {
            case .camelCase:
                return caseValue.camelCased
            case .kebabCase:
                return caseValue.kebabCased
            case .snakeCase:
                return caseValue.snakeCased
            }
        }
    }
}
