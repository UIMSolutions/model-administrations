module models.administrations.entities.systems.securities.duties.customization;

@safe:
import models.administrations;

class DSystemSecurityDutyCustomizationEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityDutyCustomizationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled	": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.dutycustomizations");
  }
}
mixin(EntityCalls!("SystemSecurityDutyCustomizationEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityDutyCustomizationEntity);
  
    auto entity = SystemSecurityDutyCustomizationEntity;
  }
}