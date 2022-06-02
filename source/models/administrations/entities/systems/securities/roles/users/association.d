module models.administrations.entities.systems.securities.roles.users.association;

@safe:
import models.administrations;

class DSystemSecurityUserRoleAssociationEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityUserRoleAssociationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "assignmentMode": StringAttribute, // 
        "assignmentStatus": StringAttribute, // 
        "securityRole": StringAttribute, // 
        "userId": UUIDAttribute, // 
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
      ])
      .registerPath("administration_system.securities.userrole.associations");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleAssociationEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityUserRoleAssociationEntity);
  
    auto entity = SystemSecurityUserRoleAssociationEntity;
  }
}