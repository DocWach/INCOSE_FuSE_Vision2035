package Competencies {
	doc
	/*
	 * SE Competency Framework and Workforce Development from INCOSE Vision 2035.
	 *
	 * This package models the five competency domains required for systems engineers,
	 * the education pipeline from primary through career development, and the workforce
	 * vision for 2035.
	 */

	private import ScalarValues::*;
	private import SETypes::*;

	enum def EmergingSkillDomain {
		doc
		/*
		 * Emerging technical domains requiring new SE competencies.
		 */
		communicationEnergyNetworks;
		autonomousSystems;
		smartDevices;
	}

	part def CoreSEPrinciples {
		doc
		/*
		 * Core systems engineering principles forming the foundation of SE practice.
		 */
		attribute systemsThinking : CompetencyProfile {
			doc /* Ability to see the whole system, understand interactions and emergent properties. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::primarySecondary;
		}
		attribute lifeCycles : CompetencyProfile {
			doc /* Understanding of system life cycle stages from concept through retirement. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute capabilityEngineering : CompetencyProfile {
			doc /* Engineering solutions that deliver required operational capabilities to stakeholders. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute generalEngineering : CompetencyProfile {
			doc /* Broad engineering knowledge spanning multiple disciplines. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::primarySecondary;
		}
		attribute criticalThinking : CompetencyProfile {
			doc /* Analytical reasoning and evidence-based evaluation of problems and solutions. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::primarySecondary;
		}
		attribute systemsModellingAndAnalysis : CompetencyProfile {
			doc /* Creating and using models to analyze system behavior, performance, and trade-offs. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
	}

	part def ProfessionalCompetencies {
		doc
		/*
		 * Professional and interpersonal skills required for effective systems engineering.
		 */
		attribute communications : CompetencyProfile {
			doc /* Clear and effective written, oral, and visual communication across audiences. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute ethicsAndProfessionalism : CompetencyProfile {
			doc /* Adherence to ethical standards and professional conduct in engineering practice. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute technicalLeadership : CompetencyProfile {
			doc /* Leading technical teams and guiding engineering decisions. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute negotiation : CompetencyProfile {
			doc /* Reaching agreements among stakeholders with competing interests and constraints. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute teamDynamics : CompetencyProfile {
			doc /* Understanding and managing team interactions, roles, and group performance. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute facilitation : CompetencyProfile {
			doc /* Guiding groups through structured processes to achieve shared outcomes. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute emotionalIntelligence : CompetencyProfile {
			doc /* Recognizing and managing emotions in oneself and others to support collaboration. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute coachingAndMentoring : CompetencyProfile {
			doc /* Developing others through guidance, feedback, and knowledge transfer. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
	}

	part def TechnicalCompetencies {
		doc
		/*
		 * Technical skills across the systems engineering lifecycle.
		 */
		attribute requirementsDefinition : CompetencyProfile {
			doc /* Eliciting, analyzing, and specifying stakeholder and system requirements. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute systemsArchitecting : CompetencyProfile {
			doc /* Defining system structure, partitioning, and allocation of functions to components. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::graduate;
		}
		attribute designFor : CompetencyProfile {
			doc /* Design for manufacturing, reliability, maintainability, safety, and other quality attributes. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute integration : CompetencyProfile {
			doc /* Assembling system elements and ensuring they work together as a coherent whole. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute interfaceManagement : CompetencyProfile {
			doc /* Defining, controlling, and managing interfaces between system elements. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute verificationSkill : CompetencyProfile {
			doc /* Confirming that system elements meet their specified requirements through test and analysis. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::undergraduate;
		}
		attribute validationSkill : CompetencyProfile {
			doc /* Confirming that the system fulfills its intended use in the operational environment. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::graduate;
		}
		attribute transitionSkill : CompetencyProfile {
			doc /* Planning and executing the transfer of a system to its operational environment. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::graduate;
		}
		attribute operationAndSupport : CompetencyProfile {
			doc /* Sustaining system performance and capability throughout the operational life cycle. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::graduate;
		}
	}

	part def SEManagementCompetencies {
		doc
		/*
		 * Management competencies for systems engineering programs.
		 */
		attribute planningMonitoringControl : CompetencyProfile {
			doc /* Planning SE activities, monitoring progress, and controlling deviations. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute decisionManagement : CompetencyProfile {
			doc /* Structured decision-making using trade studies, criteria weighting, and analysis. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute concurrentEngineering : CompetencyProfile {
			doc /* Coordinating parallel engineering activities across disciplines and teams. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute businessEnterpriseIntegration : CompetencyProfile {
			doc /* Aligning SE activities with business objectives and enterprise processes. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::midCareer;
		}
		attribute acquisitionAndSupply : CompetencyProfile {
			doc /* Managing supplier relationships, contracts, and procurement of system elements. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::midCareer;
		}
		attribute informationManagement : CompetencyProfile {
			doc /* Managing engineering data, documents, and knowledge assets across the life cycle. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute configurationManagement : CompetencyProfile {
			doc /* Controlling and tracking system baselines, changes, and product configurations. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute riskAndOpportunityManagement : CompetencyProfile {
			doc /* Identifying, assessing, and mitigating risks while exploiting opportunities. */
			attribute :>> targetLevel := ProficiencyLevel::expert;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
	}

	part def IntegratingCompetencies {
		doc
		/*
		 * Cross-cutting competencies that integrate SE with broader organizational functions.
		 */
		attribute projectManagement : CompetencyProfile {
			doc /* Planning, executing, and closing projects within scope, schedule, and budget. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
		attribute finance : CompetencyProfile {
			doc /* Understanding cost estimation, budgeting, and financial analysis for engineering programs. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::midCareer;
		}
		attribute logistics : CompetencyProfile {
			doc /* Planning and managing supply chains, maintenance, and sustainment of fielded systems. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::midCareer;
		}
		attribute quality : CompetencyProfile {
			doc /* Applying quality assurance and quality control practices throughout the system life cycle. */
			attribute :>> targetLevel := ProficiencyLevel::application;
			attribute :>> introducedAt := EducationStage::earlyCareer;
		}
	}

	part def EducationPipeline {
		doc
		/*
		 * The educational pipeline for developing systems engineering competencies
		 * from primary education through career development.
		 */

		part primarySecondaryEducation {
			doc
			/*
			 * Systems thinking integrated across STEM curricula. Real-world problem-solving
			 * through transdisciplinary projects. Typical proficiency achieved: awareness.
			 */
		}

		part universityEducation {
			doc
			/*
			 * Specialized tracks for research SE, systems integrator, architect roles.
			 * Shift from design-build-test to model-simulate-analyze-build.
			 * Typical proficiency achieved: application.
			 */
		}

		part careerDevelopment {
			doc
			/*
			 * Corporate internal universities providing continuous learning. Professional
			 * certification programs. Established career progression pathways.
			 * Typical proficiency achieved: expert to thoughtLeader.
			 */
		}
	}

	part def WorkforceVision2035 {
		doc
		/*
		 * By 2035, systems thinking will be embedded throughout education levels,
		 * with an educational, training, mentoring, and life-long learning pipeline in place.
		 */
		attribute keyCharacteristic : String := "Holistic thinkers, strong communicators with capacity to maintain comprehensive system perspectives while managing technical details";
	}

	part competencyFramework {
		doc
		/*
		 * The complete SE competency framework integrating all domains.
		 */
		part corePrinciples : CoreSEPrinciples;
		part professionalSkills : ProfessionalCompetencies;
		part technicalSkills : TechnicalCompetencies;
		part managementSkills : SEManagementCompetencies;
		part integratingSkills : IntegratingCompetencies;
	}

	part workforceDevelopment {
		doc
		/*
		 * Complete workforce development system from education through career progression.
		 */
		part pipeline : EducationPipeline;
		part vision : WorkforceVision2035;
		attribute emergingDomains : EmergingSkillDomain[*];
	}
}
