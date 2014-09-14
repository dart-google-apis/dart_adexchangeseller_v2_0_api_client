part of adexchangeseller_v2_0_api;

class Account {

  /** Unique identifier of this account. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#account. */
  core.String kind;

  /** Name of this account. */
  core.String name;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.encode(this.toJson());

}

class Accounts {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The accounts returned in this list response. */
  core.List<Account> items;

  /** Kind of list this is, in this case adexchangeseller#accounts. */
  core.String kind;

  /** Continuation token used to page through accounts. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Account.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Accounts */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Accounts */
  core.String toString() => JSON.encode(this.toJson());

}

class AdClient {

  /** Whether this ad client is opted in to ARC. */
  core.bool arcOptIn;

  /** Unique identifier of this ad client. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#adClient. */
  core.String kind;

  /** This ad client's product code, which corresponds to the PRODUCT_CODE report dimension. */
  core.String productCode;

  /** Whether this ad client supports being reported on. */
  core.bool supportsReporting;

  /** Create new AdClient from JSON data */
  AdClient.fromJson(core.Map json) {
    if (json.containsKey("arcOptIn")) {
      arcOptIn = json["arcOptIn"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCode")) {
      productCode = json["productCode"];
    }
    if (json.containsKey("supportsReporting")) {
      supportsReporting = json["supportsReporting"];
    }
  }

  /** Create JSON Object for AdClient */
  core.Map toJson() {
    var output = new core.Map();

    if (arcOptIn != null) {
      output["arcOptIn"] = arcOptIn;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCode != null) {
      output["productCode"] = productCode;
    }
    if (supportsReporting != null) {
      output["supportsReporting"] = supportsReporting;
    }

    return output;
  }

  /** Return String representation of AdClient */
  core.String toString() => JSON.encode(this.toJson());

}

class AdClients {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ad clients returned in this list response. */
  core.List<AdClient> items;

  /** Kind of list this is, in this case adexchangeseller#adClients. */
  core.String kind;

  /** Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new AdClients from JSON data */
  AdClients.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AdClient.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdClients */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdClients */
  core.String toString() => JSON.encode(this.toJson());

}

class Alert {

  /** Unique identifier of this alert. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#alert. */
  core.String kind;

  /** The localized alert message. */
  core.String message;

  /** Severity of this alert. Possible values: INFO, WARNING, SEVERE. */
  core.String severity;

  /** Type of this alert. Possible values: SELF_HOLD, MIGRATED_TO_BILLING3, ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY, GRAYLISTED_PUBLISHER, API_HOLD. */
  core.String type;

  /** Create new Alert from JSON data */
  Alert.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("severity")) {
      severity = json["severity"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Alert */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (severity != null) {
      output["severity"] = severity;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Alert */
  core.String toString() => JSON.encode(this.toJson());

}

class Alerts {

  /** The alerts returned in this list response. */
  core.List<Alert> items;

  /** Kind of list this is, in this case adexchangeseller#alerts. */
  core.String kind;

  /** Create new Alerts from JSON data */
  Alerts.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Alert.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Alerts */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Alerts */
  core.String toString() => JSON.encode(this.toJson());

}

class CustomChannel {

  /** Code of this custom channel, not necessarily unique across ad clients. */
  core.String code;

  /** Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#customChannel. */
  core.String kind;

  /** Name of this custom channel. */
  core.String name;

  /** The targeting information of this custom channel, if activated. */
  CustomChannelTargetingInfo targetingInfo;

  /** Create new CustomChannel from JSON data */
  CustomChannel.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("targetingInfo")) {
      targetingInfo = new CustomChannelTargetingInfo.fromJson(json["targetingInfo"]);
    }
  }

  /** Create JSON Object for CustomChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (targetingInfo != null) {
      output["targetingInfo"] = targetingInfo.toJson();
    }

    return output;
  }

  /** Return String representation of CustomChannel */
  core.String toString() => JSON.encode(this.toJson());

}

/** The targeting information of this custom channel, if activated. */
class CustomChannelTargetingInfo {

  /** The name used to describe this channel externally. */
  core.String adsAppearOn;

  /** The external description of the channel. */
  core.String description;

  /** The locations in which ads appear. (Only valid for content and mobile content ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS. */
  core.String location;

  /** The language of the sites ads will be displayed on. */
  core.String siteLanguage;

