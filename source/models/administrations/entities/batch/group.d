module models.administrations.entities.batch.group;

@safe:
import models.administrations;

class DADMBatchGroup : DOOPEntity {
  mixin(EntityThis!("ADMBatchGroup"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([  
        "serverId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_BatchGroupRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_batchgroups");
  }
}
mixin(EntityCalls!("ADMBatchGroup"));

unittest {
  version(uim_entities) {
    assert(ADMBatchGroup);

  auto entity = ADMBatchGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}