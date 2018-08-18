
import Foundation

public typealias ModelDouble = Double
extension Double: ModelType {
    public static let backingType: Mappable.Type = Mapping.self

    public struct Mapping: Mappable {
        /// Holds the string that Elasticsearch uses to identify the mapping type
        public let type = MapType.double
        public var coerce: Bool? = nil
        public var boost: Float? = nil
        public var docValues: Bool? = nil
        public var ignoreMalformed: Bool? = nil
        public var index: Bool? = nil
        public var nullValue: Double? = nil
        public var store: Bool? = nil
        
        enum CodingKeys: String, CodingKey {
            case type
            case coerce
            case boost
            case docValues = "doc_values"
            case ignoreMalformed = "ignore_malformed"
            case index
            case nullValue = "null_value"
            case store
        }
        
        public init() { }
        
        public init(docValues: Bool? = nil,
                    index: Bool? = nil,
                    store: Bool? = nil,
                    boost: Float? = nil,
                    coerce: Bool? = nil,
                    ignoreMalformed: Bool? = nil,
                    nullValue: Double? = nil) {
            
            self.coerce = coerce
            self.boost = boost
            self.docValues = docValues
            self.ignoreMalformed = ignoreMalformed
            self.index = index
            self.nullValue = nullValue
            self.store = store
        }
    }
}
