package Roadmap {
	doc
	/*
	 * Chapter 4: Realizing the Vision
	 * Models the transformation roadmap from current state SE to Vision 2035,
	 * including stakeholder recommendations, collaboration framework, and industry sectors.
	 */

	private import ScalarValues::*;

	// ================================================================================
	// Transformation State Machine
	// ================================================================================

	state def SETransformation {
		doc
		/*
		 * State machine modeling the transformation from current state SE to Vision 2035 future state.
		 * Represents the progression through transformation phases with clear transition points.
		 */

		state currentState {
			doc
			/*
			 * Current state of SE practice: document-centric, uneven adoption, fragmented tools,
			 * limited theoretical foundations.
			 */
		}

		state transitioning {
			doc
			/*
			 * Active transformation: adopting MBSE, building foundations, expanding workforce,
			 * addressing challenges.
			 */

			state adoptingMBSE {
				doc
				/*
				 * Transition to model-based systems engineering practices across organizations.
				 */
			}

			state buildingFoundations {
				doc
				/*
				 * Establishing theoretical and methodological foundations for systems engineering.
				 */
			}

			state expandingWorkforce {
				doc
				/*
				 * Growing and developing the systems engineering workforce with modern competencies.
				 */
			}

			state addressingChallenges {
				doc
				/*
				 * Tackling systemic challenges such as tool fragmentation, adoption barriers,
				 * and knowledge gaps.
				 */
			}
		}

		state futureState {
			doc
			/*
			 * Vision 2035 achieved: model-based, AI-enabled, theoretically grounded, broadly adopted.
			 */
		}

		transition initiateTransformation
			first currentState
			then transitioning;

		transition achieveVision
			first transitioning
			then futureState;
	}

	// ================================================================================
	// Ecosystem Change Levels
	// ================================================================================

	part def ProcessesAndMethods {
		doc
		/*
		 * Updates to how systems engineering is conducted, including project lifecycle management.
		 * First level of ecosystem change focusing on practice evolution.
		 */
	}

	part def EnterpriseAdoption {
		doc
		/*
		 * Integration of evolved standard processes and innovation approaches within organizations.
		 * Second level focusing on organizational integration.
		 */
	}

	part def OrganizationalLearning {
		doc
		/*
		 * Capturing and consistently applying changes across the enterprise.
		 * Third level ensuring sustained transformation through knowledge management.
		 */
	}

	// ================================================================================
	// Academic Stakeholder Recommendations
	// ================================================================================

	requirement def AcademicRecommendations {
		doc
		/*
		 * Recommendations for academic institutions to prepare the future SE workforce
		 * and advance theoretical foundations.
		 */

		requirement integrateFoundationalCompetencies {
			doc
			/*
			 * Integrate foundational SE competencies into college and pre-college curricula.
			 */
		}

		requirement addSystemsThinking {
			doc
			/*
			 * Add systems thinking concepts across engineering accreditation criteria.
			 */
		}

		requirement includeNonTechnical {
			doc
			/*
			 * Include non-technical topics such as human dynamics and sustainability.
			 */
		}

		requirement developChallengeBased {
			doc
			/*
			 * Develop challenge-based, hands-on education using integrated methods.
			 */
		}

		requirement partnerWithIndustry {
			doc
			/*
			 * Partner with industry and government on SE research and curriculum development.
			 */
		}
	}

	// ================================================================================
	// Industry and Government Stakeholder Recommendations
	// ================================================================================

	requirement def IndustryGovernmentRecommendations {
		doc
		/*
		 * Recommendations for industry and government organizations to drive SE adoption
		 * and digital transformation.
		 */

		requirement includeOnStrategicAgendas {
			doc
			/*
			 * Include systems engineering on strategic agendas for addressing global challenges.
			 */
		}

		requirement promoteSEApplication {
			doc
			/*
			 * Promote SE application across diverse domains and socio-technical problems.
			 */
		}

		requirement establishDigitalEnvironments {
			doc
			/*
			 * Establish trusted digital environments with broad organizational span.
			 */
		}

		requirement adoptDataStandards {
			doc
			/*
			 * Adopt data standards enabling effective interconnection and exchange.
			 */
		}

		requirement supportAIMLIntegration {
			doc
			/*
			 * Support AI/ML integration with model-based systems engineering practices.
			 */
		}
	}

	// ================================================================================
	// Practitioner Stakeholder Recommendations
	// ================================================================================

	requirement def PractitionerRecommendations {
		doc
		/*
		 * Recommendations for SE practitioners to develop competencies and embrace
		 * modern practices.
		 */

		requirement developCoreCompetencies {
			doc
			/*
			 * Develop core SE competencies as part of individual and team learning.
			 */
		}

		requirement embraceDigitalEngineering {
			doc
			/*
			 * Embrace digital engineering transformation across all disciplines.
			 */
		}

		requirement incorporateDynamicFeedback {
			doc
			/*
			 * Incorporate dynamic feedback and Agile practices throughout solution lifecycles.
			 */
		}

		requirement adoptKnowledgeManagement {
			doc
			/*
			 * Adopt knowledge management practices supporting incremental learning.
			 */
		}

		requirement applyPatterns {
			doc
			/*
			 * Apply patterns and unified models enabling reuse across use cases.
			 */
		}
	}

	// ================================================================================
	// Research Stakeholder Recommendations
	// ================================================================================

	requirement def ResearchRecommendations {
		doc
		/*
		 * Recommendations for the research community to advance SE theoretical foundations
		 * and address emerging challenges.
		 */

		requirement validateFoundations {
			doc
			/*
			 * Launch research validating systems engineering theoretical foundations.
			 */
		}

		requirement investigateDynamicChange {
			doc
			/*
			 * Investigate practices addressing dynamic change and uncertainty.
			 */
		}

		requirement exploreSynthesis {
			doc
			/*
			 * Explore synthesis capabilities for systems-of-systems analysis.
			 */
		}

		requirement studyNaturalSystems {
			doc
			/*
			 * Study natural systems to understand complexity management.
			 */
		}

		requirement encourageCrossDisciplinary {
			doc
			/*
			 * Encourage cross-disciplinary engagement for integrated approaches.
			 */
		}
	}

	// ================================================================================
	// Professional Association Stakeholder Recommendations
	// ================================================================================

	requirement def ProfessionalAssociationRecommendations {
		doc
		/*
		 * Recommendations for professional associations to foster communities and
		 * establish standards.
		 */

		requirement formCommunities {
			doc
			/*
			 * Form strong communities within application domains.
			 */
		}

		requirement establishArtifacts {
			doc
			/*
			 * Establish consistent communication artifacts and modeling standards.
			 */
		}

		requirement developProductLine {
			doc
			/*
			 * Develop product line engineering and composable design practices.
			 */
		}

		requirement createUnifiedFrameworks {
			doc
			/*
			 * Create unified frameworks accounting for solution variations.
			 */
		}
	}

	// ================================================================================
	// Collaboration Framework
	// ================================================================================

	part def CollaborationFramework {
		doc
		/*
		 * Realizing the vision requires developing and executing a strategy supported
		 * by a diverse stakeholder community across industry, government, academia,
		 * and non-profits.
		 */

		attribute professionalSocieties : String {
			doc /* Professional societies such as INCOSE, IEEE, and domain-specific organizations. */
		}

		attribute standardsBodies : String {
			doc /* Standards development organizations establishing interoperability and best practices. */
		}

		attribute scienceFoundations : String {
			doc /* National science foundations and research funding agencies. */
		}

		attribute educationalInstitutions : String {
			doc /* Universities, colleges, and training organizations. */
		}

		attribute technologyDevelopers : String {
			doc /* Tool vendors, platform providers, and technology innovators. */
		}
	}

	// ================================================================================
	// Industry Sectors
	// ================================================================================

	enum def IndustrySector {
		doc
		/*
		 * Ten key industry sectors where systems engineering practices are applied
		 * and Vision 2035 transformation is needed.
		 */

		electronics;
		healthcare;
		automotive;
		facilitiesInfrastructure;
		informationTechnology;
		powerEnergy;
		aerospace;
		transportation;
		defense;
		logistics;
	}
}
