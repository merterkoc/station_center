///config header for open charge map api

const String OPEN_CHARGE_MAP_API_KEY = '<key>';

const String OPEN_CHARGE_MAP_API_URL = 'api.openchargemap.io';

const String OPEN_CHARGE_MAP_API_POI = 'v3/poi';

const String OPEN_CHARGE_USER_AGENT = 'statio_center/0.0.1';

const OPEN_CHARGE_HEADER = {
  'X-API-Key': OPEN_CHARGE_MAP_API_KEY,
  'User-Agent': OPEN_CHARGE_USER_AGENT
};

const OPEN_CHARGE_OPTIONS = {
  'countrycode': 'TR',
  'maxresults': '3000',
};
