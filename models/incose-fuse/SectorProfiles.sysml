package SectorProfiles {
	doc
	/*
	 * Industry sector challenge priority profiles mapping each of the
	 * 10 industry sectors to prioritized challenge assessments.
	 * Priority assignments are inferred from INCOSE Vision 2035
	 * sector-specific discussion.
	 */

	private import ScalarValues::*;
	private import SETypes::*;

	// ================================================================
	// Aerospace Sector
	// ================================================================

	part aerospaceProfile : SectorChallengeProfile {
		doc /* Aerospace: safety-critical, high complexity, strong MBSE tradition. */
		attribute :>> sectorName := "Aerospace";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::high;
		}
	}

	// ================================================================
	// Defense Sector
	// ================================================================

	part defenseProfile : SectorChallengeProfile {
		doc /* Defense: security-critical, large-scale programs, strong acquisition focus. */
		attribute :>> sectorName := "Defense";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::low;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::low;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::critical;
		}
	}

	// ================================================================
	// Automotive Sector
	// ================================================================

	part automotiveProfile : SectorChallengeProfile {
		doc /* Automotive: rapid innovation cycles, electrification, autonomous driving. */
		attribute :>> sectorName := "Automotive";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::high;
		}
	}

	// ================================================================
	// Healthcare Sector
	// ================================================================

	part healthcareProfile : SectorChallengeProfile {
		doc /* Healthcare: patient safety, regulatory compliance, societal impact. */
		attribute :>> sectorName := "Healthcare";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::medium;
		}
	}

	// ================================================================
	// Information Technology Sector
	// ================================================================

	part informationTechnologyProfile : SectorChallengeProfile {
		doc /* IT: rapid change, digital transformation, cybersecurity demands. */
		attribute :>> sectorName := "InformationTechnology";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::medium;
		}
	}

	// ================================================================
	// Electronics Sector
	// ================================================================

	part electronicsProfile : SectorChallengeProfile {
		doc /* Electronics: miniaturization, supply chain complexity, rapid product cycles. */
		attribute :>> sectorName := "Electronics";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::low;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::low;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::medium;
		}
	}

	// ================================================================
	// Power & Energy Sector
	// ================================================================

	part powerEnergyProfile : SectorChallengeProfile {
		doc /* Power and Energy: grid modernization, renewables integration, societal impact. */
		attribute :>> sectorName := "PowerEnergy";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::high;
		}
	}

	// ================================================================
	// Transportation Sector
	// ================================================================

	part transportationProfile : SectorChallengeProfile {
		doc /* Transportation: multi-modal integration, safety, infrastructure scale. */
		attribute :>> sectorName := "Transportation";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::high;
		}
	}

	// ================================================================
	// Facilities & Infrastructure Sector
	// ================================================================

	part facilitiesInfrastructureProfile : SectorChallengeProfile {
		doc /* Facilities and Infrastructure: long lifecycles, public safety, societal needs. */
		attribute :>> sectorName := "FacilitiesInfrastructure";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::high;
		}
	}

	// ================================================================
	// Logistics Sector
	// ================================================================

	part logisticsProfile : SectorChallengeProfile {
		doc /* Logistics: supply chain optimization, data-driven operations, acquisition focus. */
		attribute :>> sectorName := "Logistics";

		attribute mbsePriority : ChallengePriority {
			attribute :>> challengeName := "ModelBasedSEAsStandard";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute scalePriority : ChallengePriority {
			attribute :>> challengeName := "ScaleSEForComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute socialPriority : ChallengePriority {
			attribute :>> challengeName := "ExpandSEForSocialNeeds";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute foundationsPriority : ChallengePriority {
			attribute :>> challengeName := "TheoreticalFoundations";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute dataSciencePriority : ChallengePriority {
			attribute :>> challengeName := "DataScienceIntegration";
			attribute :>> priority := PriorityLevel::critical;
		}
		attribute complexityPriority : ChallengePriority {
			attribute :>> challengeName := "ManagingComplexity";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute uncertaintyPriority : ChallengePriority {
			attribute :>> challengeName := "AddressingUncertainty";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute innovationPriority : ChallengePriority {
			attribute :>> challengeName := "DrivingInnovation";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute trustPriority : ChallengePriority {
			attribute :>> challengeName := "EnsuringTrust";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute societalPriority : ChallengePriority {
			attribute :>> challengeName := "SocietalProblemSolving";
			attribute :>> priority := PriorityLevel::medium;
		}
		attribute analysisPriority : ChallengePriority {
			attribute :>> challengeName := "ComplexSystemsAnalysis";
			attribute :>> priority := PriorityLevel::high;
		}
		attribute acquisitionPriority : ChallengePriority {
			attribute :>> challengeName := "CollaborativeAcquisition";
			attribute :>> priority := PriorityLevel::critical;
		}
	}
}
