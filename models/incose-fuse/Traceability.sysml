package Traceability {
	doc /*
	 * Cross-cutting traceability relationships between Vision 2035 elements
	 * and FuSE streams. Models how megatrends drive challenges, how challenges
	 * map to FuSE streams, and how capabilities and competencies support
	 * addressing the challenges.
	 */

	private import ScalarValues::*;
	private import GlobalContext::*;
	private import Challenges::*;
	private import Competencies::*;
	private import FutureState::*;
	private import FuSEProgram::*;

	// ================================================================
	// Connection Definitions for Traceability
	// ================================================================

	connection def AddressesChallenge {
		doc /* A FuSE stream addressing a specific Vision 2035 challenge. */
	}

	connection def DrivesChallenge {
		doc /* A global megatrend driving a specific SE challenge. */
	}

	connection def EnablesCapability {
		doc /* A challenge being addressed by a future state capability. */
	}

	connection def SupportsChallenge {
		doc /* A competency domain supporting the resolution of a challenge. */
	}

	// ================================================================
	// Challenge-to-Stream Mapping
	// ================================================================

	part def ChallengeStreamMapping {
		doc /*
		 * Maps the 9 Vision 2035 challenges to the 4 FuSE streams
		 * responsible for addressing them.
		 */

		// SE Vision and Roadmaps Stream
		connection visionRoadmaps_societalProblem : AddressesChallenge {
			doc /*
			 * SE Vision and Roadmaps addresses societal problem solving by
			 * defining strategic directions and ensuring SE evolves to meet
			 * societal needs.
			 */
			end source : SEVisionAndRoadmaps;
			end target : SocietalProblemSolving;
		}

		connection visionRoadmaps_scalableValue : AddressesChallenge {
			doc /*
			 * SE Vision and Roadmaps addresses scalable demonstrated value by
			 * establishing frameworks for measuring and communicating SE impact.
			 */
			end source : SEVisionAndRoadmaps;
			end target : ScalableDemonstratedValue;
		}

		// SE Foundations Stream
		connection foundations_theoretical : AddressesChallenge {
			doc /*
			 * SE Foundations addresses theoretical foundations and curriculum by
			 * developing rigorous academic frameworks and educational standards.
			 */
			end source : SEFoundations;
			end target : TheoreticalFoundationsAndCurriculum;
		}

		connection foundations_complexSystems : AddressesChallenge {
			doc /*
			 * SE Foundations addresses complex systems analysis by establishing
			 * theoretical underpinnings for understanding and managing complexity.
			 */
			end source : SEFoundations;
			end target : ComplexSystemsAnalysis;
		}

		// SE Methodologies Stream
		connection methodologies_dynamicEnvironment : AddressesChallenge {
			doc /*
			 * SE Methodologies addresses dynamic environment response by developing
			 * adaptive processes and agile SE practices.
			 */
			end source : SEMethodologies;
			end target : DynamicEnvironmentResponse;
		}

		connection methodologies_mbse : AddressesChallenge {
			doc /*
			 * SE Methodologies addresses making MBSE standard practice by developing
			 * tools, processes, and adoption frameworks.
			 */
			end source : SEMethodologies;
			end target : ModelBasedSEAsStandard;
		}

		connection methodologies_reuse : AddressesChallenge {
			doc /*
			 * SE Methodologies addresses reuse and composability by establishing
			 * patterns, reference architectures, and modular design practices.
			 */
			end source : SEMethodologies;
			end target : ReuseAndComposability;
		}

		// SE Application Extensions Stream
		connection applications_societal : AddressesChallenge {
			doc /*
			 * SE Application Extensions addresses societal problem solving by
			 * extending SE methods to sustainability and social systems domains.
			 */
			end source : SEApplicationExtensions;
			end target : SocietalProblemSolving;
		}

		connection applications_digitalEcosystem : AddressesChallenge {
			doc /*
			 * SE Application Extensions addresses collaborative digital ecosystems
			 * by developing platforms and standards for distributed SE practice.
			 */
			end source : SEApplicationExtensions;
			end target : CollaborativeDigitalEcosystem;
		}
	}

	// ================================================================
	// Megatrend-to-Challenge Traceability
	// ================================================================

	part def MegatrendChallengeTracing {
		doc /*
		 * Traces how global megatrends drive specific SE challenges.
		 * Understanding these drivers helps prioritize challenge responses.
		 */

		connection envSustainability_societal : DrivesChallenge {
			doc /* Environmental sustainability drives need for SE to address societal problems. */
			end source : EnvironmentalSustainability;
			end target : SocietalProblemSolving;
		}

		connection digitalTransform_mbse : DrivesChallenge {
			doc /* Digital transformation drives the imperative to make MBSE standard practice. */
			end source : DigitalTransformation;
			end target : ModelBasedSEAsStandard;
		}

		connection digitalTransform_collaborative : DrivesChallenge {
			doc /* Digital transformation enables and requires collaborative digital ecosystems. */
			end source : DigitalTransformation;
			end target : CollaborativeDigitalEcosystem;
		}

		connection complexity_analysis : DrivesChallenge {
			doc /* Complexity explosion drives need for advanced analytical methods. */
			end source : ComplexityExplosion;
			end target : ComplexSystemsAnalysis;
		}

		connection complexity_dynamic : DrivesChallenge {
			doc /* Growing complexity requires SE to respond dynamically to change. */
			end source : ComplexityExplosion;
			end target : DynamicEnvironmentResponse;
		}

		connection smartSystems_analysis : DrivesChallenge {
			doc /* Smart systems proliferation drives new methods for analyzing emergent behaviors. */
			end source : SmartSystemsProliferation;
			end target : ComplexSystemsAnalysis;
		}

		connection smartSystems_education : DrivesChallenge {
			doc /* Rapid advancement in smart systems requires continuous SE education. */
			end source : SmartSystemsProliferation;
			end target : ContinuousSEEducation;
		}

		connection interconnected_collaborative : DrivesChallenge {
			doc /* Interconnected world requires collaborative ecosystems spanning boundaries. */
			end source : InterconnectedWorld;
			end target : CollaborativeDigitalEcosystem;
		}

		connection interconnected_scalable : DrivesChallenge {
			doc /* Global interconnection demands scalable approaches to demonstrating SE value. */
			end source : InterconnectedWorld;
			end target : ScalableDemonstratedValue;
		}

		connection industry4_reuse : DrivesChallenge {
			doc /* Industry 4.0 drives need for reusable, composable system elements. */
			end source : Industry4Society5;
			end target : ReuseAndComposability;
		}

		connection industry4_societal : DrivesChallenge {
			doc /* Society 5.0 drives SE to focus on solving societal problems. */
			end source : Industry4Society5;
			end target : SocietalProblemSolving;
		}
	}

	// ================================================================
	// Challenge-to-Capability Traceability
	// ================================================================

	part def ChallengeCapabilityTracing {
		doc /*
		 * Traces how Vision 2035 challenges are addressed by future state
		 * capabilities. Shows technological and methodological enablers.
		 */

		connection mbse_mbseCapability : EnablesCapability {
			doc /* MBSE as standard is enabled by advancing model-based SE capabilities. */
			end source : ModelBasedSEAsStandard;
			end target : ModelBasedSystemsEngineering;
		}

		connection mbse_connectedData : EnablesCapability {
			doc /* MBSE requires a connected data layer integrating models and simulations. */
			end source : ModelBasedSEAsStandard;
			end target : ConnectedDataLayer;
		}

		connection complexSystems_simulation : EnablesCapability {
			doc /* Complex systems analysis enabled by multi-scale simulation. */
			end source : ComplexSystemsAnalysis;
			end target : MultiScaleSimulation;
		}

		connection complexSystems_dataScience : EnablesCapability {
			doc /* Complex systems analysis requires data science and ML integration. */
			end source : ComplexSystemsAnalysis;
			end target : DataScienceIntegration;
		}

		connection collaborative_compute : EnablesCapability {
			doc /* Collaborative ecosystems require massive parallel computing infrastructure. */
			end source : CollaborativeDigitalEcosystem;
			end target : MassiveParallelCompute;
		}

		connection collaborative_xr : EnablesCapability {
			doc /* Collaborative ecosystems enhanced by extended reality technologies. */
			end source : CollaborativeDigitalEcosystem;
			end target : ExtendedReality;
		}

		connection dynamic_flexible : EnablesCapability {
			doc /* Dynamic environments require flexible, resilient architectures. */
			end source : DynamicEnvironmentResponse;
			end target : FlexibleResilientArchitectures;
		}

		connection education_workforce : EnablesCapability {
			doc /* Continuous education enabled by the Workforce Vision 2035. */
			end source : ContinuousSEEducation;
			end target : WorkforceVision2035;
		}
	}

	// ================================================================
	// Competency-to-Challenge Traceability
	// ================================================================

	part def CompetencyChallengeTracing {
		doc /*
		 * Maps competency domains to the challenges they help address.
		 * Guides workforce development and educational program design.
		 */

		connection core_theoretical : SupportsChallenge {
			doc /* Core SE principles provide theoretical foundations for curriculum. */
			end source : CoreSEPrinciples;
			end target : TheoreticalFoundationsAndCurriculum;
		}

		connection technical_mbse : SupportsChallenge {
			doc /* Technical competencies are essential for making MBSE standard practice. */
			end source : TechnicalCompetencies;
			end target : ModelBasedSEAsStandard;
		}

		connection technical_complex : SupportsChallenge {
			doc /* Technical competencies enable analysis of complex system behaviors. */
			end source : TechnicalCompetencies;
			end target : ComplexSystemsAnalysis;
		}

		connection professional_scalable : SupportsChallenge {
			doc /* Professional competencies are critical for demonstrating SE value at scale. */
			end source : ProfessionalCompetencies;
			end target : ScalableDemonstratedValue;
		}

		connection professional_dynamic : SupportsChallenge {
			doc /* Professional competencies enable effective response to dynamic environments. */
			end source : ProfessionalCompetencies;
			end target : DynamicEnvironmentResponse;
		}

		connection management_collaborative : SupportsChallenge {
			doc /* SE management competencies support collaborative digital ecosystems. */
			end source : SEManagementCompetencies;
			end target : CollaborativeDigitalEcosystem;
		}

		connection integrating_societal : SupportsChallenge {
			doc /* Integrating competencies enable multidisciplinary societal problem solving. */
			end source : IntegratingCompetencies;
			end target : SocietalProblemSolving;
		}
	}

	// ================================================================
	// Master Traceability Model
	// ================================================================

	part def MasterTraceability {
		doc /*
		 * Integrates all trace relationships into a comprehensive view
		 * of how Vision 2035 elements interconnect.
		 */

		part challengeStreamMap : ChallengeStreamMapping {
			doc /* Challenge-to-stream allocation mapping. */
		}

		part megatrendTraces : MegatrendChallengeTracing {
			doc /* Megatrend-to-challenge driver relationships. */
		}

		part capabilityTraces : ChallengeCapabilityTracing {
			doc /* Challenge-to-capability enablement relationships. */
		}

		part competencyTraces : CompetencyChallengeTracing {
			doc /* Competency-to-challenge support relationships. */
		}
	}
}
