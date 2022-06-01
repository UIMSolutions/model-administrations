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
        "DefaultCountryRegion": StringAttribute, // 
        "DocumentHandlingActive": StringAttribute, // 
        "ShowAttachmentStatus": StringAttribute, // 
        "Email": StringAttribute, // 
        "SendAlertAsEmailMessage": StringAttribute, // 
        "EventPollFrequency": StringAttribute, // 
        "EventPopUpDisplayWhen": StringAttribute, // 
        "EventPopUpLinkDestination": StringAttribute, // 
        "EventPopUps": StringAttribute, // 
        "EventWorkflowShowPopup": StringAttribute, // 
        "ShowNotificationsInTheMicrosoftDynamicsAX7Client": StringAttribute, // 
        "SendNotificationsInEmail": StringAttribute, // 
        "MarkEmptyLinks": StringAttribute, // 
        "UserID": StringAttribute, // 
        "Language": StringAttribute, // 
        "SqmEnabled": StringAttribute, // 
        "SqmGUID": StringAttribute, // 
        "WorkflowLineItemNotificationFormat": StringAttribute, // 
        "Density": StringAttribute, // 
        "Theme": StringAttribute, // 
        "StartPage": StringAttribute, // 
        "EmailProviderID": StringAttribute, // 
        "UserName": StringAttribute, // 
        "Enabled": StringAttribute, // 
        "Company": StringAttribute, // 
        "AutoLogOff": StringAttribute, // 
        "SecurityIdentifier": StringAttribute, // 
        "NetworkDomain": StringAttribute, // 
        "Alias": StringAttribute, // 
        "ExternalUser": StringAttribute, // 
        "UserInfo_language": StringAttribute, // 
        "Helplanguage": StringAttribute, // 
        "PreferredTimeZone": StringAttribute, // 
        "PreferredCalendar": StringAttribute, // 
        "HomePageRefreshDuration": StringAttribute, // 
        "GlobalListPageLinkMode": StringAttribute, // 
        "GlobalExcelExportMode": StringAttribute, // 
        "UserInfo_defaultPartition": StringAttribute, // 
        "GlobalExcelExportFilePath": StringAttribute, // 
        "PreferredLocale": StringAttribute, // 
        "AccountType": StringAttribute, // 
        "PersonName": StringAttribute, // 
        "AutomaticUrlUpdate": StringAttribute, // 
        "UserObjectId": UUIDAttribute, // 
      ])
      .registerPath("administration_users");
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