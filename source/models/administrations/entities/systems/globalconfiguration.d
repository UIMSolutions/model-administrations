module models.administrations.entities.systems.globalconfiguration;

@safe:
import models.administrations;

// System level configurations
class DSystemGlobalConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("SystemGlobalConfigurationEntity"));

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
mixin(EntityCalls!("SystemGlobalConfigurationEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemGlobalConfigurationEntity);
  
    auto entity = SystemGlobalConfigurationEntity;
  }
}