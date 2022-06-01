module models.administrations.entities.global_configuration;

@safe:
import models.administrations;

// 
class DADMGlobalConfiguration : DOOPEntity {
  mixin(EntityThis!("ADMGlobalConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "aosInstanceName": StringAttribute, // 
        "settingLevel": StringAttribute, // 
        "value": StringAttribute, // 
      ])
      .registerPath("administration_globalconfigurations");
  }
}
mixin(EntityCalls!("ADMGlobalConfiguration"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(ADMGlobalConfiguration);
  
  auto entity = ADMGlobalConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}