  /** Create new CustomChannelTargetingInfo from JSON data */
  CustomChannelTargetingInfo.fromJson(core.Map json) {
    if (json.containsKey("adsAppearOn")) {
      adsAppearOn = json["adsAppearOn"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("siteLanguage")) {
      siteLanguage = json["siteLanguage"];
    }
  }

  /** Create JSON Object for CustomChannelTargetingInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (adsAppearOn != null) {
      output["adsAppearOn"] = adsAppearOn;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (siteLanguage != null) {
      output["siteLanguage"] = siteLanguage;
    }

    return output;
  }

  /** Return String representation of CustomChannelTargetingInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class CustomChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The custom channels returned in this list response. */
  core.List<CustomChannel> items;

  /** Kind of list this is, in this case adexchangeseller#customChannels. */
  core.String kind;

  /** Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new CustomChannels from JSON data */
  CustomChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new CustomChannel.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CustomChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CustomChannels */
  core.String toString() => JSON.encode(this.toJson());

}

class Metadata {

  core.List<ReportingMetadataEntry> items;

  /** Kind of list this is, in this case adexchangeseller#metadata. */
  core.String kind;

  /** Create new Metadata from JSON data */
  Metadata.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new ReportingMetadataEntry.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Metadata */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Metadata */
  core.String toString() => JSON.encode(this.toJson());

}

class PreferredDeal {

  /** The name of the advertiser this deal is for. */
  core.String advertiserName;

  /** The name of the buyer network this deal is for. */
  core.String buyerNetworkName;

  /** The currency code that applies to the fixed_cpm value. If not set then assumed to be USD. */
  core.String currencyCode;

  /** Time when this deal stops being active in seconds since the epoch (GMT). If not set then this deal is valid until manually disabled by the publisher. */
  core.String endTime;

  /** The fixed price for this preferred deal. In cpm micros of currency according to currencyCode. If set, then this preferred deal is eligible for the fixed price tier of buying (highest priority, pay exactly the configured fixed price). */
  core.int fixedCpm;

  /** Unique identifier of this preferred deal. */
  core.int id;

  /** Kind of resource this is, in this case adexchangeseller#preferredDeal. */
  core.String kind;

  /** Time when this deal becomes active in seconds since the epoch (GMT). If not set then this deal is active immediately upon creation. */
  core.String startTime;

