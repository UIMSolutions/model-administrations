module models.administrations.entities.systems.securities.roles.subrole;

@safe:
import models.administrations;

// 
class DSecuritySubRoleEntity : DOOPEntity {
  mixin(EntityThis!("SecuritySubRoleEntity"));

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
mixin(EntityCalls!("SecuritySubRoleEntity"));

version(test_library) {
  unittest {
    assert(SecuritySubRoleEntity);
  
    auto entity = SecuritySubRoleEntity;
  }
}