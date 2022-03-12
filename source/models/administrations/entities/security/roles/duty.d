module models.administrations.entities.security.roles.duty;

@safe:
import models.administrations;

// 
class DADMSecurityRoleDuty : DOOPEntity {
  mixin(OOPEntityThis!("ADMSecurityRoleDuty"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "securityRoleId": OOPAttributeString.descriptions(["en":""]),
        "securityRoleName": OOPAttributeString.descriptions(["en":""]),
        "securityDutyId": OOPAttributeString.descriptions(["en":""]),
        "securityDutyName": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_securityroleduties");
  }
}
mixin(OOPEntityCalls!("ADMSecurityRoleDuty"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityRoleDuty);
  
  auto entity = ADMSecurityRoleDuty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}