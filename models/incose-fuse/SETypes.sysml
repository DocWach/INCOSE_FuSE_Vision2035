package SETypes {
	doc
	/*
	 * Shared type definitions for the INCOSE FuSE / Vision 2035 model.
	 *
	 * Provides reusable attribute defs, enum defs, and part defs used across
	 * multiple model packages for maturity assessment, competency proficiency,
	 * project tracking, and document provenance.
	 */

	private import ScalarValues::*;

	// ================================================================
	// Maturity Assessment Types
	// ================================================================

	enum def MaturityLevel {
		doc
		/*
		 * Five-level maturity scale for assessing progress toward
		 * Vision 2035 challenge resolution. Inspired by CMMI levels
		 * adapted for SE transformation context.
		 */
		initial {
			doc /* Ad hoc, reactive. No systematic approach. */
		}
		managed {
			doc /* Basic practices established at project level. */
		}
		defined {
			doc /* Standardized processes across the organization. */
		}
		quantitativelyManaged {
			doc /* Measured and controlled using quantitative techniques. */
		}
		optimizing {
			doc /* Continuous improvement through innovation and optimization. */
		}
	}

	// ================================================================
	// Competency Proficiency Types
	// ================================================================

	enum def ProficiencyLevel {
		doc
		/*
		 * Four-level proficiency scale for systems engineering competencies.
		 * Based on INCOSE competency framework progression.
		 */
		awareness {
			doc /* Can recognize and describe the concept. */
		}
		application {
			doc /* Can apply the skill with guidance in standard situations. */
		}
		expert {
			doc /* Can apply independently, adapt to novel situations, and mentor others. */
		}
		thoughtLeader {
			doc /* Can advance the state of practice and define new approaches. */
		}
	}

	enum def EducationStage {
		doc
		/*
		 * Stages of the systems engineering education pipeline.
		 * Maps to the EducationPipeline structure in Competencies package.
		 */
		primarySecondary {
			doc /* K-12 education with STEM integration. */
		}
		undergraduate {
			doc /* Bachelor's level engineering education. */
		}
		graduate {
			doc /* Master's and doctoral level specialization. */
		}
		earlyCareer {
			doc /* First 5 years of professional practice. */
		}
		midCareer {
			doc /* 5-15 years, taking on technical leadership roles. */
		}
		seniorPractitioner {
			doc /* 15+ years, thought leadership and strategic roles. */
		}
	}

	attribute def CompetencyProfile {
		doc
		/*
		 * Assessment profile for a single competency, capturing current
		 * and target proficiency levels and the education stage at which
		 * the competency is first introduced.
		 */
		attribute targetLevel : ProficiencyLevel;
		attribute introducedAt : EducationStage;
	}

	// ================================================================
	// Project and Program Types
	// ================================================================

	enum def ProjectStatus {
		doc
		/*
		 * Status of a FuSE sub-project or initiative.
		 */
		proposed {
			doc /* Under consideration, not yet approved. */
		}
		active {
			doc /* Approved and in progress. */
		}
		completed {
			doc /* Deliverables produced, objectives met. */
		}
	}

	attribute def SubProjectInfo {
		doc
		/*
		 * Descriptive information for a FuSE sub-project.
		 */
		attribute fullName : String;
		attribute projectObjective : String;
		attribute status : ProjectStatus;
	}

	// ================================================================
	// Challenge Priority Types
	// ================================================================

	enum def PriorityLevel {
		doc
		/*
		 * Priority level for challenge-to-sector or challenge-to-stream mappings.
		 */
		critical {
			doc /* Must be addressed immediately; blocks vision realization. */
		}
		high {
			doc /* Significant impact; should be addressed in near term. */
		}
		medium {
			doc /* Moderate impact; address as resources permit. */
		}
		low {
			doc /* Limited immediate impact; monitor and address opportunistically. */
		}
	}
}
