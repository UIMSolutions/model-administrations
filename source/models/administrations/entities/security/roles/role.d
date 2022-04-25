module models.administrations.entities.security.roles.role;

@safe:
import models.administrations;

// 
class DADMSecurityRole : DOOPEntity {
  mixin(EntityThis!("ADMSecurityRole"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "securityRoleIdentifier": OOPAttributeString.descriptions(["en":""]),
        "securityRoleName": OOPAttributeString.descriptions(["en":""]),
        "accessToSensitiveData": OOPAttributeString.descriptions(["en":""]),
        "userLicenseType": OOPAttributeString.descriptions(["en":""]),
        "contextString": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_securityroles");
  }
}
mixin(EntityCalls!("ADMSecurityRole"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityRole);
  
  auto entity = ADMSecurityRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}