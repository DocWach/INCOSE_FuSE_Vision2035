package GlobalContext {
	doc
	/*
	 * INCOSE SE Vision 2035: Chapter 1 - The Global Context for Systems Engineering
	 *
	 * This package models the global megatrends, technology trends, stakeholder expectations,
	 * and enterprise environment that shape the future of systems engineering.
	 */

	private import ScalarValues::*;
	private import SETypes::*;

	// ==========================================
	// 6 Megatrends
	// ==========================================

	part def EnvironmentalSustainability {
		doc
		/*
		 * Society will emphasize reuse and circular economies, requiring better management
		 * of non-renewable resources. Shifts toward clean energy. Engineers assess societal
		 * impacts of engineered systems.
		 */

		attribute description : String := "Society will emphasize reuse and circular economies, requiring better management of non-renewable resources. Shifts toward clean energy. Engineers assess societal impacts of engineered systems.";
	}

	part def InterconnectedWorld {
		doc
		/*
		 * Advanced communications create political and economic interdependence. Space-based
		 * internet, telepresence, telemedicine. Systems engineers must address cyber-resilience.
		 */

		attribute description : String := "Advanced communications create political and economic interdependence. Space-based internet, telepresence, telemedicine. Systems engineers must address cyber-resilience.";
	}

	part def DigitalTransformation {
		doc
		/*
		 * Enterprises modernize through robust digital representations. Knowledge engineering
		 * and data analytics underpin decision-making. Digital twins, VR/AR, AI throughout lifecycle.
		 */

		attribute description : String := "Enterprises modernize through robust digital representations. Knowledge engineering and data analytics underpin decision-making. Digital twins, VR/AR, AI throughout lifecycle.";
	}

	part def Industry4Society5 {
		doc
		/*
		 * Industry reinvents via cyber-physical systems. Smart factories, digital chains.
		 * Society 5.0 balances economic advancement with social problem-solving. Addresses UN SDGs.
		 */

		attribute description : String := "Industry reinvents via cyber-physical systems. Smart factories, digital chains. Society 5.0 balances economic advancement with social problem-solving. Addresses UN SDGs.";
	}

	part def ComplexityExplosion {
		doc
		/*
		 * Complexity from increased coupling creating dependencies, vulnerabilities, risks.
		 * Smart houses, modern automobiles, energy networks as systems-of-systems.
		 */

		attribute description : String := "Complexity from increased coupling creating dependencies, vulnerabilities, risks. Smart houses, modern automobiles, energy networks as systems-of-systems.";
	}

	part def SmartSystemsProliferation {
		doc
		/*
		 * AI-enabled systems with automation, autonomy, advanced sensors. Non-determinism
		 * raises verifiability concerns. Public trust as critical concern.
		 */

		attribute description : String := "AI-enabled systems with automation, autonomy, advanced sensors. Non-determinism raises verifiability concerns. Public trust as critical concern.";
	}

	// ==========================================
	// Cross-cutting Theme
	// ==========================================

	part def SoftwareExpansionTheme {
		doc
		/*
		 * The ever-expanding role of software-implemented capabilities for system-level
		 * behaviors as well as the monitor and control of individual components cuts
		 * across all six megatrends.
		 */
	}

	// ==========================================
	// 10 Technology Trends
	// ==========================================

	enum def TechnologyTrend {
		@DocumentSource { chapter = 1; sectionRef = "1.2"; pageRange = "10-13"; }
		doc
		/*
		 * Ten key technology trends shaping the future of systems engineering,
		 * from advanced materials to quantum information science.
		 */

		advancedMaterials;
		modelingAndSimulation;
		autonomyAndAI;
		bigDataAnalytics;
		bioNanoTech;
		communicationsTech;
		edgeComputing;
		geospatialTech;
		powerGeneration;
		quantumInformationScience;
	}

	// ==========================================
	// 10 Stakeholder Expectations
	// ==========================================

	requirement def Simple {
		doc
		/*
		 * Hide design complexity, simple user interfaces, understandably failure tolerant,
		 * easy to use.
		 */
	}

	requirement def Timely {
		doc
		/*
		 * Developed and deployed quickly to match customer demand and market conditions.
		 */
	}

	requirement def Safe {
		doc
		/*
		 * Assure human, environmental, and property safety with resilience despite
		 * increasing complexity.
		 */
	}

	requirement def Secure {
		doc
		/*
		 * Continuous threat assessment and cyber-defense against intrusions throughout lifecycle.
		 */
	}

	requirement def StableAndPredictable {
		doc
		/*
		 * Operate reliably across varied use cases and stress conditions.
		 */
	}

	requirement def Smart {
		doc
		/*
		 * Capable of adapting to changing environments, assisting operators, or self-organizing.
		 */
	}

	requirement def Sustainable {
		doc
		/*
		 * Minimize waste and environmental impact.
		 */
	}

	requirement def Maintainable {
		doc
		/*
		 * Designed considering full lifecycle costs, product evolution, knowledge capture.
		 */
	}

	requirement def Scalable {
		doc
		/*
		 * Adaptable across performance ranges without fundamental architectural changes.
		 */
	}

	requirement def Affordable {
		doc
		/*
		 * Provide value within total cost of ownership to all stakeholders.
		 */
	}

	// ==========================================
	// Enterprise Environment
	// ==========================================

	part def EnterpriseEnvironment {
		@DocumentSource { chapter = 1; sectionRef = "1.4"; pageRange = "15-17"; }
		doc
		/*
		 * The evolving enterprise environment characterized by globalization,
		 * sustainability focus, systems thinking culture, digital transformation,
		 * and supply chain evolution.
		 */

		attribute globalization : String := "Greater globalization, embracing diversity, innovation, and new collaboration methods";
		attribute sustainabilityFocus : String := "Ethics and sustainability central to enterprise identity";
		attribute systemsThinkingCulture : String := "Systems thinking grows to address product, production, and organizational complexity";
		attribute digitalTransformation : String := "Increased reliance on quantitative decision making, streamlined processes, and automation";
		attribute supplyChainEvolution : String := "Systems-cognizant subcontractors who can deal with functionality trade-offs and risk decisions";
	}

	// ==========================================
	// Human and Societal Needs
	// ==========================================

	part def HumanSocietalNeeds {
		doc
		/*
		 * Human and societal needs that drive systems engineering, including the
		 * United Nations Sustainable Development Goals (UN SDGs) and the National
		 * Academy of Engineering (NAE) Grand Challenges. These represent the
		 * broader context within which engineered systems must operate and
		 * contribute to global well-being.
		 */
	}
}
