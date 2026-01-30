package Roadmap {
	doc
	/*
	 * Chapter 4: Realizing the Vision
	 * Models the transformation roadmap from current state SE to Vision 2035,
	 * including stakeholder recommendations, collaboration framework, and industry sectors.
	 */

	private import ScalarValues::*;
	private import SETypes::*;

	// ================================================================================
	// Transformation State Machine
	// ================================================================================

	state def SETransformation {
		@DocumentSource { chapter = 4; sectionRef = "4.1"; pageRange = "36-40"; }
		doc
		/*
		 * State machine modeling the transformation from current state SE to Vision 2035 future state.
		 * Represents the progression through transformation phases with clear transition points.
		 */

		attribute mbseAdoptionRate : Real;
		attribute foundationsPublished : Boolean;
		attribute workforcePipelineActive : Boolean;
		attribute digitalEcosystemOperational : Boolean;

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
			 * Active transformation through three progressive milestones.
			 * Guard conditions are modeled as attributes; transitions occur
			 * when documented thresholds are met.
			 */

			state milestone1_EarlyAdoption {
				doc
				/*
				 * Early Adoption milestone: MBSE pilots launched in >25% of organizations.
				 * Initial SE theoretical foundations published. Systems thinking introduced
				 * in undergraduate curricula.
				 *
				 * Guard: mbseAdoptionRate > 0.25 AND foundationsPublished = true
				 * Maps to: ProcessesAndMethods ecosystem change level.
				 */

				state adoptingMBSE {
					doc /* Transition to model-based systems engineering practices. */
				}

				state buildingFoundations {
					doc /* Establishing theoretical foundations for SE. */
				}
			}

			state milestone2_MainstreamAdoption {
				doc
				/*
				 * Mainstream Adoption milestone: MBSE as default practice in >50% of projects.
				 * Theoretical foundations validated and integrated into curricula.
				 * Hybrid agile-SE lifecycle methods established.
				 *
				 * Guard: mbseAdoptionRate > 0.50 AND workforcePipelineActive = true
				 * Maps to: EnterpriseAdoption ecosystem change level.
				 */

				state expandingWorkforce {
					doc /* Growing the SE workforce with modern competencies. */
				}

				state addressingChallenges {
					doc /* Tackling systemic challenges: tool fragmentation, adoption barriers. */
				}
			}

			state milestone3_FullIntegration {
				doc
				/*
				 * Full Integration milestone: Digital engineering ecosystem operational
				 * across industry. Workforce pipeline producing graduates with SE
				 * competencies. Continuous improvement culture established.
				 *
				 * Guard: digitalEcosystemOperational = true AND mbseAdoptionRate > 0.80
				 * Maps to: OrganizationalLearning ecosystem change level.
				 */

				state ecosystemOperational {
					doc /* Digital engineering ecosystem fully operational. */
				}

				state continuousImprovement {
					doc /* Sustained transformation through knowledge management. */
				}
			}

			transition earlyToMainstream
				first milestone1_EarlyAdoption
				then milestone2_MainstreamAdoption;

			transition mainstreamToFull
				first milestone2_MainstreamAdoption
				then milestone3_FullIntegration;
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
	// Milestone-to-Ecosystem Mapping
	// ================================================================================

	part def MilestoneEcosystemMapping {
		doc
		/*
		 * Maps the three transformation milestones to the three ecosystem
		 * change levels, establishing the correspondence between the state
		 * machine progression and the organizational transformation depth.
		 */

		attribute milestone1Level : String := "ProcessesAndMethods";
		attribute milestone2Level : String := "EnterpriseAdoption";
		attribute milestone3Level : String := "OrganizationalLearning";
	}

	// ================================================================================
	// Academic Stakeholder Recommendations
	// ================================================================================

	requirement def AcademicRecommendations {
		@DocumentSource { chapter = 4; sectionRef = "4.2"; pageRange = "40-42"; }
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
		@DocumentSource { chapter = 4; sectionRef = "4.3"; pageRange = "42-44"; }
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
