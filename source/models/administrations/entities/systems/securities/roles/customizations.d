module models.administrations.entities.systems.securities.roles.customization;

@safe:
import models.administrations;

// 
class DSecurityRoleCustomizationEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleCustomizationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.rolecustomizations");
  }
}
mixin(EntityCalls!("SecurityRoleCustomizationEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleCustomizationEntity);
  
    auto entity = SecurityRoleCustomizationEntity;
  }
}