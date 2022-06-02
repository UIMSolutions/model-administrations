module models.administrations.entities.systems.securities.privileges.privilege;

@safe:
import models.administrations;

class DSystemSecurityPrivilegeEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("administration_system.securities.privileges");
  }
}
mixin(EntityCalls!("SystemSecurityPrivilegeEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityPrivilegeEntity);
  
    auto entity = SystemSecurityPrivilegeEntity;
  }
}