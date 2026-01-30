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
		attribute systemsThinking : String;
		attribute lifeCycles : String;
		attribute capabilityEngineering : String;
		attribute generalEngineering : String;
		attribute criticalThinking : String;
		attribute systemsModellingAndAnalysis : String;
	}

	part def ProfessionalCompetencies {
		doc
		/*
		 * Professional and interpersonal skills required for effective systems engineering.
		 */
		attribute communications : String;
		attribute ethicsAndProfessionalism : String;
		attribute technicalLeadership : String;
		attribute negotiation : String;
		attribute teamDynamics : String;
		attribute facilitation : String;
		attribute emotionalIntelligence : String;
		attribute coachingAndMentoring : String;
	}

	part def TechnicalCompetencies {
		doc
		/*
		 * Technical skills across the systems engineering lifecycle.
		 */
		attribute requirementsDefinition : String;
		attribute systemsArchitecting : String;
		attribute designFor : String;
		attribute integration : String;
		attribute interfaceManagement : String;
		attribute verificationSkill : String;
		attribute validationSkill : String;
		attribute transitionSkill : String;
		attribute operationAndSupport : String;
	}

	part def SEManagementCompetencies {
		doc
		/*
		 * Management competencies for systems engineering programs.
		 */
		attribute planningMonitoringControl : String;
		attribute decisionManagement : String;
		attribute concurrentEngineering : String;
		attribute businessEnterpriseIntegration : String;
		attribute acquisitionAndSupply : String;
		attribute informationManagement : String;
		attribute configurationManagement : String;
		attribute riskAndOpportunityManagement : String;
	}

	part def IntegratingCompetencies {
		doc
		/*
		 * Cross-cutting competencies that integrate SE with broader organizational functions.
		 */
		attribute projectManagement : String;
		attribute finance : String;
		attribute logistics : String;
		attribute quality : String;
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
			 * through transdisciplinary projects.
			 */
		}

		part universityEducation {
			doc
			/*
			 * Specialized tracks for research SE, systems integrator, architect roles.
			 * Shift from design-build-test to model-simulate-analyze-build.
			 */
		}

		part careerDevelopment {
			doc
			/*
			 * Corporate internal universities providing continuous learning. Professional
			 * certification programs. Established career progression pathways.
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
