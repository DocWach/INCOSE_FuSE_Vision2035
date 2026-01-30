package Vision2035 {
	doc /* INCOSE Systems Engineering Vision 2035: Engineering Solutions for a Better World */

	private import ScalarValues::*;
	private import SETypes::*;

	enum def DocumentChapter {
		doc /* The four main chapters of the Vision 2035 document */
		Chapter1_GlobalContext;
		Chapter2_CurrentState;
		Chapter3_FutureState;
		Chapter4_RealizingTheVision;
	}

	enum def StakeholderGroup {
		@DocumentSource { chapter = 0; sectionRef = "Introduction"; pageRange = "3-5"; }
		doc /* Seven key stakeholder groups identified in Vision 2035 */
		engineeringLeadership;
		engineeringPractitioners;
		professionalOrganizations;
		researchersEducatorsStudents;
		standardsBodies;
		toolVendors;
		policyMakers;
	}

	enum def ApplicationDomain {
		@DocumentSource { chapter = 0; sectionRef = "Introduction"; pageRange = "5-7"; }
		doc /* Six primary application domains for systems engineering */
		exploration;
		powerAndEnergy;
		transportation;
		information;
		healthcare;
		telecommunication;
	}

	enum def PESTELDimension {
		@DocumentSource { chapter = 1; sectionRef = "1.0"; pageRange = "8-9"; }
		doc /* PESTEL analysis dimensions for global context */
		political;
		economic;
		social;
		technical;
		environmental;
		legal;
	}

	requirement def AddressChallenges {
		doc /* Tackle future systems engineering obstacles */
		subject : System [1];
		require constraint { true }
	}

	requirement def ExpandWorkforce {
		doc /* Broaden the practitioner base */
		subject : System [1];
		require constraint { true }
	}

	requirement def CoordinateEfforts {
		doc /* Align systems engineering initiatives */
		subject : System [1];
		require constraint { true }
	}

	requirement def AdvanceTheField {
		doc /* Promote research, education, and professional practice */
		subject : System [1];
		require constraint { true }
	}

	requirement def ValueStatement {
		doc /* The core value proposition of systems engineering in 2035 */
		subject : System [1];

		requirement solutionArchitecture : SolutionArchitecture {
			doc /* Architect balanced solutions that satisfy diverse stakeholder needs for capability, dependability, sustainability, social acceptability, and ease of use */
		}

		requirement adaptiveCapability : AdaptiveCapability {
			doc /* Adapt to evolving technology and requirements */
		}

		requirement complexityManagement : ComplexityManagement {
			doc /* Effectively manage complexity and risk */
		}

		require constraint { true }
	}

	requirement def SolutionArchitecture {
		doc /* Architect balanced solutions that satisfy diverse stakeholder needs */
		subject : System [1];
		require constraint { true }
	}

	requirement def AdaptiveCapability {
		doc /* Adapt to evolving technology and requirements */
		subject : System [1];
		require constraint { true }
	}

	requirement def ComplexityManagement {
		doc /* Effectively manage complexity and risk */
		subject : System [1];
		require constraint { true }
	}

	part def SEVision2035 {
		doc /* Top-level definition of Systems Engineering Vision 2035 */

		attribute title : String := "Systems Engineering Vision 2035: Engineering Solutions for a Better World";
		attribute publishYear : Natural := 2022;
		attribute targetYear : Natural := 2035;
		attribute publisher : String := "INCOSE";
	}
}
