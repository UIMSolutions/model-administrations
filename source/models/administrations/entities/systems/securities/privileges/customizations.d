module models.administrations.entities.systems.securities.privileges.customizations;

@safe:
import models.administrations;

// 
class DSecurityPrivilegeCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SecurityPrivilegeCustomizationsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.privilegecustomizations");
  }
}
mixin(EntityCalls!("SecurityPrivilegeCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SecurityPrivilegeCustomizationsEntity);
  
    auto entity = SecurityPrivilegeCustomizationsEntity;
  }
}