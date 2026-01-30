package LifecycleAlignment {
	doc
	/*
	 * ISO/IEC/IEEE 15288:2023 System Life Cycle Process Alignment
	 *
	 * Maps the 30 lifecycle processes across 4 process groups to
	 * Vision 2035 challenges, capabilities, and competencies.
	 * Enables gap analysis between current 15288 practice and
	 * Vision 2035 aspirations.
	 */

	private import ScalarValues::*;
	private import SETypes::*;

	// ================================================================
	// Process Impact Level
	// ================================================================

	enum def ImpactLevel {
		doc /* Degree to which Vision 2035 transformation impacts a lifecycle process. */
		transformative {
			doc /* Process fundamentally changed by Vision 2035 capabilities. */
		}
		significant {
			doc /* Process substantially enhanced by new methods and tools. */
		}
		moderate {
			doc /* Process improved but core approach remains similar. */
		}
		minimal {
			doc /* Process largely unchanged by Vision 2035 transformation. */
		}
	}

	// ================================================================
	// Lifecycle Process Base Definition
	// ================================================================

	part def LifecycleProcess {
		doc /* Base definition for an ISO 15288 lifecycle process. */
		attribute processName : String;
		attribute processGroup : String;
		attribute processObjective : String;
		attribute visionImpact : ImpactLevel;
	}

	// ================================================================
	// Agreement Processes (2 processes)
	// ================================================================

	part def AcquisitionProcess :> LifecycleProcess {
		doc /* Obtain a product or service from a supplier. */
	}

	part def SupplyProcess :> LifecycleProcess {
		doc /* Provide a product or service to an acquirer. */
	}

	// ================================================================
	// Organizational Project-Enabling Processes (5 processes)
	// ================================================================

	part def LifeCycleModelManagement :> LifecycleProcess {
		doc /* Define, maintain, and assure availability of policies, lifecycle models, and procedures. */
	}

	part def InfrastructureManagement :> LifecycleProcess {
		doc /* Provide enabling infrastructure and services to projects. */
	}

	part def PortfolioManagement :> LifecycleProcess {
		doc /* Initiate and sustain necessary, sufficient, and suitable projects. */
	}

	part def HumanResourceManagement :> LifecycleProcess {
		doc /* Provide the organization with necessary human resources. */
	}

	part def QualityManagement :> LifecycleProcess {
		doc /* Assure that products, services, and processes meet quality objectives. */
	}

	// ================================================================
	// Technical Management Processes (8 processes)
	// ================================================================

	part def ProjectPlanningProcess :> LifecycleProcess {
		doc /* Produce and coordinate effective and workable plans. */
	}

	part def ProjectAssessmentControl :> LifecycleProcess {
		doc /* Determine status of the project and ensure it performs according to plans. */
	}

	part def DecisionManagementProcess :> LifecycleProcess {
		doc /* Provide a structured, analytical framework for objectively identifying and evaluating alternatives. */
	}

	part def RiskManagementProcess :> LifecycleProcess {
		doc /* Identify, analyze, treat, and monitor risks continuously. */
	}

	part def ConfigurationManagementProcess :> LifecycleProcess {
		doc /* Establish and maintain the integrity of all identified outputs. */
	}

	part def InformationManagementProcess :> LifecycleProcess {
		doc /* Provide relevant, timely, complete, valid, and reliable information. */
	}

	part def MeasurementProcess :> LifecycleProcess {
		doc /* Collect, analyze, and report objective data and information. */
	}

	part def QualityAssuranceProcess :> LifecycleProcess {
		doc /* Assure that work products and processes comply with plans and provisions. */
	}

	// ================================================================
	// Technical Processes (15 processes)
	// ================================================================

	part def BusinessMissionAnalysis :> LifecycleProcess {
		doc /* Define the business or mission problem or opportunity. */
	}

	part def StakeholderNeedsDefinition :> LifecycleProcess {
		doc /* Define the stakeholder needs that a system must address. */
	}

	part def SystemRequirementsDefinition :> LifecycleProcess {
		doc /* Transform stakeholder needs into a set of system requirements. */
	}

	part def ArchitectureDefinition :> LifecycleProcess {
		doc /* Generate system architecture alternatives and select one or more. */
	}

	part def DesignDefinition :> LifecycleProcess {
		doc /* Provide sufficient detailed data and information about the system. */
	}

	part def SystemAnalysisProcess :> LifecycleProcess {
		doc /* Provide a rigorous basis for system decisions throughout the life cycle. */
	}

	part def ImplementationProcess :> LifecycleProcess {
		doc /* Realize a specified system element. */
	}

	part def IntegrationProcess :> LifecycleProcess {
		doc /* Assemble a system consistent with the architecture and design. */
	}

	part def VerificationProcess :> LifecycleProcess {
		doc /* Provide objective evidence that a system fulfills its specified requirements. */
	}

	part def ValidationProcess :> LifecycleProcess {
		doc /* Provide objective evidence that the system fulfills its intended use. */
	}

	part def TransitionProcess :> LifecycleProcess {
		doc /* Establish a capability to provide services specified by stakeholder requirements. */
	}

	part def OperationProcess :> LifecycleProcess {
		doc /* Use the system to deliver its services. */
	}

	part def MaintenanceProcess :> LifecycleProcess {
		doc /* Sustain the capability of the system to provide a service. */
	}

	part def DisposalProcess :> LifecycleProcess {
		doc /* End the existence of a system element or system. */
	}

	part def KnowledgeManagementProcess :> LifecycleProcess {
		doc /* Create, maintain, and sustain intellectual capital throughout the lifecycle. */
	}

	// ================================================================
	// Process-to-Challenge Alignment Connection
	// ================================================================

	connection def ProcessChallengeAlignment {
		doc
		/*
		 * Maps a lifecycle process to the Vision 2035 challenges
		 * that most impact how that process will be performed in 2035.
		 */
		end processEnd : LifecycleProcess;
		end challengeEnd : LifecycleProcess;
	}

	// ================================================================
	// Vision 2035 Alignment Assessment
	// ================================================================

	part def VisionAlignmentAssessment {
		doc
		/*
		 * Composite assessment mapping all 30 ISO 15288 processes to their
		 * Vision 2035 impact levels, identifying which processes are most
		 * transformed by the future state capabilities.
		 */

		// Agreement Processes
		part acquisitionProc : AcquisitionProcess {
			attribute :>> processName := "Acquisition";
			attribute :>> processGroup := "Agreement";
			attribute :>> processObjective := "Obtain product or service from supplier";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part supplyProc : SupplyProcess {
			attribute :>> processName := "Supply";
			attribute :>> processGroup := "Agreement";
			attribute :>> processObjective := "Provide product or service to acquirer";
			attribute :>> visionImpact := ImpactLevel::significant;
		}

		// Organizational Project-Enabling Processes
		part lcModelMgmt : LifeCycleModelManagement {
			attribute :>> processName := "Life Cycle Model Management";
			attribute :>> processGroup := "Organizational Project-Enabling";
			attribute :>> processObjective := "Define and maintain lifecycle models and procedures";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part infraMgmt : InfrastructureManagement {
			attribute :>> processName := "Infrastructure Management";
			attribute :>> processGroup := "Organizational Project-Enabling";
			attribute :>> processObjective := "Provide enabling infrastructure and services";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part portfolioMgmt : PortfolioManagement {
			attribute :>> processName := "Portfolio Management";
			attribute :>> processGroup := "Organizational Project-Enabling";
			attribute :>> processObjective := "Initiate and sustain suitable projects";
			attribute :>> visionImpact := ImpactLevel::moderate;
		}
		part hrMgmt : HumanResourceManagement {
			attribute :>> processName := "Human Resource Management";
			attribute :>> processGroup := "Organizational Project-Enabling";
			attribute :>> processObjective := "Provide necessary human resources";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part qualityMgmt : QualityManagement {
			attribute :>> processName := "Quality Management";
			attribute :>> processGroup := "Organizational Project-Enabling";
			attribute :>> processObjective := "Assure quality objectives are met";
			attribute :>> visionImpact := ImpactLevel::significant;
		}

		// Technical Management Processes
		part projectPlanning : ProjectPlanningProcess {
			attribute :>> processName := "Project Planning";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Produce effective and workable plans";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part projectAssessment : ProjectAssessmentControl {
			attribute :>> processName := "Project Assessment and Control";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Determine project status and ensure plan adherence";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part decisionMgmt : DecisionManagementProcess {
			attribute :>> processName := "Decision Management";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Provide structured analytical decision framework";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part riskMgmt : RiskManagementProcess {
			attribute :>> processName := "Risk Management";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Identify, analyze, treat, and monitor risks";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part configMgmt : ConfigurationManagementProcess {
			attribute :>> processName := "Configuration Management";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Maintain integrity of identified outputs";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part infoMgmt : InformationManagementProcess {
			attribute :>> processName := "Information Management";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Provide relevant and reliable information";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part measurement : MeasurementProcess {
			attribute :>> processName := "Measurement";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Collect, analyze, and report objective data";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part qaProcess : QualityAssuranceProcess {
			attribute :>> processName := "Quality Assurance";
			attribute :>> processGroup := "Technical Management";
			attribute :>> processObjective := "Assure compliance with plans and provisions";
			attribute :>> visionImpact := ImpactLevel::significant;
		}

		// Technical Processes
		part bizMissionAnalysis : BusinessMissionAnalysis {
			attribute :>> processName := "Business or Mission Analysis";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Define the business or mission problem";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part stakeholderNeeds : StakeholderNeedsDefinition {
			attribute :>> processName := "Stakeholder Needs and Requirements Definition";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Define stakeholder needs the system must address";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part sysReqDef : SystemRequirementsDefinition {
			attribute :>> processName := "System Requirements Definition";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Transform stakeholder needs into system requirements";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part archDef : ArchitectureDefinition {
			attribute :>> processName := "Architecture Definition";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Generate and select system architecture alternatives";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part designDef : DesignDefinition {
			attribute :>> processName := "Design Definition";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Provide detailed system design data";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part sysAnalysis : SystemAnalysisProcess {
			attribute :>> processName := "System Analysis";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Provide rigorous basis for system decisions";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part implementationProc : ImplementationProcess {
			attribute :>> processName := "Implementation";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Realize a specified system element";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part integrationProc : IntegrationProcess {
			attribute :>> processName := "Integration";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Assemble system consistent with architecture";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part verificationProc : VerificationProcess {
			attribute :>> processName := "Verification";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Provide evidence system fulfills requirements";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part validationProc : ValidationProcess {
			attribute :>> processName := "Validation";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Provide evidence system fulfills intended use";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
		part transitionProc : TransitionProcess {
			attribute :>> processName := "Transition";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Establish capability to provide specified services";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part operationProc : OperationProcess {
			attribute :>> processName := "Operation";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Use system to deliver services";
			attribute :>> visionImpact := ImpactLevel::moderate;
		}
		part maintenanceProc : MaintenanceProcess {
			attribute :>> processName := "Maintenance";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Sustain system capability to provide service";
			attribute :>> visionImpact := ImpactLevel::significant;
		}
		part disposalProc : DisposalProcess {
			attribute :>> processName := "Disposal";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "End existence of system element or system";
			attribute :>> visionImpact := ImpactLevel::minimal;
		}
		part knowledgeMgmt : KnowledgeManagementProcess {
			attribute :>> processName := "Knowledge Management";
			attribute :>> processGroup := "Technical";
			attribute :>> processObjective := "Create and sustain intellectual capital";
			attribute :>> visionImpact := ImpactLevel::transformative;
		}
	}
}
