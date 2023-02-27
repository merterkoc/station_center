class OpenChargeModel {
  DataProvider? dataProvider;
  OperatorInfo? operatorInfo;
  UsageType? usageType;
  StatusType? statusType;
  SubmissionStatus? submissionStatus;
  String? percentageSimilarity;
  List<MediaItems?>? mediaItems;
  bool? isRecentlyVerified;
  String? dateLastVerified;
  int? iD;
  String? uUID;
  int? dataProviderID;
  String? dataProvidersReference;
  int? operatorID;
  int? usageTypeID;
  String? usageCost;
  AddressInfo? addressInfo;
  List<Connections>? connections;
  int? numberOfPoints;
  String? datePlanned;
  String? dateLastConfirmed;
  int? statusTypeID;
  String? dateLastStatusUpdate;
  int? dataQualityLevel;
  String? dateCreated;
  int? submissionStatusTypeID;

  OpenChargeModel(
      {this.dataProvider,
      this.operatorInfo,
      this.usageType,
      this.statusType,
      this.submissionStatus,
      this.percentageSimilarity,
      this.mediaItems,
      this.isRecentlyVerified,
      this.dateLastVerified,
      this.iD,
      this.uUID,
      this.dataProviderID,
      this.dataProvidersReference,
      this.operatorID,
      this.usageTypeID,
      this.usageCost,
      this.addressInfo,
      this.connections,
      this.numberOfPoints,
      this.datePlanned,
      this.dateLastConfirmed,
      this.statusTypeID,
      this.dateLastStatusUpdate,
      this.dataQualityLevel,
      this.dateCreated,
      this.submissionStatusTypeID});

  OpenChargeModel.fromJson(Map<String, dynamic> json) {
    dataProvider = json['DataProvider'] != null
        ? DataProvider.fromJson(json['DataProvider'] as Map<String, dynamic>)
        : null;
    operatorInfo = json['OperatorInfo'] != null
        ? OperatorInfo.fromJson(json['OperatorInfo'] as Map<String, dynamic>)
        : null;
    usageType = json['UsageType'] != null
        ? UsageType.fromJson(json['UsageType'] as Map<String, dynamic>)
        : null;
    statusType = json['StatusType'] != null
        ? StatusType.fromJson(json['StatusType'] as Map<String, dynamic>)
        : null;
    submissionStatus = json['SubmissionStatus'] != null
        ? SubmissionStatus.fromJson(
            json['SubmissionStatus'] as Map<String, dynamic>)
        : null;
    percentageSimilarity = json['PercentageSimilarity'] as String?;
    mediaItems = json['MediaItems'] != null
        ? (json['MediaItems'] as List)
            .map((i) => MediaItems.fromJson(i as Map<String, dynamic>))
            .toList()
        : null;
    isRecentlyVerified = json['IsRecentlyVerified'] as bool?;
    dateLastVerified = json['DateLastVerified'] as String?;
    iD = json['ID'] as int?;
    uUID = json['UUID'] as String?;
    dataProviderID = json['DataProviderID'] as int?;
    dataProvidersReference = json['DataProvidersReference'] as String?;
    operatorID = json['OperatorID'] as int?;
    usageTypeID = json['UsageTypeID'] as int?;
    usageCost = json['UsageCost'] as String?;
    addressInfo = json['AddressInfo'] != null
        ? AddressInfo.fromJson(json['AddressInfo'] as Map<String, dynamic>)
        : null;
    if (json['Connections'] != null) {
      connections = <Connections>[];
      json['Connections'].forEach((v) {
        connections!.add(Connections.fromJson(v as Map<String, dynamic>));
      });
    }
    numberOfPoints = json['NumberOfPoints'] as int?;
    datePlanned = json['DatePlanned'] as String?;
    dateLastConfirmed = json['DateLastConfirmed'] as String?;
    statusTypeID = json['StatusTypeID'] as int?;
    dateLastStatusUpdate = json['DateLastStatusUpdate'] as String?;
    dataQualityLevel = json['DataQualityLevel'] as int?;
    dateCreated = json['DateCreated'] as String?;
    submissionStatusTypeID = json['SubmissionStatusTypeID'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.dataProvider != null) {
      data['DataProvider'] = this.dataProvider!.toJson();
    }
    if (this.operatorInfo != null) {
      data['OperatorInfo'] = this.operatorInfo!.toJson();
    }
    if (this.usageType != null) {
      data['UsageType'] = this.usageType!.toJson();
    }
    if (this.statusType != null) {
      data['StatusType'] = this.statusType!.toJson();
    }
    if (this.submissionStatus != null) {
      data['SubmissionStatus'] = this.submissionStatus!.toJson();
    }
    data['PercentageSimilarity'] = this.percentageSimilarity;
    data['MediaItems'] = this.mediaItems;
    data['IsRecentlyVerified'] = this.isRecentlyVerified;
    data['DateLastVerified'] = this.dateLastVerified;
    data['ID'] = this.iD;
    data['UUID'] = this.uUID;
    data['DataProviderID'] = this.dataProviderID;
    data['DataProvidersReference'] = this.dataProvidersReference;
    data['OperatorID'] = this.operatorID;
    data['UsageTypeID'] = this.usageTypeID;
    data['UsageCost'] = this.usageCost;
    if (this.addressInfo != null) {
      data['AddressInfo'] = this.addressInfo!.toJson();
    }
    if (this.connections != null) {
      data['Connections'] = this.connections!.map((v) => v.toJson()).toList();
    }
    data['NumberOfPoints'] = this.numberOfPoints;
    data['DatePlanned'] = this.datePlanned;
    data['DateLastConfirmed'] = this.dateLastConfirmed;
    data['StatusTypeID'] = this.statusTypeID;
    data['DateLastStatusUpdate'] = this.dateLastStatusUpdate;
    data['DataQualityLevel'] = this.dataQualityLevel;
    data['DateCreated'] = this.dateCreated;
    data['SubmissionStatusTypeID'] = this.submissionStatusTypeID;
    return data;
  }
}

