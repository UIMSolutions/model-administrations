module models.administrations.entities.systems.securities.roles.subrole;

@safe:
import models.administrations;

// 
class DSystemSecuritySubRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecuritySubRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securitySubRoleId": UUIDAttribute, // 
        "securitySubRoleName": StringAttribute, // 
      ])
      .registerPath("administration_system.securities.subroles");
  }
}
mixin(EntityCalls!("SystemSecuritySubRoleEntity"));

version(test_library) {
  unittest {
    assert(SystemSecuritySubRoleEntity);
  
    auto entity = SystemSecuritySubRoleEntity;
  }
}