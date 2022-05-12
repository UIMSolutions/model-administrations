module models.administrations;

@safe:
public import std.stdio;
public import std.string;
public import std.uuid;

// Dub
public import colored;
public import vibe.d;

// uim packages
public import uim.core;
public import uim.oop;
public import uim.entities;

public import models.systems;

// model-system packages
public import models.administrations.attributes;
public import models.administrations.classes;
public import models.administrations.entities;

// Register entities
static this() {
  uimRegistryEntities
  // Batches
  .register("ADMBatchGroup", ADMBatchGroup)
  .register("administration/batch/group", ADMBatchGroup)
  .register("ADMBatchServerSchedule", ADMBatchServerSchedule)
  .register("administration/batch/serverSchedule", ADMBatchServerSchedule)
  .register("ADMBatchJob", ADMBatchJob)
  .register("administration/batch/job", ADMBatchJob)
  .register("ADMBatchJobHistory", ADMBatchJobHistory)
  .register("administration/batch/job/history", ADMBatchJobHistory)
  // Cases
  .register("ADMCaseDetailBase", ADMCaseDetailBase)
  .register("administration/case/detail", ADMCaseDetailBase)
  .register("ADMCaseAssociation", ADMCaseAssociation)
  .register("administration/case/association", ADMCaseAssociation)
  .register("ADMCaseDependency", ADMCaseDependency)
  .register("administration/case/dependency", ADMCaseDependency); 
}
