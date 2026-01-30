package Challenges {
	doc /*
	 * Systems Engineering Challenges from INCOSE Vision 2035
	 * Chapters 2 and 4
	 */

	private import ScalarValues::*;

	enum def ChallengeCategory {
		doc /* Five major categories organizing the SE challenges */
		applications;
		practices;
		toolsAndEnvironment;
		research;
		competencies;
	}

	// APPLICATIONS CHALLENGES

	requirement def SocietalProblemSolving {
		doc /*
		 * Systems engineering must contribute innovative solutions to major societal
		 * challenges including climate change, natural resource management, infrastructure,
		 * security, and space exploration. Supports policy development considering PESTEL
		 * factors (political, economic, social, technological, environmental, legal).
		 */
		attribute category : ChallengeCategory := ChallengeCategory::applications;
	}

	requirement def ScalableDemonstratedValue {
		doc /*
		 * Apply systems engineering across enterprises of varying sizes and domains.
		 * Prove value for small, medium, and large organizations. Share knowledge
		 * and lessons learned to demonstrate scalability and return on investment.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::applications;
	}

	// PRACTICES CHALLENGES

	requirement def DynamicEnvironmentResponse {
		doc /*
		 * Anticipate and adapt to constantly changing stakeholder expectations,
		 * regulations, technology, and disruptions. Reduce development cycle times
		 * while maintaining quality and robustness in uncertain environments.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
	}

	requirement def ModelBasedSEAsStandard {
		doc /*
		 * Digital system representations supporting simulation, multi-disciplinary
		 * analysis, and immersive visualization. Enable shared stakeholder understanding
		 * through automation and computation. Transition from document-centric to
		 * model-centric engineering as the standard practice.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
	}

	requirement def ComplexSystemsAnalysis {
		doc /*
		 * Provide analytical tools for increasingly interconnected, autonomous systems.
		 * Address safety, trustworthiness, and resilience concerns. Analyze system
		 * behavior under adverse conditions including cascading failures, emergent
		 * behaviors, and adaptation to unexpected scenarios.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
	}

	requirement def ReuseAndComposability {
		doc /*
		 * Capture and embed engineering knowledge in reusable formats. Implement
		 * product-line engineering, design patterns, and composable architecture.
		 * Enable systematic reuse across projects and domains to improve efficiency
		 * and reduce redundant effort.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
	}

	// TOOLS AND ENVIRONMENT CHALLENGES

	requirement def CollaborativeDigitalEcosystem {
		doc /*
		 * Enable seamless interaction across globally distributed teams. Manage
		 * lifecycle data access and security. Support trustworthy collaboration
		 * among customers, contractors, and suppliers through integrated digital
		 * platforms and standardized interfaces.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::toolsAndEnvironment;
	}

	// RESEARCH CHALLENGES

	requirement def TheoreticalFoundationsAndCurriculum {
		doc /*
		 * Establish sound theoretical bases replacing grey beard knowledge alone.
		 * Adapt practices to different domains with varying complexity and risk.
		 * Teach foundations consistently through evidence-based curricula grounded
		 * in theory rather than anecdotal experience.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::research;
	}

	// COMPETENCIES CHALLENGES

	requirement def ContinuousSEEducation {
		doc /*
		 * Integrate systems engineering into standard engineering curricula.
		 * Support lifelong learning as practices evolve. Teach systems thinking
		 * to all contributing engineers, not just specialists, to foster
		 * cross-disciplinary collaboration and holistic problem-solving.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::competencies;
	}

	// CURRENT-STATE CHALLENGES (Chapter 2)

	requirement def ToolsAndDataIntegration {
		doc /*
		 * Enormous fragmentation across the engineering tools and data landscape.
		 * Multiple specialized tools with proprietary data formats lacking
		 * standardization. Emerging standards like FMI (Functional Mock-up Interface),
		 * OSLC (Open Services for Lifecycle Collaboration), SysML, and UAF (Unified
		 * Architecture Framework) are helping but adoption is incomplete.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::toolsAndEnvironment;
	}

	requirement def SoftwareComplexityAndAgility {
		doc /*
		 * Software prevalence requires adapting agile methodologies, DevOps, and
		 * continuous deployment to cyber-physical systems while balancing regulatory
		 * requirements. Traditional waterfall approaches too slow, but pure agile
		 * insufficient for safety-critical hardware-software integration.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
	}

	requirement def AIAndAutonomousSystems {
		doc /*
		 * Traditional SE approaches insufficient for self-learning systems. Lack
		 * of methods for ensuring training data quality, eliminating bias, and
		 * validation of opaque decision-making. Need new verification and validation
		 * techniques for AI/ML systems that adapt and evolve post-deployment.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::research;
	}

	// CHALLENGE FRAMEWORK

	part def ChallengeFramework {
		doc /*
		 * Comprehensive framework organizing all INCOSE Vision 2035 challenges
		 * into a coherent structure for addressing the future of systems engineering.
		 */

		// Nine major challenges from Chapter 4
		requirement societalProblemSolving : SocietalProblemSolving;
		requirement scalableDemonstratedValue : ScalableDemonstratedValue;
		requirement dynamicEnvironmentResponse : DynamicEnvironmentResponse;
		requirement modelBasedSEAsStandard : ModelBasedSEAsStandard;
		requirement complexSystemsAnalysis : ComplexSystemsAnalysis;
		requirement reuseAndComposability : ReuseAndComposability;
		requirement collaborativeDigitalEcosystem : CollaborativeDigitalEcosystem;
		requirement theoreticalFoundationsAndCurriculum : TheoreticalFoundationsAndCurriculum;
		requirement continuousSEEducation : ContinuousSEEducation;

		// Three current-state challenges from Chapter 2
		requirement toolsAndDataIntegration : ToolsAndDataIntegration;
		requirement softwareComplexityAndAgility : SoftwareComplexityAndAgility;
		requirement aiAndAutonomousSystems : AIAndAutonomousSystems;
	}
}
