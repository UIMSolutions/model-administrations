module models.administrations.entities.users.user;

@safe:
import models.administrations;

// 
class DADMUser : DOOPEntity {
  this() { super();
    this.attributes([
      "DefaultCountryRegion": OOPAttributeString.descriptions(["en":""]),
      "DocumentHandlingActive": OOPAttributeString.descriptions(["en":""]),
      "ShowAttachmentStatus": OOPAttributeString.descriptions(["en":""]),
      "Email": OOPAttributeString.descriptions(["en":""]),
      "SendAlertAsEmailMessage": OOPAttributeString.descriptions(["en":""]),
      "EventPollFrequency": OOPAttributeString.descriptions(["en":""]),
      "EventPopUpDisplayWhen": OOPAttributeString.descriptions(["en":""]),
      "EventPopUpLinkDestination": OOPAttributeString.descriptions(["en":""]),
      "EventPopUps": OOPAttributeString.descriptions(["en":""]),
      "EventWorkflowShowPopup": OOPAttributeString.descriptions(["en":""]),
      "ShowNotificationsInTheMicrosoftDynamicsAX7Client": OOPAttributeString.descriptions(["en":""]),
      "SendNotificationsInEmail": OOPAttributeString.descriptions(["en":""]),
      "MarkEmptyLinks": OOPAttributeString.descriptions(["en":""]),
      "UserID": OOPAttributeString.descriptions(["en":""]),
      "Language": OOPAttributeString.descriptions(["en":""]),
      "SqmEnabled": OOPAttributeString.descriptions(["en":""]),
      "SqmGUID": OOPAttributeString.descriptions(["en":""]),
      "WorkflowLineItemNotificationFormat": OOPAttributeString.descriptions(["en":""]),
      "Density": OOPAttributeString.descriptions(["en":""]),
      "Theme": OOPAttributeString.descriptions(["en":""]),
      "StartPage": OOPAttributeString.descriptions(["en":""]),
      "EmailProviderID": OOPAttributeString.descriptions(["en":""]),
      "UserName": OOPAttributeString.descriptions(["en":""]),
      "Enabled": OOPAttributeString.descriptions(["en":""]),
      "Company": OOPAttributeString.descriptions(["en":""]),
      "AutoLogOff": OOPAttributeString.descriptions(["en":""]),
      "SecurityIdentifier": OOPAttributeString.descriptions(["en":""]),
      "NetworkDomain": OOPAttributeString.descriptions(["en":""]),
      "Alias": OOPAttributeString.descriptions(["en":""]),
      "ExternalUser": OOPAttributeString.descriptions(["en":""]),
      "UserInfo_language": OOPAttributeString.descriptions(["en":""]),
      "Helplanguage": OOPAttributeString.descriptions(["en":""]),
      "PreferredTimeZone": OOPAttributeString.descriptions(["en":""]),
      "PreferredCalendar": OOPAttributeString.descriptions(["en":""]),
      "HomePageRefreshDuration": OOPAttributeString.descriptions(["en":""]),
      "GlobalListPageLinkMode": OOPAttributeString.descriptions(["en":""]),
      "GlobalExcelExportMode": OOPAttributeString.descriptions(["en":""]),
      "UserInfo_defaultPartition": OOPAttributeString.descriptions(["en":""]),
      "GlobalExcelExportFilePath": OOPAttributeString.descriptions(["en":""]),
      "PreferredLocale": OOPAttributeString.descriptions(["en":""]),
      "AccountType": OOPAttributeString.descriptions(["en":""]),
      "PersonName": OOPAttributeString.descriptions(["en":""]),
      "AutomaticUrlUpdate": OOPAttributeString.descriptions(["en":""]),
      "UserObjectId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMUser"; }
  override string entityClasses() { return "aDMUsers"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMUser() { return new DADMUser; } 
auto ADMUser(Json json) { return new DADMUser(json); } 

unittest {
  version(uim_entities) {
    assert(ADMUser);
  
  auto entity = ADMUser;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}