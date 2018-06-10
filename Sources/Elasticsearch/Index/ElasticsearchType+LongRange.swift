/*
 These structs define all of the types that Elasticsearch can store,
 how they map to Swift types and allows the user to configure what
 the mapping should be like in their index.
 
 The list of types in Elasticsearch can be found at:
 https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html
 */

public class ESTypeLongRange: ESType {
    let type = "long_range"
    
    var coerce: Bool? = true
    var boost: Float? = 1.0
    var index: Bool? = true
    var store: Bool? = false
    
    enum CodingKeys: String, CodingKey {
        case type
        case coerce
        case boost
        case index
        case store
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        super.init()
        
        coerce = try container.decodeIfPresent(Bool.self, forKey: .coerce)
        boost = try container.decodeIfPresent(Float.self, forKey: .boost)
        index = try container.decodeIfPresent(Bool.self, forKey: .index)
        store = try container.decodeIfPresent(Bool.self, forKey: .store)
    }
    
    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(coerce, forKey: .coerce)
        try container.encodeIfPresent(boost, forKey: .boost)
        try container.encodeIfPresent(index, forKey: .index)
        try container.encodeIfPresent(store, forKey: .store)
    }
    
    override init() {
        super.init()
    }
}
