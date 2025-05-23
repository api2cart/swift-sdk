//
// MarketplaceAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MarketplaceAPI {

    /**
     marketplace.product.find
     
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter keyword: (query) Defines search keyword (optional)
     - parameter categoriesIds: (query) Defines product add that is specified by comma-separated categories id (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter asin: (query) Amazon Standard Identification Number. (optional)
     - parameter ean: (query) European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. (optional)
     - parameter gtin: (query) Global Trade Item Number. An GTIN is an identifier for trade items. (optional)
     - parameter upc: (query) Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. (optional)
     - parameter mpn: (query) Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. (optional)
     - parameter isbn: (query) International Standard Book Number. An ISBN is a unique identifier for books. (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func marketplaceProductFind(count: Int? = nil, pageCursor: String? = nil, keyword: String? = nil, categoriesIds: String? = nil, storeId: String? = nil, asin: String? = nil, ean: String? = nil, gtin: String? = nil, upc: String? = nil, mpn: String? = nil, isbn: String? = nil, responseFields: String? = nil, params: String? = nil, exclude: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ModelResponseMarketplaceProductFind?, _ error: Error?) -> Void)) -> RequestTask {
        return marketplaceProductFindWithRequestBuilder(count: count, pageCursor: pageCursor, keyword: keyword, categoriesIds: categoriesIds, storeId: storeId, asin: asin, ean: ean, gtin: gtin, upc: upc, mpn: mpn, isbn: isbn, responseFields: responseFields, params: params, exclude: exclude).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     marketplace.product.find
     - GET /marketplace.product.find.json
     - Search product in global catalog.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter keyword: (query) Defines search keyword (optional)
     - parameter categoriesIds: (query) Defines product add that is specified by comma-separated categories id (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter asin: (query) Amazon Standard Identification Number. (optional)
     - parameter ean: (query) European Article Number. An EAN is a unique 8 or 13-digit identifier that many industries (such as book publishers) use to identify products. (optional)
     - parameter gtin: (query) Global Trade Item Number. An GTIN is an identifier for trade items. (optional)
     - parameter upc: (query) Universal Product Code. A UPC (UPC-A) is a commonly used identifer for many different products. (optional)
     - parameter mpn: (query) Manufacturer Part Number. A MPN is an identifier of a particular part design or material used. (optional)
     - parameter isbn: (query) International Standard Book Number. An ISBN is a unique identifier for books. (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - returns: RequestBuilder<ModelResponseMarketplaceProductFind> 
     */
    open class func marketplaceProductFindWithRequestBuilder(count: Int? = nil, pageCursor: String? = nil, keyword: String? = nil, categoriesIds: String? = nil, storeId: String? = nil, asin: String? = nil, ean: String? = nil, gtin: String? = nil, upc: String? = nil, mpn: String? = nil, isbn: String? = nil, responseFields: String? = nil, params: String? = nil, exclude: String? = nil) -> RequestBuilder<ModelResponseMarketplaceProductFind> {
        let localVariablePath = "/marketplace.product.find.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "page_cursor": (wrappedValue: pageCursor?.encodeToJSON(), isExplode: true),
            "keyword": (wrappedValue: keyword?.encodeToJSON(), isExplode: true),
            "categories_ids": (wrappedValue: categoriesIds?.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
            "asin": (wrappedValue: asin?.encodeToJSON(), isExplode: true),
            "ean": (wrappedValue: ean?.encodeToJSON(), isExplode: true),
            "gtin": (wrappedValue: gtin?.encodeToJSON(), isExplode: true),
            "upc": (wrappedValue: upc?.encodeToJSON(), isExplode: true),
            "mpn": (wrappedValue: mpn?.encodeToJSON(), isExplode: true),
            "isbn": (wrappedValue: isbn?.encodeToJSON(), isExplode: true),
            "response_fields": (wrappedValue: responseFields?.encodeToJSON(), isExplode: true),
            "params": (wrappedValue: params?.encodeToJSON(), isExplode: true),
            "exclude": (wrappedValue: exclude?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelResponseMarketplaceProductFind>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
