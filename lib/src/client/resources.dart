part of adexchangeseller_v2_0_api;

class AccountsResource_ {

  final Client _client;

  final AccountsAdclientsResource_ adclients;
  final AccountsAlertsResource_ alerts;
  final AccountsCustomchannelsResource_ customchannels;
  final AccountsMetadataResource_ metadata;
  final AccountsPreferreddealsResource_ preferreddeals;
  final AccountsReportsResource_ reports;
  final AccountsUrlchannelsResource_ urlchannels;

  AccountsResource_(Client client) :
      _client = client,
      adclients = new AccountsAdclientsResource_(client),
      alerts = new AccountsAlertsResource_(client),
      customchannels = new AccountsCustomchannelsResource_(client),
      metadata = new AccountsMetadataResource_(client),
      preferreddeals = new AccountsPreferreddealsResource_(client),
      reports = new AccountsReportsResource_(client),
      urlchannels = new AccountsUrlchannelsResource_(client);

  /**
   * Get information about the selected Ad Exchange account.
   *
   * [accountId] - Account to get information about. Tip: 'myaccount' is a valid ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.String accountId, {core.Map optParams}) {
    var url = "accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * List all accounts available to this Ad Exchange account.
   *
   * [maxResults] - The maximum number of accounts to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through accounts. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Accounts> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Accounts.fromJson(data));
  }
}

class AccountsAdclientsResource_ {

  final Client _client;

  AccountsAdclientsResource_(Client client) :
      _client = client;

  /**
   * List all ad clients in this Ad Exchange account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClients> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdClients.fromJson(data));
  }
}

class AccountsAlertsResource_ {

  final Client _client;

  AccountsAlertsResource_(Client client) :
      _client = client;

  /**
   * List the alerts for this Ad Exchange account.
   *
   * [accountId] - Account owning the alerts.
   *
   * [locale] - The locale to use for translating alert messages. The account locale will be used if this is not supplied. The AdSense default (English) will be used if the supplied locale is invalid or unsupported.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Alerts> list(core.String accountId, {core.String locale, core.Map optParams}) {
    var url = "accounts/{accountId}/alerts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (locale != null) queryParams["locale"] = locale;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Alerts.fromJson(data));
  }
}

class AccountsCustomchannelsResource_ {

  final Client _client;

  AccountsCustomchannelsResource_(Client client) :
      _client = client;

  /**
   * Get the specified custom channel from the specified ad client.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> get(core.String accountId, core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }

  /**
   * List all custom channels in the specified ad client for this Ad Exchange account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String accountId, core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannels.fromJson(data));
  }
}

class AccountsMetadataResource_ {

  final Client _client;

  final AccountsMetadataDimensionsResource_ dimensions;
  final AccountsMetadataMetricsResource_ metrics;

  AccountsMetadataResource_(Client client) :
      _client = client,
      dimensions = new AccountsMetadataDimensionsResource_(client),
      metrics = new AccountsMetadataMetricsResource_(client);
}

class AccountsMetadataDimensionsResource_ {

  final Client _client;

  AccountsMetadataDimensionsResource_(Client client) :
      _client = client;

  /**
   * List the metadata for the dimensions available to this AdExchange account.
   *
   * [accountId] - Account with visibility to the dimensions.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Metadata> list(core.String accountId, {core.Map optParams}) {
    var url = "accounts/{accountId}/metadata/dimensions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Metadata.fromJson(data));
  }
}

class AccountsMetadataMetricsResource_ {

  final Client _client;

  AccountsMetadataMetricsResource_(Client client) :
      _client = client;

  /**
   * List the metadata for the metrics available to this AdExchange account.
   *
   * [accountId] - Account with visibility to the metrics.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Metadata> list(core.String accountId, {core.Map optParams}) {
    var url = "accounts/{accountId}/metadata/metrics";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Metadata.fromJson(data));
  }
}

class AccountsPreferreddealsResource_ {

  final Client _client;

  AccountsPreferreddealsResource_(Client client) :
      _client = client;

  /**
   * Get information about the selected Ad Exchange Preferred Deal.
   *
   * [accountId] - Account owning the deal.
   *
   * [dealId] - Preferred deal to get information about.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PreferredDeal> get(core.String accountId, core.String dealId, {core.Map optParams}) {
    var url = "accounts/{accountId}/preferreddeals/{dealId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (dealId == null) paramErrors.add("dealId is required");
    if (dealId != null) urlParams["dealId"] = dealId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PreferredDeal.fromJson(data));
  }

  /**
   * List the preferred deals for this Ad Exchange account.
   *
   * [accountId] - Account owning the deals.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PreferredDeals> list(core.String accountId, {core.Map optParams}) {
    var url = "accounts/{accountId}/preferreddeals";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PreferredDeals.fromJson(data));
  }
}

class AccountsReportsResource_ {

  final Client _client;

  final AccountsReportsSavedResource_ saved;

  AccountsReportsResource_(Client client) :
      _client = client,
      saved = new AccountsReportsSavedResource_(client);

  /**
   * Generate an Ad Exchange report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [accountId] - Account which owns the generated report.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *   Repeated values: allowed
   *
   * [filter] - Filters to be run on the report.
   *   Repeated values: allowed
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *   Repeated values: allowed
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *   Repeated values: allowed
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> generate(core.String accountId, core.String startDate, core.String endDate, {core.List<core.String> dimension, core.List<core.String> filter, core.String locale, core.int maxResults, core.List<core.String> metric, core.List<core.String> sort, core.int startIndex, core.Map optParams}) {
    var url = "accounts/{accountId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }
}

class AccountsReportsSavedResource_ {

  final Client _client;

  AccountsReportsSavedResource_(Client client) :
      _client = client;

  /**
   * Generate an Ad Exchange report based on the saved report ID sent in the query parameters.
   *
   * [accountId] - Account owning the saved report.
   *
   * [savedReportId] - The saved report to retrieve.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> generate(core.String accountId, core.String savedReportId, {core.String locale, core.int maxResults, core.int startIndex, core.Map optParams}) {
    var url = "accounts/{accountId}/reports/{savedReportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (savedReportId == null) paramErrors.add("savedReportId is required");
    if (savedReportId != null) urlParams["savedReportId"] = savedReportId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * List all saved reports in this Ad Exchange account.
   *
   * [accountId] - Account owning the saved reports.
   *
   * [maxResults] - The maximum number of saved reports to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - A continuation token, used to page through saved reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SavedReports> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/reports/saved";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SavedReports.fromJson(data));
  }
}

class AccountsUrlchannelsResource_ {

  final Client _client;

  AccountsUrlchannelsResource_(Client client) :
      _client = client;

  /**
   * List all URL channels in the specified ad client for this Ad Exchange account.
   *
   * [accountId] - Account to which the ad client belongs.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannels> list(core.String accountId, core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/urlchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlChannels.fromJson(data));
  }
}

