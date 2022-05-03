module models.administrations.entities.cases.detail;

@safe:
import models.administrations;

class DADMCaseDetailBase : DOOPEntity {
  mixin(EntityThis!("ADMCaseDetailBase"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "answerId": UUIDAttributeClass, // 
        "billingProjectId": UUIDAttributeClass, // 
        "caseCategoryHierarchyDetail": StringAttributeClass, // 
        "caseId": UUIDAttributeClass, // 
        "caseStatus": StringAttributeClass, // 
        "categoryId": UUIDAttributeClass, // 
        "categoryType": StringAttributeClass, // 
        "closedBy":UserIdAttributeClass, // 
        "closedDateAndTime": StringAttributeClass, // 
        "compliance": StringAttributeClass, // 
        "caseCreatedDateAndTime": StringAttributeClass, // 
        "contactId": UUIDAttributeClass, // 
        "department": StringAttributeClass, // 
        "dirParty": StringAttributeClass, // 
        "employeeResponsibleName": StringAttributeClass, // 
        "employeeResponsiblePersonnelNumber": StringAttributeClass, // 
        "fmlAApproved": StringAttributeClass, // 
        "fmlAApprovedBy":UserIdAttributeClass, // 
        "fmlAApprovedHours": StringAttributeClass, // 
        "fmlAEstimatedLeaveEndDate": StringAttributeClass, // 
        "fmlAHoursWorked": StringAttributeClass, // 
        "fmlALeaveReason": StringAttributeClass, // 
        "fmlALeaveRequestDate": StringAttributeClass, // 
        "fmlALeaveSchedule": StringAttributeClass, // 
        "fmlALeaveStartDate": StringAttributeClass, // 
        "fmlALengthOfEmployment": StringAttributeClass, // 
        "fmlAMaintainHoursManually": StringAttributeClass, // 
        "fmlAMilitaryHoursAvailable": StringAttributeClass, // 
        "fmlAStandardHoursAvailable": StringAttributeClass, // 
        "hcmWorker": StringAttributeClass, // 
        "instanceRelationType": StringAttributeClass, // 
        "notes": StringAttributeClass, // 
        "departmentNumber": StringAttributeClass, // 
        "partyNumber": StringAttributeClass, // 
        "plannedEffectiveDate": StringAttributeClass, // 
        "priority": StringAttributeClass, // 
        "processId": UUIDAttributeClass, // 
        "questionnaireId": UUIDAttributeClass, // 
        "resolution": StringAttributeClass, // 
        "serviceStageId": UUIDAttributeClass, // 
        "serviceLevelAgreementId": UUIDAttributeClass, // 
        "serviceLevelAgreementStatus": StringAttributeClass, // 
        "serviceLevelCompletionDate": StringAttributeClass, // 
        "emailId": UUIDAttributeClass, // 
        "relationship_DirPartyBaseEntityRelationshipId": UUIDAttributeClass, // 
        "relationship_ProjectEntityRelationshipId": UUIDAttributeClass, // 
        "relationship_smmContactPersonEntityRelationshipId": UUIDAttributeClass, // 
        "relationship_OMOperatingUnitEntityRelationshipId": UUIDAttributeClass, // 
        "relationship_HcmWorkerEntityRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_casedetailbases");
  }
}
mixin(EntityCalls!("ADMCaseDetailBase"));

unittest {
  version(uim_entities) {
    assert(ADMCaseDetailBase);

  auto entity = ADMCaseDetailBase;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}