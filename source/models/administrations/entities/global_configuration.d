module models.administrations.entities.global_configuration;

@safe:
import models.administrations;

// 
class DADMGlobalConfiguration : DOOPEntity {
  mixin(OOPEntityThis!("ADMGlobalConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "aosInstanceName": OOPAttributeString.descriptions(["en":""]),
        "settingLevel": OOPAttributeString.descriptions(["en":""]),
        "value": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_globalconfigurations");
  }
}
mixin(OOPEntityCalls!("ADMGlobalConfiguration"));

unittest {
  version(uim_entities) {
    assert(ADMGlobalConfiguration);
  
  auto entity = ADMGlobalConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}