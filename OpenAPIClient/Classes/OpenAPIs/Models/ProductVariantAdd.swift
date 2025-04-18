//
// ProductVariantAdd.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductVariantAdd: Codable, JSONEncodable, Hashable {

    /** Defines product's id where the variant has to be added */
    public var productId: String?
    /** Defines variant's name that has to be added */
    public var name: String?
    /** Specifies variant's model that has to be added */
    public var model: String
    /** Defines variant's sku that has to be added */
    public var sku: String?
    /** A barcode is a unique code composed of numbers used as a product identifier. */
    public var barcode: String?
    /** Global Trade Item Number. An GTIN is an identifier for trade items. */
    public var gtin: String?
    /** Defines new product's variant price */
    public var price: Double?
    /** Defines product's old price */
    public var oldPrice: Double?
    /** Defines new product's cost price */
    public var costPrice: Double?
    /** Specifies fixed cost shipping price */
    public var fixedCostShippingPrice: Double?
    /** Defines variant's attributes list */
    public var attributes: [ProductVariantAddAttributesInner]?
    /** Specifies variant's description */
    public var description: String?
    /** Specifies variant's model that has to be added */
    public var specialPrice: Double?
    /** Defines the date of special price creation */
    public var spriceCreate: String?
    /** Defines the date of special price modification */
    public var spriceModified: String?
    /** Defines the term of special price offer duration */
    public var spriceExpire: String?
    /** Specifies the set of visible/invisible product's variants for users */
    public var availableForView: Bool? = true
    /** Specifies the set of visible/invisible product's variants for sale */
    public var availableForSale: Bool? = true
    /** Weight */
    public var weight: Double? = 0
    /** Defines product's width */
    public var width: Double?
    /** Defines product's height */
    public var height: Double?
    /** Defines product's length */
    public var length: Double?
    /** Weight Unit */
    public var weightUnit: String?
    /** Defines short description */
    public var shortDescription: String?
    /** This parameter is used for selecting a warehouse where you need to set/modify a product quantity. */
    public var warehouseId: String?
    /** Defines product variant's quantity that has to be added */
    public var quantity: Double? = 0
    /** Defines the date of entity creation */
    public var createdAt: String?
    /** Specifies the product variant's manufacturer */
    public var manufacturer: String?
    /** Defines tax classes where entity has to be added */
    public var taxClassId: String?
    /** Defines unique meta title for each entity */
    public var metaTitle: String?
    /** Defines unique meta keywords for each entity */
    public var metaKeywords: String?
    /** Defines unique meta description of a entity */
    public var metaDescription: String?
    /** Defines unique product variant's URL */
    public var url: String?
    /** Add variants specified by store id */
    public var storeId: String?
    /** Language id */
    public var langId: String?
    /** Is cache clear required */
    public var clearCache: Bool? = true
    /** Specifies whether a tax is charged */
    public var taxable: Bool? = true
    /** Harmonized System Code. An HSC is a 6-digit identifier that allows participating countries to classify traded goods on a common basis for customs purposes */
    public var harmonizedSystemCode: String?
    /** The country where the inventory item was made */
    public var countryOfOrigin: String?
    /** Defines inventory tracking for product variant */
    public var manageStock: Bool?
    /** Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. */
    public var upc: String?
    /** Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. */
    public var mpn: String?
    /** European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. */
    public var ean: String?
    /** International Standard Book Number. An ISBN is a unique identifier for books. */
    public var isbn: String?
    /** Assign variant to the stores that is specified by comma-separated stores' id */
    public var storesIds: String?
    /** Defines as a default variant */
    public var isDefault: Bool?
    /** Specifies variant's free shipping flag that has to be added */
    public var isFreeShipping: Bool?
    /** String containing the JSON representation of the supplied data */
    public var marketplaceItemProperties: String?
    /** Set stock status */
    public var inStock: Bool?
    /** Set backorder status */
    public var backorderStatus: String?
    /** Defines product's tier prices */
    public var tierPrices: [ProductAddTierPricesInner]?
    /** Defines whether the product is virtual */
    public var isVirtual: Bool? = false

    public init(productId: String? = nil, name: String? = nil, model: String, sku: String? = nil, barcode: String? = nil, gtin: String? = nil, price: Double? = nil, oldPrice: Double? = nil, costPrice: Double? = nil, fixedCostShippingPrice: Double? = nil, attributes: [ProductVariantAddAttributesInner]? = nil, description: String? = nil, specialPrice: Double? = nil, spriceCreate: String? = nil, spriceModified: String? = nil, spriceExpire: String? = nil, availableForView: Bool? = true, availableForSale: Bool? = true, weight: Double? = 0, width: Double? = nil, height: Double? = nil, length: Double? = nil, weightUnit: String? = nil, shortDescription: String? = nil, warehouseId: String? = nil, quantity: Double? = 0, createdAt: String? = nil, manufacturer: String? = nil, taxClassId: String? = nil, metaTitle: String? = nil, metaKeywords: String? = nil, metaDescription: String? = nil, url: String? = nil, storeId: String? = nil, langId: String? = nil, clearCache: Bool? = true, taxable: Bool? = true, harmonizedSystemCode: String? = nil, countryOfOrigin: String? = nil, manageStock: Bool? = nil, upc: String? = nil, mpn: String? = nil, ean: String? = nil, isbn: String? = nil, storesIds: String? = nil, isDefault: Bool? = nil, isFreeShipping: Bool? = nil, marketplaceItemProperties: String? = nil, inStock: Bool? = nil, backorderStatus: String? = nil, tierPrices: [ProductAddTierPricesInner]? = nil, isVirtual: Bool? = false) {
        self.productId = productId
        self.name = name
        self.model = model
        self.sku = sku
        self.barcode = barcode
        self.gtin = gtin
        self.price = price
        self.oldPrice = oldPrice
        self.costPrice = costPrice
        self.fixedCostShippingPrice = fixedCostShippingPrice
        self.attributes = attributes
        self.description = description
        self.specialPrice = specialPrice
        self.spriceCreate = spriceCreate
        self.spriceModified = spriceModified
        self.spriceExpire = spriceExpire
        self.availableForView = availableForView
        self.availableForSale = availableForSale
        self.weight = weight
        self.width = width
        self.height = height
        self.length = length
        self.weightUnit = weightUnit
        self.shortDescription = shortDescription
        self.warehouseId = warehouseId
        self.quantity = quantity
        self.createdAt = createdAt
        self.manufacturer = manufacturer
        self.taxClassId = taxClassId
        self.metaTitle = metaTitle
        self.metaKeywords = metaKeywords
        self.metaDescription = metaDescription
        self.url = url
        self.storeId = storeId
        self.langId = langId
        self.clearCache = clearCache
        self.taxable = taxable
        self.harmonizedSystemCode = harmonizedSystemCode
        self.countryOfOrigin = countryOfOrigin
        self.manageStock = manageStock
        self.upc = upc
        self.mpn = mpn
        self.ean = ean
        self.isbn = isbn
        self.storesIds = storesIds
        self.isDefault = isDefault
        self.isFreeShipping = isFreeShipping
        self.marketplaceItemProperties = marketplaceItemProperties
        self.inStock = inStock
        self.backorderStatus = backorderStatus
        self.tierPrices = tierPrices
        self.isVirtual = isVirtual
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productId = "product_id"
        case name
        case model
        case sku
        case barcode
        case gtin
        case price
        case oldPrice = "old_price"
        case costPrice = "cost_price"
        case fixedCostShippingPrice = "fixed_cost_shipping_price"
        case attributes
        case description
        case specialPrice = "special_price"
        case spriceCreate = "sprice_create"
        case spriceModified = "sprice_modified"
        case spriceExpire = "sprice_expire"
        case availableForView = "available_for_view"
        case availableForSale = "available_for_sale"
        case weight
        case width
        case height
        case length
        case weightUnit = "weight_unit"
        case shortDescription = "short_description"
        case warehouseId = "warehouse_id"
        case quantity
        case createdAt = "created_at"
        case manufacturer
        case taxClassId = "tax_class_id"
        case metaTitle = "meta_title"
        case metaKeywords = "meta_keywords"
        case metaDescription = "meta_description"
        case url
        case storeId = "store_id"
        case langId = "lang_id"
        case clearCache = "clear_cache"
        case taxable
        case harmonizedSystemCode = "harmonized_system_code"
        case countryOfOrigin = "country_of_origin"
        case manageStock = "manage_stock"
        case upc
        case mpn
        case ean
        case isbn
        case storesIds = "stores_ids"
        case isDefault = "is_default"
        case isFreeShipping = "is_free_shipping"
        case marketplaceItemProperties = "marketplace_item_properties"
        case inStock = "in_stock"
        case backorderStatus = "backorder_status"
        case tierPrices = "tier_prices"
        case isVirtual = "is_virtual"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(model, forKey: .model)
        try container.encodeIfPresent(sku, forKey: .sku)
        try container.encodeIfPresent(barcode, forKey: .barcode)
        try container.encodeIfPresent(gtin, forKey: .gtin)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(oldPrice, forKey: .oldPrice)
        try container.encodeIfPresent(costPrice, forKey: .costPrice)
        try container.encodeIfPresent(fixedCostShippingPrice, forKey: .fixedCostShippingPrice)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(specialPrice, forKey: .specialPrice)
        try container.encodeIfPresent(spriceCreate, forKey: .spriceCreate)
        try container.encodeIfPresent(spriceModified, forKey: .spriceModified)
        try container.encodeIfPresent(spriceExpire, forKey: .spriceExpire)
        try container.encodeIfPresent(availableForView, forKey: .availableForView)
        try container.encodeIfPresent(availableForSale, forKey: .availableForSale)
        try container.encodeIfPresent(weight, forKey: .weight)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(length, forKey: .length)
        try container.encodeIfPresent(weightUnit, forKey: .weightUnit)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(warehouseId, forKey: .warehouseId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        try container.encodeIfPresent(taxClassId, forKey: .taxClassId)
        try container.encodeIfPresent(metaTitle, forKey: .metaTitle)
        try container.encodeIfPresent(metaKeywords, forKey: .metaKeywords)
        try container.encodeIfPresent(metaDescription, forKey: .metaDescription)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(storeId, forKey: .storeId)
        try container.encodeIfPresent(langId, forKey: .langId)
        try container.encodeIfPresent(clearCache, forKey: .clearCache)
        try container.encodeIfPresent(taxable, forKey: .taxable)
        try container.encodeIfPresent(harmonizedSystemCode, forKey: .harmonizedSystemCode)
        try container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        try container.encodeIfPresent(manageStock, forKey: .manageStock)
        try container.encodeIfPresent(upc, forKey: .upc)
        try container.encodeIfPresent(mpn, forKey: .mpn)
        try container.encodeIfPresent(ean, forKey: .ean)
        try container.encodeIfPresent(isbn, forKey: .isbn)
        try container.encodeIfPresent(storesIds, forKey: .storesIds)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
        try container.encodeIfPresent(isFreeShipping, forKey: .isFreeShipping)
        try container.encodeIfPresent(marketplaceItemProperties, forKey: .marketplaceItemProperties)
        try container.encodeIfPresent(inStock, forKey: .inStock)
        try container.encodeIfPresent(backorderStatus, forKey: .backorderStatus)
        try container.encodeIfPresent(tierPrices, forKey: .tierPrices)
        try container.encodeIfPresent(isVirtual, forKey: .isVirtual)
    }
}

