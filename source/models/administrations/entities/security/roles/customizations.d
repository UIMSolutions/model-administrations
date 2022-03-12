module models.administrations.entities.security.roles.customization;

@safe:
import models.administrations;

// 
class DADMSecurityRoleCustomization : DOOPEntity {
  mixin(OOPEntityThis!("ADMSecurityRoleCustomization"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
      "identifier": OOPAttributeString.descriptions(["en":""]),
      "xmlObject": OOPAttributeString.descriptions(["en":""]),
      "isDisabled": OOPAttributeBoolean.descriptions(["en":""]),
      ])
      .registerPath("admin_securityrolecustomizations");
  }
}
mixin(OOPEntityCalls!("ADMSecurityRoleCustomization"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityRoleCustomization);
  
  auto entity = ADMSecurityRoleCustomization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}