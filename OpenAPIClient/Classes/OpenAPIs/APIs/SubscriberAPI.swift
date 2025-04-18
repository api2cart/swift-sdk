//
// SubscriberAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SubscriberAPI {

    /**
     subscriber.list
     
     - parameter start: (query) This parameter sets the number from which you want to get entities (optional, default to 0)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter subscribed: (query) Filter by subscription status (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter email: (query) Filter subscribers by email (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - parameter createdFrom: (query) Retrieve entities from their creation date (optional)
     - parameter createdTo: (query) Retrieve entities to their creation date (optional)
     - parameter modifiedFrom: (query) Retrieve entities from their modification date (optional)
     - parameter modifiedTo: (query) Retrieve entities to their modification date (optional)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func subscriberList(start: Int? = nil, count: Int? = nil, subscribed: Bool? = nil, storeId: String? = nil, email: String? = nil, params: String? = nil, exclude: String? = nil, createdFrom: String? = nil, createdTo: String? = nil, modifiedFrom: String? = nil, modifiedTo: String? = nil, pageCursor: String? = nil, responseFields: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ModelResponseSubscriberList?, _ error: Error?) -> Void)) -> RequestTask {
        return subscriberListWithRequestBuilder(start: start, count: count, subscribed: subscribed, storeId: storeId, email: email, params: params, exclude: exclude, createdFrom: createdFrom, createdTo: createdTo, modifiedFrom: modifiedFrom, modifiedTo: modifiedTo, pageCursor: pageCursor, responseFields: responseFields).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     subscriber.list
     - GET /subscriber.list.json
     - Get subscribers list
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter start: (query) This parameter sets the number from which you want to get entities (optional, default to 0)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter subscribed: (query) Filter by subscription status (optional)
     - parameter storeId: (query) Store Id (optional)
     - parameter email: (query) Filter subscribers by email (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - parameter createdFrom: (query) Retrieve entities from their creation date (optional)
     - parameter createdTo: (query) Retrieve entities to their creation date (optional)
     - parameter modifiedFrom: (query) Retrieve entities from their modification date (optional)
     - parameter modifiedTo: (query) Retrieve entities to their modification date (optional)
     - parameter pageCursor: (query) Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - returns: RequestBuilder<ModelResponseSubscriberList> 
     */
    open class func subscriberListWithRequestBuilder(start: Int? = nil, count: Int? = nil, subscribed: Bool? = nil, storeId: String? = nil, email: String? = nil, params: String? = nil, exclude: String? = nil, createdFrom: String? = nil, createdTo: String? = nil, modifiedFrom: String? = nil, modifiedTo: String? = nil, pageCursor: String? = nil, responseFields: String? = nil) -> RequestBuilder<ModelResponseSubscriberList> {
        let localVariablePath = "/subscriber.list.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "subscribed": (wrappedValue: subscribed?.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
            "email": (wrappedValue: email?.encodeToJSON(), isExplode: true),
            "params": (wrappedValue: params?.encodeToJSON(), isExplode: true),
            "exclude": (wrappedValue: exclude?.encodeToJSON(), isExplode: true),
            "created_from": (wrappedValue: createdFrom?.encodeToJSON(), isExplode: true),
            "created_to": (wrappedValue: createdTo?.encodeToJSON(), isExplode: true),
            "modified_from": (wrappedValue: modifiedFrom?.encodeToJSON(), isExplode: true),
            "modified_to": (wrappedValue: modifiedTo?.encodeToJSON(), isExplode: true),
            "page_cursor": (wrappedValue: pageCursor?.encodeToJSON(), isExplode: true),
            "response_fields": (wrappedValue: responseFields?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ModelResponseSubscriberList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
