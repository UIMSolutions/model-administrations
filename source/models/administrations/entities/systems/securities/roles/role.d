module models.administrations.entities.systems.securities.roles.role;

@safe:
import models.administrations;

// 
class DSystemSecurityRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "contextString": StringAttribute, // 
      ])
      .registerPath("administration_systems.securityroles");
  }
}
mixin(EntityCalls!("SystemSecurityRoleEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityRoleEntity);
  
    auto entity = SystemSecurityRoleEntity;
  }
}