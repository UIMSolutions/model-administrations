module models.administrations.entities.systems.securities.roles.users.association;

@safe:
import models.administrations;

// 
class DSecurityUserRoleAssociationEntity : DOOPEntity {
  mixin(EntityThis!("SecurityUserRoleAssociationEntity"));

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
      .registerPath("administration_system.securities.userroleassociation");
  }
}
mixin(EntityCalls!("SecurityUserRoleAssociationEntity"));

version(test_library) {
  unittest {
    assert(SecurityUserRoleAssociationEntity);
  
  auto entity = SecurityUserRoleAssociationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}