module models.administrations.entities.systems.securities.duties.customization;

@safe:
import models.administrations;

class DSecurityDutyCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SecurityDutyCustomizationsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "XmlObject": StringAttribute, // 
        "IsDisabled	": BooleanAttribute, // 
      ])
      .registerPath("security_dutycustomizations");
  }
}
mixin(EntityCalls!("SecurityDutyCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SecurityDutyCustomizationsEntity);
  
    auto entity = SecurityDutyCustomizationsEntity;
  }
}