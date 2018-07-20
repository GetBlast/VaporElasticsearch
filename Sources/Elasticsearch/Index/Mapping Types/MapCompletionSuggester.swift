/*
 These structs define all of the types that Elasticsearch can store,
 how they map to Swift types and allows the user to configure what
 the mapping should be like in their index.
 
 The list of types in Elasticsearch can be found at:
 https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html
 */

public struct MapCompletionSuggester: Mappable {
    /// :nodoc:
    public static var typeKey = MapType.completionSuggester
    
    let type = typeKey.rawValue
    
    public var analyzer: String?
    public var searchAnalyzer: String?
    public var preserveSeparators: Bool?
    public var preservePositionIncrements: Bool?
    public var maxInputLength: Int?

    enum CodingKeys: String, CodingKey {
        case type
        case analyzer
        case searchAnalyzer = "search_analyzer"
        case preserveSeparators = "preserve_separators"
        case preservePositionIncrements = "preserve_position_increments"
        case maxInputLength = "max_input_length"
    }
    
    public init(analyzer: String? = nil,
                searchAnalyzer: String? = nil,
                preserveSeparators: Bool? = nil,
                preservePositionIncrements: Bool? = nil,
                maxInputLength: Int? = nil) {
    
        self.analyzer = analyzer
        self.searchAnalyzer = searchAnalyzer
        self.preserveSeparators = preserveSeparators
        self.preservePositionIncrements = preservePositionIncrements
        self.maxInputLength = maxInputLength
    }
}
