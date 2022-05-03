module models.administrations.entities.email_parameters;

@safe:
import models.administrations;

// 
class DADMEmailParameters : DOOPEntity {
  mixin(EntityThis!("ADMEmailParameters"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "MaximumEmailAttachmentSize": StringAttributeClass, // 
        "SMTPUseNTLM": StringAttributeClass, // 
        "SMTPPortNumber": StringAttributeClass, // 
        "SMTPRelayServerName": StringAttributeClass, // 
        "SMTPUserName": StringAttributeClass, // 
        "SMTPRequireSSL": StringAttributeClass, // 
        "MailerNonInteractive": StringAttributeClass, // 
        "MailerInteractiveEnabled": StringAttributeClass, // 
        "BackingTable_SysEmailParametersRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_emailparameters");
  }
}
mixin(EntityCalls!("ADMEmailParameters"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMEmailParameters);
  
  auto entity = ADMEmailParameters;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}