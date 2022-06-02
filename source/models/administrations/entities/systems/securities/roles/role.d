module models.administrations.entities.systems.securities.roles.role;

@safe:
import models.administrations;

// 
class DSecurityRoleEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleEntity"));

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
      .registerPath("admin_securityroles");
  }
}
mixin(EntityCalls!("SecurityRoleEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleEntity);
  
    auto entity = SecurityRoleEntity;
  }
}