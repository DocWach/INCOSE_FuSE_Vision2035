package FuSEProgram {
	doc
	/*
	 * INCOSE FuSE (Future of Systems Engineering) Initiative
	 *
	 * Models the organizational structure, streams, charter, and timeline
	 * of the FuSE program aimed at realizing the SE Vision 2035.
	 */

	private import ScalarValues::*;

	// ===================================================================
	// Program Charter
	// ===================================================================

	part def FuSECharter {
		doc
		/*
		 * FuSE Program Charter defining vision, mission, and success factors
		 * for the Future of Systems Engineering initiative.
		 */

		attribute vision : String := "Inspire the global community to realize the Vision of SE";
		attribute mission : String := "Engage and inspire the systems community for sustaining the future of systems engineering in realizing the SE Vision 2035";
	}

	// ===================================================================
	// Mission Pillars
	// ===================================================================

	requirement def RefineAndEvolve {
		doc
		/*
		 * FuSE refines and evolves the SE Vision 2035 across competencies,
		 * research, tools and environment, practices, and applications.
		 */

		subject fuseProgram : FuSEOrganization;
	}

	requirement def IdentifyGaps {
		doc
		/*
		 * FuSE identifies critical gaps towards the vision realization and
		 * initiates and supports relevant actions.
		 */

		subject fuseProgram : FuSEOrganization;
	}

	requirement def FosterCollaboration {
		doc
		/*
		 * FuSE fosters involvement and collaboration within and outside
		 * of INCOSE.
		 */

		subject fuseProgram : FuSEOrganization;
	}

	requirement def EducateAndExpand {
		doc
		/*
		 * FuSE educates, shares success, and expands.
		 */

		subject fuseProgram : FuSEOrganization;
	}

	// ===================================================================
	// Success Factors
	// ===================================================================

	enum def SuccessFactor {
		inclusive {
			doc
			/*
			 * From an exclusive club to inclusive initiative
			 */
		}

		attractive {
			doc
			/*
			 * Engage members and nonmembers
			 */
		}

		implementation {
			doc
			/*
			 * The degree to which the road map is realized
			 */
		}

		fresh {
			doc
			/*
			 * Relevant and updated road map and context
			 */
		}

		closeToApplication {
			doc
			/*
			 * Involvement of companies and domains
			 */
		}

		globalPromotion {
			doc
			/*
			 * Attractive global digital marketing
			 */
		}

		passion {
			doc
			/*
			 * To get the working group proud to be part of it
			 */
		}
	}

	// ===================================================================
	// Central Team Definitions
	// ===================================================================

	part def ProgramLead {
		doc
		/*
		 * FuSE Program Lead
		 */

		attribute name : String := "William D. Miller";
	}

	part def ExecutiveTeam {
		doc
		/*
		 * FuSE Program Executive Team
		 */
	}

	part def CommunicationsOutreachOffice {
		doc
		/*
		 * FuSE Communications and Outreach Office
		 */
	}

	part def ProgramManagementOffice {
		doc
		/*
		 * FuSE Program Management Office
		 */
	}

	// ===================================================================
	// Stream Definitions
	// ===================================================================

	part def SEVisionAndRoadmaps {
		doc
		/*
		 * SE Vision and Roadmaps Stream
		 *
		 * Continuously refines, evolves, and complements the SE Vision 2035.
		 * Creates an integrated set of roadmaps across the four interrelated
		 * FuSE streams.
		 */

		attribute streamLead : String := "Paul Schreinemakers";
		attribute iwGoal : String := "Frame the structural relationships and value models for the roadmaps creation";

		// Sub-projects
		attribute sev2034 : String := "SEV2034";
		attribute react : String := "REAct";
		attribute fuseRoadmap : String := "FuSERoadmap";

		out attribute visionDirection : String;
		out attribute roadmapUpdates : String;
		in attribute streamFeedback : String;
	}

	part def SEFoundations {
		doc
		/*
		 * SE Foundations Stream
		 *
		 * Formulate a set of candidate underlying Laws of Systemics, the science
		 * at the foundation of Systems Engineering. Built on foundational principles
		 * that are provably true and based on laws and axioms that can be tested
		 * for falsifiability.
		 */

		attribute streamLead : String := "Oli de Weck";
		attribute iwGoal : String := "Assess the foundational value of the Conservation of System Complexity";

		// Sub-projects
		attribute bridgeTeam : String := "BridgeTeam";
		attribute seHeuristicsV5 : String := "SEHeuristicsV5";
		attribute sePrinciples : String := "SEPrinciples";
		attribute scienceFoundationsForSE : String := "ScienceFoundationsForSE";

		out attribute researchFindings : String;
		out attribute theoreticalFrameworks : String;
		in attribute methodologyNeeds : String;
		in attribute applicationInsights : String;
	}

	part def SEMethodologies {
		doc
		/*
		 * SE Methodologies Stream
		 *
		 * Guides the advancement of practices, methods, and tools for the effective
		 * engineering of systems to be fit for purpose in the presence of varying
		 * scale, interrelatedness, complexity, non-determinism, and emerging
		 * technology innovations.
		 */

		attribute streamLead : String := "Chris Hoffman";
		attribute iwGoal : String := "Assess the adequacy of current INCOSE technical products and ongoing FuSE projects and identify gaps";

		// Sub-projects
		attribute se4AI_AI4SE : String := "SE4AI_AI4SE";
		attribute humanSystemsIntegration : String := "HumanSystemsIntegration";
		attribute systemSecurity : String := "SystemSecurity";
		attribute agility : String := "Agility";
		attribute complexSystems : String := "ComplexSystems";
		attribute socialSystems : String := "SocialSystems";

		in attribute foundationalTheory : String;
		out attribute methodGuides : String;
		out attribute toolRequirements : String;
		in attribute practiceGaps : String;
	}

	part def SEApplicationExtensions {
		doc
		/*
		 * SE Application Extensions Stream
		 *
		 * Integrates social sciences, soft systems, as well as initiatives such as
		 * Smart Cities to address grand challenges to meet human and societal needs
		 * as stated in the United Nations Sustainable Development Goals.
		 */

		attribute streamLead : String := "Tom Strandberg";
		attribute iwGoal : String := "Frame the value model to justify systems engineering's role at the policy table for grand challenges";

		// Sub-projects
		attribute contextualEcosystems : String := "ContextualEcosystems";
		attribute smartCities : String := "SmartCities";

		in attribute methodsAndTools : String;
		out attribute domainCaseStudies : String;
		out attribute applicationFeedback : String;
	}

	// ===================================================================
	// Stream Interaction Connections
	// ===================================================================

	connection def StreamInteraction {
		doc
		/*
		 * Information flow between FuSE streams representing knowledge transfer,
		 * feedback loops, and artifact exchange.
		 */
	}

	connection def VisionToStreams :> StreamInteraction {
		doc
		/*
		 * Vision and roadmaps provide strategic direction to all other streams.
		 */
	}

	connection def FoundationsToMethodologies :> StreamInteraction {
		doc
		/*
		 * Research findings and theoretical frameworks flow from Foundations
		 * to Methodologies for codification into practices.
		 */
	}

	connection def MethodologiesToApplications :> StreamInteraction {
		doc
		/*
		 * Method guides and tool requirements flow from Methodologies to
		 * Application Extensions for domain-specific deployment.
		 */
	}

	connection def ApplicationsToVision :> StreamInteraction {
		doc
		/*
		 * Domain case studies and application feedback flow from Application
		 * Extensions back to Vision for roadmap refinement.
		 */
	}

	connection def MethodologiesToFoundations :> StreamInteraction {
		doc
		/*
		 * Methodology needs and practice gaps feed back to Foundations
		 * to guide future research priorities.
		 */
	}

	// ===================================================================
	// Organizational Structure
	// ===================================================================

	part def FuSEOrganization {
		doc
		/*
		 * FuSE program organizational structure with central teams and four streams.
		 *
		 * The organization consists of:
		 * - Program Lead
		 * - Executive Team
		 * - Communications and Outreach Office
		 * - Program Management Office
		 * - Four thematic streams focusing on vision, foundations, methodologies,
		 *   and application extensions
		 */

		part programLead : ProgramLead;
		part executiveTeam : ExecutiveTeam;
		part comAndOutreach : CommunicationsOutreachOffice;
		part pmo : ProgramManagementOffice;

		// Four Streams
		part visionStream : SEVisionAndRoadmaps;
		part foundationsStream : SEFoundations;
		part methodologiesStream : SEMethodologies;
		part applicationExtensionsStream : SEApplicationExtensions;

		// Stream Interactions
		connection visionToFoundations : VisionToStreams {
			doc /* Strategic direction flows from Vision to Foundations. */
		}
		connection visionToMethodologies : VisionToStreams {
			doc /* Strategic direction flows from Vision to Methodologies. */
		}
		connection visionToApplications : VisionToStreams {
			doc /* Strategic direction flows from Vision to Applications. */
		}
		connection foundationsToMethods : FoundationsToMethodologies {
			doc /* Research and theory flows from Foundations to Methodologies. */
		}
		connection methodsToApps : MethodologiesToApplications {
			doc /* Methods and tools flow from Methodologies to Applications. */
		}
		connection appsToVision : ApplicationsToVision {
			doc /* Case studies and feedback flow from Applications back to Vision. */
		}
		connection methodsToFoundations : MethodologiesToFoundations {
			doc /* Practice gaps feed back from Methodologies to Foundations. */
		}
	}

	// ===================================================================
	// Timeline
	// ===================================================================

	part def FuSETimeline {
		doc
		/*
		 * FuSE Program Timeline from inception through target horizon
		 */

		attribute inception : String := "IW 2018";
		attribute nextPhaseLaunch : String := "IW 2023";
		attribute targetHorizon : Natural := 2035;
	}
}
