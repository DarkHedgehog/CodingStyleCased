public struct CodingStyleCased {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public struct CodingStyleCasedTest1 {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}


@propertyWrapper
struct CodingStyle {
    var value: String
    var style: Style

    init(wrappedValue: String, _ style: Style) {
        self.style = style
        self.value = wrappedValue
    }

    var wrappedValue: String {
        get {
            return value
        }
        set {
            value = style.styling(newValue)
            print("set to " + value)
        }
    }

    enum Style {
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
