module models.administrations.entities.systems.emailparameter;

@safe:
import models.administrations;

// 
class DSystemEmailParameterEntity : DOOPEntity {
  mixin(EntityThis!("SystemEmailParameterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "maximumEmailAttachmentSize": StringAttribute, // 
        "smtpUseNTLM": StringAttribute, // 
        "smtpPortNumber": StringAttribute, // 
        "smtpRelayServerName": StringAttribute, // 
        "smtpUserName": StringAttribute, // 
        "smtpRequireSSL": StringAttribute, // 
        "mailerNonInteractive": StringAttribute, // 
        "mailerInteractiveEnabled": StringAttribute, // 
        "backingTable_SysEmailParametersRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.emailparameters");
  }
}
mixin(EntityCalls!("SystemEmailParameterEntity"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(SystemEmailParameterEntity);
  
  auto entity = SystemEmailParameterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}