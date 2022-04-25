module models.administrations.entities.security.roles.users.user;

@safe:
import models.administrations;

// 
class DADMSecurityUserRole : DOOPEntity {
  mixin(EntityThis!("ADMSecurityUserRole"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "AssignmentMode": OOPAttributeString.descriptions(["en":""]),
        "AssignmentStatus": OOPAttributeString.descriptions(["en":""]),
        "SecurityRole": OOPAttributeString.descriptions(["en":""]),
        "UserId": OOPAttributeString.descriptions(["en":""]),
        "SecurityRoleIdentifier": OOPAttributeString.descriptions(["en":""]),
        "SecurityRoleName": OOPAttributeString.descriptions(["en":""]),
        "UserLicenseType": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_securityuserroles");
  }
}
mixin(EntityCalls!("ADMSecurityUserRole"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityUserRole);
  
  auto entity = ADMSecurityUserRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}