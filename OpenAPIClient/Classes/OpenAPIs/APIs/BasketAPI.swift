//
// BasketAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BasketAPI {

    /**
     basket.info
     
     - parameter id: (query) Entity id 
     - parameter storeId: (query) Store Id (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func basketInfo(id: String, storeId: String? = nil, responseFields: String? = nil, params: String? = nil, exclude: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BasketInfo200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return basketInfoWithRequestBuilder(id: id, storeId: storeId, responseFields: responseFields, params: params, exclude: exclude).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     basket.info
     - GET /basket.info.json
     - Retrieve basket information.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter id: (query) Entity id 
     - parameter storeId: (query) Store Id (optional)
     - parameter responseFields: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional)
     - parameter params: (query) Set this parameter in order to choose which entity fields you want to retrieve (optional, default to "force_all")
     - parameter exclude: (query) Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
     - returns: RequestBuilder<BasketInfo200Response> 
     */
    open class func basketInfoWithRequestBuilder(id: String, storeId: String? = nil, responseFields: String? = nil, params: String? = nil, exclude: String? = nil) -> RequestBuilder<BasketInfo200Response> {
        let localVariablePath = "/basket.info.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
            "response_fields": (wrappedValue: responseFields?.encodeToJSON(), isExplode: true),
            "params": (wrappedValue: params?.encodeToJSON(), isExplode: true),
            "exclude": (wrappedValue: exclude?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BasketInfo200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     basket.item.add
     
     - parameter customerId: (query) Retrieves orders specified by customer id 
     - parameter productId: (query) Defines id of the product which should be added to the basket 
     - parameter variantId: (query) Defines product&#39;s variants specified by variant id (optional)
     - parameter quantity: (query) Defines new items quantity (optional, default to 0)
     - parameter storeId: (query) Store Id (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func basketItemAdd(customerId: String, productId: String, variantId: String? = nil, quantity: Double? = nil, storeId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BasketItemAdd200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return basketItemAddWithRequestBuilder(customerId: customerId, productId: productId, variantId: variantId, quantity: quantity, storeId: storeId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     basket.item.add
     - POST /basket.item.add.json
     - Add item to basket
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter customerId: (query) Retrieves orders specified by customer id 
     - parameter productId: (query) Defines id of the product which should be added to the basket 
     - parameter variantId: (query) Defines product&#39;s variants specified by variant id (optional)
     - parameter quantity: (query) Defines new items quantity (optional, default to 0)
     - parameter storeId: (query) Store Id (optional)
     - returns: RequestBuilder<BasketItemAdd200Response> 
     */
    open class func basketItemAddWithRequestBuilder(customerId: String, productId: String, variantId: String? = nil, quantity: Double? = nil, storeId: String? = nil) -> RequestBuilder<BasketItemAdd200Response> {
        let localVariablePath = "/basket.item.add.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "customer_id": (wrappedValue: customerId.encodeToJSON(), isExplode: true),
            "product_id": (wrappedValue: productId.encodeToJSON(), isExplode: true),
            "variant_id": (wrappedValue: variantId?.encodeToJSON(), isExplode: true),
            "quantity": (wrappedValue: quantity?.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BasketItemAdd200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     basket.live_shipping_service.create
     
     - parameter name: (query) Shipping Service Name 
     - parameter callback: (query) Callback url that returns shipping rates. It should be able to accept POST requests with json data. 
     - parameter storeId: (query) Store Id (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func basketLiveShippingServiceCreate(name: String, callback: String, storeId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BasketLiveShippingServiceCreate200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return basketLiveShippingServiceCreateWithRequestBuilder(name: name, callback: callback, storeId: storeId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     basket.live_shipping_service.create
     - POST /basket.live_shipping_service.create.json
     - Create live shipping rate service.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter name: (query) Shipping Service Name 
     - parameter callback: (query) Callback url that returns shipping rates. It should be able to accept POST requests with json data. 
     - parameter storeId: (query) Store Id (optional)
     - returns: RequestBuilder<BasketLiveShippingServiceCreate200Response> 
     */
    open class func basketLiveShippingServiceCreateWithRequestBuilder(name: String, callback: String, storeId: String? = nil) -> RequestBuilder<BasketLiveShippingServiceCreate200Response> {
        let localVariablePath = "/basket.live_shipping_service.create.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": (wrappedValue: name.encodeToJSON(), isExplode: true),
            "callback": (wrappedValue: callback.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BasketLiveShippingServiceCreate200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     basket.live_shipping_service.delete
     
     - parameter id: (query) Entity id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func basketLiveShippingServiceDelete(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BasketLiveShippingServiceDelete200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return basketLiveShippingServiceDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     basket.live_shipping_service.delete
     - DELETE /basket.live_shipping_service.delete.json
     - Delete live shipping rate service.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter id: (query) Entity id 
     - returns: RequestBuilder<BasketLiveShippingServiceDelete200Response> 
     */
    open class func basketLiveShippingServiceDeleteWithRequestBuilder(id: Int) -> RequestBuilder<BasketLiveShippingServiceDelete200Response> {
        let localVariablePath = "/basket.live_shipping_service.delete.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BasketLiveShippingServiceDelete200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     basket.live_shipping_service.list
     
     - parameter start: (query) This parameter sets the number from which you want to get entities (optional, default to 0)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter storeId: (query) Store Id (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func basketLiveShippingServiceList(start: Int? = nil, count: Int? = nil, storeId: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BasketLiveShippingServiceList200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return basketLiveShippingServiceListWithRequestBuilder(start: start, count: count, storeId: storeId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     basket.live_shipping_service.list
     - GET /basket.live_shipping_service.list.json
     - Retrieve a list of live shipping rate services.
     - API Key:
       - type: apiKey x-store-key (HEADER)
       - name: StoreKeyAuth
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: ApiKeyAuth
     - parameter start: (query) This parameter sets the number from which you want to get entities (optional, default to 0)
     - parameter count: (query) This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
     - parameter storeId: (query) Store Id (optional)
     - returns: RequestBuilder<BasketLiveShippingServiceList200Response> 
     */
    open class func basketLiveShippingServiceListWithRequestBuilder(start: Int? = nil, count: Int? = nil, storeId: String? = nil) -> RequestBuilder<BasketLiveShippingServiceList200Response> {
        let localVariablePath = "/basket.live_shipping_service.list.json"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "store_id": (wrappedValue: storeId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BasketLiveShippingServiceList200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