  /** Create new PreferredDeal from JSON data */
  PreferredDeal.fromJson(core.Map json) {
    if (json.containsKey("advertiserName")) {
      advertiserName = json["advertiserName"];
    }
    if (json.containsKey("buyerNetworkName")) {
      buyerNetworkName = json["buyerNetworkName"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("fixedCpm")) {
      fixedCpm = (json["fixedCpm"] is core.String) ? core.int.parse(json["fixedCpm"]) : json["fixedCpm"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for PreferredDeal */
  core.Map toJson() {
    var output = new core.Map();

    if (advertiserName != null) {
      output["advertiserName"] = advertiserName;
    }
    if (buyerNetworkName != null) {
      output["buyerNetworkName"] = buyerNetworkName;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (fixedCpm != null) {
      output["fixedCpm"] = fixedCpm;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of PreferredDeal */
  core.String toString() => JSON.encode(this.toJson());

}

class PreferredDeals {

  /** The preferred deals returned in this list response. */
  core.List<PreferredDeal> items;

  /** Kind of list this is, in this case adexchangeseller#preferredDeals. */
  core.String kind;

  /** Create new PreferredDeals from JSON data */
  PreferredDeals.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PreferredDeal.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PreferredDeals */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PreferredDeals */
  core.String toString() => JSON.encode(this.toJson());

}

class Report {

  /** The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> averages;

  /** The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request. */
  core.List<ReportHeaders> headers;

  /** Kind this is, in this case adexchangeseller#report. */
  core.String kind;

  /** The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers. */
  core.List<core.List<core.String>> rows;

  /** The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit. */
  core.int totalMatchedRows;

  /** The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> totals;

  /** Any warnings associated with generation of the report. */
  core.List<core.String> warnings;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("averages")) {
      averages = json["averages"].toList();
    }
    if (json.containsKey("headers")) {
      headers = json["headers"].map((headersItem) => new ReportHeaders.fromJson(headersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.toList()).toList();
    }
    if (json.containsKey("totalMatchedRows")) {
      totalMatchedRows = (json["totalMatchedRows"] is core.String) ? core.int.parse(json["totalMatchedRows"]) : json["totalMatchedRows"];
    }
    if (json.containsKey("totals")) {
      totals = json["totals"].toList();
    }
    if (json.containsKey("warnings")) {
      warnings = json["warnings"].toList();
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (averages != null) {
      output["averages"] = averages.toList();
    }
    if (headers != null) {
      output["headers"] = headers.map((headersItem) => headersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toList()).toList();
    }
    if (totalMatchedRows != null) {
      output["totalMatchedRows"] = totalMatchedRows;
    }
    if (totals != null) {
      output["totals"] = totals.toList();
    }
    if (warnings != null) {
      output["warnings"] = warnings.toList();
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportHeaders {

  /** The currency of this column. Only present if the header type is METRIC_CURRENCY. */
  core.String currency;

  /** The name of the header. */
  core.String name;

  /** The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. */
  core.String type;

  /** Create new ReportHeaders from JSON data */
  ReportHeaders.fromJson(core.Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ReportHeaders */
  core.Map toJson() {
    var output = new core.Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ReportHeaders */
  core.String toString() => JSON.encode(this.toJson());

}

class ReportingMetadataEntry {

  /** For metrics this is a list of dimension IDs which the metric is compatible with, for dimensions it is a list of compatibility groups the dimension belongs to. */
  core.List<core.String> compatibleDimensions;

  /** The names of the metrics the dimension or metric this reporting metadata entry describes is compatible with. */
  core.List<core.String> compatibleMetrics;

  /** Unique identifier of this reporting metadata entry, corresponding to the name of the appropriate dimension or metric. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#reportingMetadataEntry. */
  core.String kind;

  /** The names of the dimensions which the dimension or metric this reporting metadata entry describes requires to also be present in order for the report to be valid. Omitting these will not cause an error or warning, but may result in data which cannot be correctly interpreted. */
  core.List<core.String> requiredDimensions;

  /** The names of the metrics which the dimension or metric this reporting metadata entry describes requires to also be present in order for the report to be valid. Omitting these will not cause an error or warning, but may result in data which cannot be correctly interpreted. */
  core.List<core.String> requiredMetrics;

  /** The codes of the projects supported by the dimension or metric this reporting metadata entry describes. */
  core.List<core.String> supportedProducts;

  /** Create new ReportingMetadataEntry from JSON data */
  ReportingMetadataEntry.fromJson(core.Map json) {
    if (json.containsKey("compatibleDimensions")) {
      compatibleDimensions = json["compatibleDimensions"].toList();
    }
    if (json.containsKey("compatibleMetrics")) {
      compatibleMetrics = json["compatibleMetrics"].toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("requiredDimensions")) {
      requiredDimensions = json["requiredDimensions"].toList();
    }
    if (json.containsKey("requiredMetrics")) {
      requiredMetrics = json["requiredMetrics"].toList();
    }
    if (json.containsKey("supportedProducts")) {
      supportedProducts = json["supportedProducts"].toList();
    }
  }

  /** Create JSON Object for ReportingMetadataEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (compatibleDimensions != null) {
      output["compatibleDimensions"] = compatibleDimensions.toList();
    }
    if (compatibleMetrics != null) {
      output["compatibleMetrics"] = compatibleMetrics.toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (requiredDimensions != null) {
      output["requiredDimensions"] = requiredDimensions.toList();
    }
    if (requiredMetrics != null) {
      output["requiredMetrics"] = requiredMetrics.toList();
    }
    if (supportedProducts != null) {
      output["supportedProducts"] = supportedProducts.toList();
    }

    return output;
  }

  /** Return String representation of ReportingMetadataEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedReport {

  /** Unique identifier of this saved report. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#savedReport. */
  core.String kind;

  /** This saved report's name. */
  core.String name;

  /** Create new SavedReport from JSON data */
  SavedReport.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for SavedReport */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of SavedReport */
  core.String toString() => JSON.encode(this.toJson());

}

class SavedReports {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The saved reports returned in this list response. */
  core.List<SavedReport> items;

  /** Kind of list this is, in this case adexchangeseller#savedReports. */
  core.String kind;

  /** Continuation token used to page through saved reports. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new SavedReports from JSON data */
  SavedReports.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SavedReport.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SavedReports */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SavedReports */
  core.String toString() => JSON.encode(this.toJson());

}

class UrlChannel {

  /** Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adexchangeseller#urlChannel. */
  core.String kind;

  /** URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home */
  core.String urlPattern;

  /** Create new UrlChannel from JSON data */
  UrlChannel.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("urlPattern")) {
      urlPattern = json["urlPattern"];
    }
  }

  /** Create JSON Object for UrlChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (urlPattern != null) {
      output["urlPattern"] = urlPattern;
    }

    return output;
  }

  /** Return String representation of UrlChannel */
  core.String toString() => JSON.encode(this.toJson());

}

class UrlChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The URL channels returned in this list response. */
  core.List<UrlChannel> items;

  /** Kind of list this is, in this case adexchangeseller#urlChannels. */
  core.String kind;

  /** Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new UrlChannels from JSON data */
  UrlChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new UrlChannel.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for UrlChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of UrlChannels */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
