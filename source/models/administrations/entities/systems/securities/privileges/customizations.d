module models.administrations.entities.systems.securities.privileges.customizations;

@safe:
import models.administrations;

// 
class DSystemSecurityPrivilegeCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeCustomizationsEntity"));

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
mixin(EntityCalls!("SystemSecurityPrivilegeCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityPrivilegeCustomizationsEntity);
  
    auto entity = SystemSecurityPrivilegeCustomizationsEntity;
  }
}