module models.administrations.entities.systems.users.user;

@safe:
import models.administrations;

// 
class DSystemUserEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "defaultCountryRegion": StringAttribute, // 
        "documentHandlingActive": StringAttribute, // 
        "showAttachmentStatus": StringAttribute, // 
        "email": StringAttribute, // 
        "sendAlertAsEmailMessage": StringAttribute, // 
        "eventPollFrequency": StringAttribute, // 
        "eventPopUpDisplayWhen": StringAttribute, // 
        "eventPopUpLinkDestination": StringAttribute, // 
        "eventPopUps": StringAttribute, // 
        "eventWorkflowShowPopup": StringAttribute, // 
        "showNotificationsInTheMicrosoftDynamicsAX7Client": StringAttribute, // 
        "sendNotificationsInEmail": StringAttribute, // 
        "markEmptyLinks": StringAttribute, // 
        "userID": StringAttribute, // 
        "language": StringAttribute, // 
        "sqmEnabled": StringAttribute, // 
        "sqmGUID": StringAttribute, // 
        "workflowLineItemNotificationFormat": StringAttribute, // 
        "density": StringAttribute, // 
        "theme": StringAttribute, // 
        "startPage": StringAttribute, // 
        "emailProviderID": StringAttribute, // 
        "userName": StringAttribute, // 
        "enabled": StringAttribute, // 
        "company": StringAttribute, // 
        "autoLogOff": StringAttribute, // 
        "securityIdentifier": StringAttribute, // 
        "networkDomain": StringAttribute, // 
        "alias": StringAttribute, // 
        "externalUser": StringAttribute, // 
        "userInfo_language": StringAttribute, // 
        "helplanguage": StringAttribute, // 
        "preferredTimeZone": StringAttribute, // 
        "preferredCalendar": StringAttribute, // 
        "homePageRefreshDuration": StringAttribute, // 
        "globalListPageLinkMode": StringAttribute, // 
        "globalExcelExportMode": StringAttribute, // 
        "userInfo_defaultPartition": StringAttribute, // 
        "globalExcelExportFilePath": StringAttribute, // 
        "preferredLocale": StringAttribute, // 
        "accountType": StringAttribute, // 
        "personName": StringAttribute, // 
        "automaticUrlUpdate": StringAttribute, // 
        "userObjectId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.users");
  }
}
mixin(EntityCalls!("SystemUserEntity"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(SystemUserEntity);
  
  auto entity = SystemUserEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}