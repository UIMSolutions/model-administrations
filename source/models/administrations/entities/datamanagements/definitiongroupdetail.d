module models.administrations.entities.datamanagements.definitiongroupdetail;

@safe:
import models.administrations;

class DDataManagementDefinitionGroupDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementDefinitionGroupDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": StringAttribute, //
        "entityName": StringAttribute, //
        "excelSheetName": StringAttribute, //
        "runBusinessLogic": StringAttribute, //
        "runBusinessValidation": StringAttribute, //
        "sampleFilePath": StringAttribute, //
        "inputFilePath": StringAttribute, //
        "sourceFormat": StringAttribute, //
        "validationStatus": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "sequenceInLevel": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "disable": StringAttribute, //
        "queryData": StringAttribute, //
        "sysModule": StringAttribute, //
        "tags": StringAttribute, //
        "entityCategory": StringAttribute, //
        "parentEntityName": StringAttribute, //
        "autoGenerateMapping": StringAttribute, //
        "queryForODBC": StringAttribute, //
        "runValidateField": StringAttribute, //
        "entityXMLName": StringAttribute, //
        "isTransformed": StringAttribute, //
        "sampleFilePathOriginal": StringAttribute, //
        "skipStaging": StringAttribute, //
        "packageFilePath": StringAttribute, //
        "defaultRefreshType": StringAttribute, //
        "relationship_DefinitionGroupDetailsRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.definitiongroupdetails");
  }
}
mixin(EntityCalls!("DataManagementDefinitionGroupDetailEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementDefinitionGroupDetailEntity);

    auto entity = DataManagementDefinitionGroupDetailEntity;
    // TODO more tests
  }
}