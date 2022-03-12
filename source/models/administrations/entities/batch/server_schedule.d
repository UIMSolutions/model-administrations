module models.administrations.entities.batch.server_schedule;

@safe:
import models.administrations;

class DADMBatchServerSchedule : DOOPEntity {
  mixin(OOPEntityThis!("ADMBatchServerSchedule"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "EndTime": OOPAttributeString.descriptions(["en":""]),
        "MaximumBatchThreads": OOPAttributeString.descriptions(["en":""]),
        "AOSInstanceName": OOPAttributeString.descriptions(["en":""]),
        "StartTime": OOPAttributeString.descriptions(["en":""]),
        "backingTable_BatchServerConfigRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_batchserverschedules");
  }
}
mixin(OOPEntityCalls!("ADMBatchServerSchedule"));

unittest {
  version(uim_entities) {
    assert(ADMBatchServerSchedule);

  auto entity = ADMBatchServerSchedule;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}