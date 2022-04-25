module models.administrations.entities.email_parameters;

@safe:
import models.administrations;

// 
class DADMEmailParameters : DOOPEntity {
  mixin(EntityThis!("ADMEmailParameters"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "MaximumEmailAttachmentSize": OOPAttributeString.descriptions(["en":""]),
        "SMTPUseNTLM": OOPAttributeString.descriptions(["en":""]),
        "SMTPPortNumber": OOPAttributeString.descriptions(["en":""]),
        "SMTPRelayServerName": OOPAttributeString.descriptions(["en":""]),
        "SMTPUserName": OOPAttributeString.descriptions(["en":""]),
        "SMTPRequireSSL": OOPAttributeString.descriptions(["en":""]),
        "MailerNonInteractive": OOPAttributeString.descriptions(["en":""]),
        "MailerInteractiveEnabled": OOPAttributeString.descriptions(["en":""]),
        "BackingTable_SysEmailParametersRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_emailparameters");
  }
}
mixin(EntityCalls!("ADMEmailParameters"));

unittest {
  version(uim_entities) {
    assert(ADMEmailParameters);
  
  auto entity = ADMEmailParameters;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}