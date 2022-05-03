module models.administrations.entities.users.user;

@safe:
import models.administrations;

// 
class DADMUser : DOOPEntity {
  mixin(EntityThis!("ADMUser"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DefaultCountryRegion": StringAttributeClass, // 
        "DocumentHandlingActive": StringAttributeClass, // 
        "ShowAttachmentStatus": StringAttributeClass, // 
        "Email": StringAttributeClass, // 
        "SendAlertAsEmailMessage": StringAttributeClass, // 
        "EventPollFrequency": StringAttributeClass, // 
        "EventPopUpDisplayWhen": StringAttributeClass, // 
        "EventPopUpLinkDestination": StringAttributeClass, // 
        "EventPopUps": StringAttributeClass, // 
        "EventWorkflowShowPopup": StringAttributeClass, // 
        "ShowNotificationsInTheMicrosoftDynamicsAX7Client": StringAttributeClass, // 
        "SendNotificationsInEmail": StringAttributeClass, // 
        "MarkEmptyLinks": StringAttributeClass, // 
        "UserID": StringAttributeClass, // 
        "Language": StringAttributeClass, // 
        "SqmEnabled": StringAttributeClass, // 
        "SqmGUID": StringAttributeClass, // 
        "WorkflowLineItemNotificationFormat": StringAttributeClass, // 
        "Density": StringAttributeClass, // 
        "Theme": StringAttributeClass, // 
        "StartPage": StringAttributeClass, // 
        "EmailProviderID": StringAttributeClass, // 
        "UserName": StringAttributeClass, // 
        "Enabled": StringAttributeClass, // 
        "Company": StringAttributeClass, // 
        "AutoLogOff": StringAttributeClass, // 
        "SecurityIdentifier": StringAttributeClass, // 
        "NetworkDomain": StringAttributeClass, // 
        "Alias": StringAttributeClass, // 
        "ExternalUser": StringAttributeClass, // 
        "UserInfo_language": StringAttributeClass, // 
        "Helplanguage": StringAttributeClass, // 
        "PreferredTimeZone": StringAttributeClass, // 
        "PreferredCalendar": StringAttributeClass, // 
        "HomePageRefreshDuration": StringAttributeClass, // 
        "GlobalListPageLinkMode": StringAttributeClass, // 
        "GlobalExcelExportMode": StringAttributeClass, // 
        "UserInfo_defaultPartition": StringAttributeClass, // 
        "GlobalExcelExportFilePath": StringAttributeClass, // 
        "PreferredLocale": StringAttributeClass, // 
        "AccountType": StringAttributeClass, // 
        "PersonName": StringAttributeClass, // 
        "AutomaticUrlUpdate": StringAttributeClass, // 
        "UserObjectId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_users");
  }
}
mixin(EntityCalls!("ADMUser"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMUser);
  
  auto entity = ADMUser;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}