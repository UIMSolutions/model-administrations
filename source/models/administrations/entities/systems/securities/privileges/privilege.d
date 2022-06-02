module models.administrations.entities.systems.securities.privileges.privilege;

@safe:
import models.administrations;

// 
class DSecurityPrivilegeEntity : DOOPEntity {
  mixin(EntityThis!("SecurityPrivilegeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("security_privileges");
  }
}
mixin(EntityCalls!("SecurityPrivilegeEntity"));

version(test_library) {
  unittest {
    assert(SecurityPrivilegeEntity);
  
    auto entity = SecurityPrivilegeEntity;
  }
}