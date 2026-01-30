package Challenges {
	doc /*
	 * Systems Engineering Challenges from INCOSE Vision 2035
	 * Chapters 2 and 4
	 */

	private import ScalarValues::*;
	private import SETypes::*;

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
		attribute targetMaturity : Real;

		requirement climateSEContribution {
			doc /* SE methods applied to climate change mitigation with measurable impact metrics. */
		}
		requirement policyEngagement {
			doc /* SE frameworks adopted in PESTEL-aware policy development processes. */
		}
		requirement crossDomainApplication {
			doc /* SE applied across infrastructure, security, healthcare, and space exploration domains. */
		}
	}

	requirement def ScalableDemonstratedValue {
		doc /*
		 * Apply systems engineering across enterprises of varying sizes and domains.
		 * Prove value for small, medium, and large organizations. Share knowledge
		 * and lessons learned to demonstrate scalability and return on investment.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::applications;
		attribute targetMaturity : Real;

		requirement smallEnterpriseAdoption {
			doc /* SE practices tailored and demonstrated for organizations with <100 engineers. */
		}
		requirement roiDemonstration {
			doc /* Measurable return on investment documented for >70% of SE engagements. */
			attribute roiThreshold : Real := 0.70;
		}
		requirement knowledgeSharingPlatform {
			doc /* Lessons learned and best practices shared across domains via accessible repositories. */
		}
		requirement domainScalabilityEvidence {
			doc /* SE value demonstrated in at least 5 distinct industry domains with published case studies. */
		}
	}

	// PRACTICES CHALLENGES

	requirement def DynamicEnvironmentResponse {
		doc /*
		 * Anticipate and adapt to constantly changing stakeholder expectations,
		 * regulations, technology, and disruptions. Reduce development cycle times
		 * while maintaining quality and robustness in uncertain environments.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
		attribute targetMaturity : Real;

		requirement cycleTimeReduction {
			doc /* Development cycle times reduced by >30% compared to traditional approaches. */
			attribute reductionThreshold : Real := 0.30;
		}
		requirement regulatoryAdaptation {
			doc /* SE processes accommodate regulatory changes within one iteration cycle. */
		}
		requirement disruptionResilience {
			doc /* Systems designed to maintain >90% operational capability under disruption scenarios. */
			attribute resilienceThreshold : Real := 0.90;
		}
	}

	requirement def ModelBasedSEAsStandard {
		doc /*
		 * Digital system representations supporting simulation, multi-disciplinary
		 * analysis, and immersive visualization. Enable shared stakeholder understanding
		 * through automation and computation. Transition from document-centric to
		 * model-centric engineering as the standard practice.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
		attribute targetMaturity : Real;

		requirement modelingStandardAdoption {
			doc /* >80% of SE projects use standardized modeling languages. */
			attribute adoptionThreshold : Real := 0.80;
		}
		requirement simulationDrivenDesign {
			doc /* Models directly executable for multi-disciplinary simulation and analysis. */
		}
		requirement documentToModelTransition {
			doc /* Organizations transition from document-centric to model-centric as default practice. */
		}
		requirement digitalTwinCoverage {
			doc /* Digital twin representations maintained for >60% of system lifecycle phases. */
			attribute coverageThreshold : Real := 0.60;
		}
	}

	requirement def ComplexSystemsAnalysis {
		doc /*
		 * Provide analytical tools for increasingly interconnected, autonomous systems.
		 * Address safety, trustworthiness, and resilience concerns. Analyze system
		 * behavior under adverse conditions including cascading failures, emergent
		 * behaviors, and adaptation to unexpected scenarios.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
		attribute targetMaturity : Real;

		requirement cascadingFailureAnalysis {
			doc /* Analytical methods identify >95% of cascading failure paths in interconnected systems. */
			attribute detectionThreshold : Real := 0.95;
		}
		requirement emergentBehaviorDetection {
			doc /* Tools detect and characterize emergent behaviors in system-of-systems architectures. */
		}
		requirement safetyTrustworthinessAssurance {
			doc /* Quantitative safety and trustworthiness metrics defined and validated for autonomous systems. */
		}
		requirement adverseConditionSimulation {
			doc /* Systems analyzed under adverse conditions including environmental, cyber, and operational threats. */
		}
	}

	requirement def ReuseAndComposability {
		doc /*
		 * Capture and embed engineering knowledge in reusable formats. Implement
		 * product-line engineering, design patterns, and composable architecture.
		 * Enable systematic reuse across projects and domains to improve efficiency
		 * and reduce redundant effort.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;
		attribute targetMaturity : Real;

		requirement reuseRateTarget {
			doc /* >50% of system components sourced from verified reusable asset libraries. */
			attribute reuseThreshold : Real := 0.50;
		}
		requirement productLineArchitecture {
			doc /* Product-line engineering practices established with configurable variability models. */
		}
		requirement designPatternCatalog {
			doc /* Curated catalog of SE design patterns maintained and accessible across domains. */
		}
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
		attribute targetMaturity : Real;

		requirement distributedTeamIntegration {
			doc /* Globally distributed teams collaborate with <5% overhead compared to co-located teams. */
			attribute overheadThreshold : Real := 0.05;
		}
		requirement lifecycleDataGovernance {
			doc /* Lifecycle data access controlled with role-based security across supply chain partners. */
		}
		requirement standardizedPlatformInterfaces {
			doc /* >75% of collaboration tools interoperate via standardized APIs and data formats. */
			attribute interopThreshold : Real := 0.75;
		}
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
		attribute targetMaturity : Real;

		requirement theoreticalBaseFormalization {
			doc /* Core SE principles formalized with mathematical or logical foundations. */
		}
		requirement evidenceBasedCurricula {
			doc /* >80% of accredited SE programs adopt evidence-based curricula over anecdotal methods. */
			attribute curriculaThreshold : Real := 0.80;
		}
		requirement domainComplexityTailoring {
			doc /* SE practices systematically adapted to domain-specific complexity and risk profiles. */
		}
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
		attribute targetMaturity : Real;

		requirement curriculaIntegration {
			doc /* Systems thinking integrated into >60% of accredited engineering degree programs. */
			attribute integrationThreshold : Real := 0.60;
		}
		requirement lifelongLearningSupport {
			doc /* Continuing education pathways available for practicing engineers to update SE skills. */
		}
		requirement crossDisciplinaryCompetency {
			doc /* Non-specialist engineers demonstrate baseline systems thinking competency via assessment. */
		}
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

		requirement proprietaryFormatFragmentation {
			doc /* Specialized tools use incompatible proprietary data formats hindering exchange. */
		}
		requirement standardsAdoptionGap {
			doc /* FMI, OSLC, SysML, and UAF standards exist but adoption remains incomplete across industry. */
		}
		requirement toolChainInteroperability {
			doc /* End-to-end tool chains require manual data transformation at integration points. */
		}
	}

	requirement def SoftwareComplexityAndAgility {
		doc /*
		 * Software prevalence requires adapting agile methodologies, DevOps, and
		 * continuous deployment to cyber-physical systems while balancing regulatory
		 * requirements. Traditional waterfall approaches too slow, but pure agile
		 * insufficient for safety-critical hardware-software integration.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::practices;

		requirement cyberPhysicalAgileGap {
			doc /* Pure agile methods insufficient for safety-critical hardware-software integration. */
		}
		requirement regulatoryComplianceConflict {
			doc /* Continuous deployment practices conflict with regulatory approval cycles. */
		}
		requirement hybridLifecycleNeed {
			doc /* No mature hybrid lifecycle balancing agile speed with waterfall rigor for CPS. */
		}
	}

	requirement def AIAndAutonomousSystems {
		doc /*
		 * Traditional SE approaches insufficient for self-learning systems. Lack
		 * of methods for ensuring training data quality, eliminating bias, and
		 * validation of opaque decision-making. Need new verification and validation
		 * techniques for AI/ML systems that adapt and evolve post-deployment.
		 */
		attribute category : ChallengeCategory := ChallengeCategory::research;

		requirement trainingDataQuality {
			doc /* No established SE methods for ensuring training data quality and eliminating bias. */
		}
		requirement opaqueDecisionValidation {
			doc /* Traditional V&V techniques cannot validate opaque AI/ML decision-making processes. */
		}
		requirement postDeploymentEvolution {
			doc /* Lack of SE frameworks for systems that self-learn and adapt after deployment. */
		}
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
