module models.administrations.entities.email_parameters;

@safe:
import models.administrations;

// 
class DADMEmailParameters : DOOPEntity {
  this() { super();
    this.attributes([
      "MaximumEmailAttachmentSize": OOPAttributeString.descriptions(["en":""]),
      "SMTPUseNTLM": OOPAttributeString.descriptions(["en":""]),
      "SMTPPortNumber": OOPAttributeString.descriptions(["en":""]),
      "SMTPRelayServerName": OOPAttributeString.descriptions(["en":""]),
      "SMTPUserName": OOPAttributeString.descriptions(["en":""]),
      "SMTPRequireSSL": OOPAttributeString.descriptions(["en":""]),
      "MailerNonInteractive": OOPAttributeString.descriptions(["en":""]),
      "MailerInteractiveEnabled": OOPAttributeString.descriptions(["en":""]),
      "BackingTable_SysEmailParametersRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMEmailParameters"; }
  override string entityClasses() { return "aDMEmailParameterss"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMEmailParameters() { return new DADMEmailParameters; } 
auto ADMEmailParameters(Json json) { return new DADMEmailParameters(json); } 

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