class DataProvider {
  String? websiteURL;
  DataProviderStatusType? dataProviderStatusType;
  bool? isRestrictedEdit;
  bool? isOpenDataLicensed;
  bool? isApprovedImport;
  String? license;
  int? iD;
  String? title;

  DataProvider(
      {this.websiteURL,
      this.dataProviderStatusType,
      this.isRestrictedEdit,
      this.isOpenDataLicensed,
      this.isApprovedImport,
      this.license,
      this.iD,
      this.title});

  DataProvider.fromJson(Map<String, dynamic> json) {
    websiteURL = json['WebsiteURL'] as String?;
    dataProviderStatusType = json['DataProviderStatusType'] != null
        ? DataProviderStatusType.fromJson(
            json['DataProviderStatusType'] as Map<String, dynamic>)
        : null;
    isRestrictedEdit = json['IsRestrictedEdit'] as bool?;
    isOpenDataLicensed = json['IsOpenDataLicensed'] as bool?;
    isApprovedImport = json['IsApprovedImport'] as bool?;
    license = json['License'] as String?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['WebsiteURL'] = this.websiteURL;
    if (this.dataProviderStatusType != null) {
      data['DataProviderStatusType'] = this.dataProviderStatusType!.toJson();
    }
    data['IsRestrictedEdit'] = this.isRestrictedEdit;
    data['IsOpenDataLicensed'] = this.isOpenDataLicensed;
    data['IsApprovedImport'] = this.isApprovedImport;
    data['License'] = this.license;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class DataProviderStatusType {
  bool? isProviderEnabled;
  int? iD;
  String? title;

  DataProviderStatusType({this.isProviderEnabled, this.iD, this.title});

  DataProviderStatusType.fromJson(Map<String, dynamic> json) {
    isProviderEnabled = json['IsProviderEnabled'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['IsProviderEnabled'] = this.isProviderEnabled;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class OperatorInfo {
  String? websiteURL;
  String? phonePrimaryContact;
  String? phoneSecondaryContact;
  bool? isPrivateIndividual;
  String? addressInfo;
  String? bookingURL;
  String? contactEmail;
  String? faultReportEmail;
  bool? isRestrictedEdit;
  int? iD;
  String? title;

  OperatorInfo(
      {this.websiteURL,
      this.phonePrimaryContact,
      this.phoneSecondaryContact,
      this.isPrivateIndividual,
      this.addressInfo,
      this.bookingURL,
      this.contactEmail,
      this.faultReportEmail,
      this.isRestrictedEdit,
      this.iD,
      this.title});

  OperatorInfo.fromJson(Map<String, dynamic> json) {
    websiteURL = json['WebsiteURL'] as String?;
    phonePrimaryContact = json['PhonePrimaryContact'] as String?;
    phoneSecondaryContact = json['PhoneSecondaryContact'] as String?;
    isPrivateIndividual = json['IsPrivateIndividual'] as bool?;
    addressInfo = json['AddressInfo'] as String?;
    bookingURL = json['BookingURL'] as String?;
    contactEmail = json['ContactEmail'] as String?;
    faultReportEmail = json['FaultReportEmail'] as String?;
    isRestrictedEdit = json['IsRestrictedEdit'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['WebsiteURL'] = this.websiteURL;
    data['PhonePrimaryContact'] = this.phonePrimaryContact;
    data['PhoneSecondaryContact'] = this.phoneSecondaryContact;
    data['IsPrivateIndividual'] = this.isPrivateIndividual;
    data['AddressInfo'] = this.addressInfo;
    data['BookingURL'] = this.bookingURL;
    data['ContactEmail'] = this.contactEmail;
    data['FaultReportEmail'] = this.faultReportEmail;
    data['IsRestrictedEdit'] = this.isRestrictedEdit;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class UsageType {
  bool? isPayAtLocation;
  bool? isMembershipRequired;
  bool? isAccessKeyRequired;
  int? iD;
  String? title;

  UsageType(
      {this.isPayAtLocation,
      this.isMembershipRequired,
      this.isAccessKeyRequired,
      this.iD,
      this.title});

  UsageType.fromJson(Map<String, dynamic> json) {
    isPayAtLocation = json['IsPayAtLocation'] as bool?;
    isMembershipRequired = json['IsMembershipRequired'] as bool?;
    isAccessKeyRequired = json['IsAccessKeyRequired'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['IsPayAtLocation'] = this.isPayAtLocation;
    data['IsMembershipRequired'] = this.isMembershipRequired;
    data['IsAccessKeyRequired'] = this.isAccessKeyRequired;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class StatusType {
  bool? isOperational;
  bool? isUserSelectable;
  int? iD;
  String? title;

  StatusType({this.isOperational, this.isUserSelectable, this.iD, this.title});

  StatusType.fromJson(Map<String, dynamic> json) {
    isOperational = json['IsOperational'] as bool?;
    isUserSelectable = json['IsUserSelectable'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['IsOperational'] = this.isOperational;
    data['IsUserSelectable'] = this.isUserSelectable;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class SubmissionStatus {
  bool? isLive;
  int? iD;
  String? title;

  SubmissionStatus({this.isLive, this.iD, this.title});

  SubmissionStatus.fromJson(Map<String, dynamic> json) {
    isLive = json['IsLive'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['IsLive'] = this.isLive;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class AddressInfo {
  int? iD;
  String? title;
  String? addressLine1;
  String? addressLine2;
  String? town;
  String? stateOrProvince;
  String? postcode;
  int? countryID;
  Country? country;
  double? latitude;
  double? longitude;
  String? contactTelephone1;
  String? contactTelephone2;
  String? contactEmail;
  String? accessComments;
  String? relatedURL;
  num? distance;
  int? distanceUnit;

  AddressInfo(
      {this.iD,
      this.title,
      this.addressLine1,
      this.addressLine2,
      this.town,
      this.stateOrProvince,
      this.postcode,
      this.countryID,
      this.country,
      this.latitude,
      this.longitude,
      this.contactTelephone1,
      this.contactTelephone2,
      this.contactEmail,
      this.accessComments,
      this.relatedURL,
      this.distance,
      this.distanceUnit});

  AddressInfo.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
    addressLine1 = json['AddressLine1'] as String?;
    addressLine2 =
        json['AddressLine2'] != null ? json['AddressLine2'].toString() : null;
    town = json['Town'] as String?;
    stateOrProvince = json['StateOrProvince'] as String?;
    postcode = json['Postcode'] as String?;
    countryID = json['CountryID'] as int?;
    country = json['Country'] != null
        ? Country.fromJson(json['Country'] as Map<String, dynamic>)
        : null;
    latitude = json['Latitude'] as double?;
    longitude = json['Longitude'] as double?;
    contactTelephone1 = json['ContactTelephone1'] as String?;
    contactTelephone2 = json['ContactTelephone2'] as String?;
    contactEmail = json['ContactEmail'] as String?;
    accessComments = json['AccessComments'] as String?;
    relatedURL = json['RelatedURL'] as String?;
    distance = json['Distance'] as num?;
    distanceUnit = json['DistanceUnit'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Title'] = this.title;
    data['AddressLine1'] = this.addressLine1;
    data['AddressLine2'] = this.addressLine2;
    data['Town'] = this.town;
    data['StateOrProvince'] = this.stateOrProvince;
    data['Postcode'] = this.postcode;
    data['CountryID'] = this.countryID;
    if (this.country != null) {
      data['Country'] = this.country!.toJson();
    }
    data['Latitude'] = this.latitude;
    data['Longitude'] = this.longitude;
    data['ContactTelephone1'] = this.contactTelephone1;
    data['ContactTelephone2'] = this.contactTelephone2;
    data['ContactEmail'] = this.contactEmail;
    data['AccessComments'] = this.accessComments;
    data['RelatedURL'] = this.relatedURL;
    data['Distance'] = this.distance;
    data['DistanceUnit'] = this.distanceUnit;
    return data;
  }
}

class Country {
  String? iSOCode;
  String? continentCode;
  int? iD;
  String? title;

  Country({this.iSOCode, this.continentCode, this.iD, this.title});

  Country.fromJson(Map<String, dynamic> json) {
    iSOCode = json['ISOCode'] as String?;
    continentCode = json['ContinentCode'] as String?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ISOCode'] = this.iSOCode;
    data['ContinentCode'] = this.continentCode;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class Connections {
  int? iD;
  int? connectionTypeID;
  ConnectionType? connectionType;
  String? reference;
  int? statusTypeID;
  StatusType? statusType;
  int? levelID;
  Level? level;
  int? amps;
  int? voltage;
  double? powerKW;
  int? currentTypeID;
  CurrentType? currentType;
  int? quantity;
  String? comments;

  Connections(
      {this.iD,
      this.connectionTypeID,
      this.connectionType,
      this.reference,
      this.statusTypeID,
      this.statusType,
      this.levelID,
      this.level,
      this.amps,
      this.voltage,
      this.powerKW,
      this.currentTypeID,
      this.currentType,
      this.quantity,
      this.comments});

  Connections.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] as int?;
    connectionTypeID = json['ConnectionTypeID'] as int?;
    connectionType = json['ConnectionType'] != null
        ? ConnectionType.fromJson(
            json['ConnectionType'] as Map<String, dynamic>)
        : null;
    reference = json['Reference'] as String?;
    statusTypeID = json['StatusTypeID'] as int?;
    statusType = json['StatusType'] != null
        ? StatusType.fromJson(json['StatusType'] as Map<String, dynamic>)
        : null;
    levelID = json['LevelID'] as int?;
    level = json['Level'] != null
        ? Level.fromJson(json['Level'] as Map<String, dynamic>)
        : null;
    amps = json['Amps'] as int?;
    voltage = json['Voltage'] as int?;
    powerKW = json['PowerKW'] as double?;
    currentTypeID = json['CurrentTypeID'] as int?;
    currentType = json['CurrentType'] != null
        ? CurrentType.fromJson(json['CurrentType'] as Map<String, dynamic>)
        : null;
    quantity = json['Quantity'] as int?;
    comments = json['Comments'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ID'] = this.iD;
    data['ConnectionTypeID'] = this.connectionTypeID;
    if (this.connectionType != null) {
      data['ConnectionType'] = this.connectionType!.toJson();
    }
    data['Reference'] = this.reference;
    data['StatusTypeID'] = this.statusTypeID;
    if (this.statusType != null) {
      data['StatusType'] = this.statusType!.toJson();
    }
    data['LevelID'] = this.levelID;
    if (this.level != null) {
      data['Level'] = this.level!.toJson();
    }
    data['Amps'] = this.amps;
    data['Voltage'] = this.voltage;
    data['PowerKW'] = this.powerKW;
    data['CurrentTypeID'] = this.currentTypeID;
    if (this.currentType != null) {
      data['CurrentType'] = this.currentType!.toJson();
    }
    data['Quantity'] = this.quantity;
    data['Comments'] = this.comments;
    return data;
  }
}

class ConnectionType {
  String? formalName;
  bool? isDiscontinued;
  bool? isObsolete;
  int? iD;
  String? title;

  ConnectionType(
      {this.formalName,
      this.isDiscontinued,
      this.isObsolete,
      this.iD,
      this.title});

  ConnectionType.fromJson(Map<String, dynamic> json) {
    formalName = json['FormalName'] as String?;
    isDiscontinued = json['IsDiscontinued'] as bool?;
    isObsolete = json['IsObsolete'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['FormalName'] = this.formalName;
    data['IsDiscontinued'] = this.isDiscontinued;
    data['IsObsolete'] = this.isObsolete;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class Level {
  String? comments;
  bool? isFastChargeCapable;
  int? iD;
  String? title;

  Level({this.comments, this.isFastChargeCapable, this.iD, this.title});

  Level.fromJson(Map<String, dynamic> json) {
    comments = json['Comments'] as String?;
    isFastChargeCapable = json['IsFastChargeCapable'] as bool?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Comments'] = this.comments;
    data['IsFastChargeCapable'] = this.isFastChargeCapable;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class CurrentType {
  String? description;
  int? iD;
  String? title;

  CurrentType({this.description, this.iD, this.title});

  CurrentType.fromJson(Map<String, dynamic> json) {
    description = json['Description'] as String?;
    iD = json['ID'] as int?;
    title = json['Title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Description'] = this.description;
    data['ID'] = this.iD;
    data['Title'] = this.title;
    return data;
  }
}

class MediaItems {
  int? iD;
  int? chargePointID;
  String? itemURL;
  String? itemThumbnailURL;
  String? comment;
  bool? isEnabled;
  bool? isVideo;
  bool? isFeaturedItem;
  bool? isExternalResource;
  String? dateCreated;

  MediaItems(
      {this.iD,
      this.chargePointID,
      this.itemURL,
      this.itemThumbnailURL,
      this.comment,
      this.isEnabled,
      this.isVideo,
      this.isFeaturedItem,
      this.isExternalResource,
      this.dateCreated});

  MediaItems.fromJson(Map<String, dynamic> json) {
    iD = json['ID'] as int?;
    chargePointID = json['ChargePointID'] as int?;
    itemURL = json['ItemURL'] as String?;
    itemThumbnailURL = json['ItemThumbnailURL'] as String?;
    comment = json['Comment'] as String?;
    isEnabled = json['IsEnabled'] as bool?;
    isVideo = json['IsVideo'] as bool?;
    isFeaturedItem = json['IsFeaturedItem'] as bool?;
    isExternalResource = json['IsExternalResource'] as bool?;
    dateCreated = json['DateCreated'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['ChargePointID'] = this.chargePointID;
    data['ItemURL'] = this.itemURL;
    data['ItemThumbnailURL'] = this.itemThumbnailURL;
    data['Comment'] = this.comment;
    data['IsEnabled'] = this.isEnabled;
    data['IsVideo'] = this.isVideo;
    data['IsFeaturedItem'] = this.isFeaturedItem;
    data['IsExternalResource'] = this.isExternalResource;
    data['DateCreated'] = this.dateCreated;
    return data;
  }
}
