package MaturityAssessment {
    doc
    /*
     * Maturity scoring, trade study framework, and transformation strategy
     * analysis for the INCOSE Vision 2035 roadmap. Provides quantitative
     * assessment of SE challenge areas and formal comparison of alternative
     * transformation strategies.
     */

    private import ScalarValues::*;
    private import SETypes::*;

    // ================================================================
    // Maturity Scoring
    // ================================================================

    attribute def MaturityScore {
        doc
        /*
         * Quantitative maturity assessment for a challenge or capability area.
         * Score ranges from 0.0 (no progress) to 5.0 (optimizing, fully realized).
         */
        attribute area : String;
        attribute currentScore : Real;
        attribute targetScore : Real;
        attribute gap : Real;
    }

    calc def ComputeMaturityGap {
        doc /* Computes the gap between target and current maturity scores. */
        in currentScore : Real;
        in targetScore : Real;
        return result : Real;
    }

    calc def WeightedMaturityAverage {
        doc /* Computes weighted average maturity across multiple challenge areas. */
        in scores : Real;
        in weights : Real;
        return result : Real;
    }

    // ================================================================
    // Transformation Strategy Alternatives
    // ================================================================

    part def TransformationStrategy {
        doc
        /*
         * Base definition for a transformation strategy alternative.
         * Each strategy represents a different approach to achieving Vision 2035.
         */
        attribute strategyName : String;
        attribute description : String;
        attribute estimatedTimeToMilestone1 : Real;
        attribute estimatedTimeToMilestone2 : Real;
        attribute estimatedTimeToMilestone3 : Real;
        attribute relativeEffort : Real;
        attribute riskTolerance : Real;
    }

    part def TopDownMandate :> TransformationStrategy {
        doc
        /*
         * Organization-mandated MBSE adoption. Leadership directs transition
         * with defined timelines and compliance requirements. Fast adoption
         * but risk of resistance and superficial compliance.
         */
        attribute :>> strategyName := "Top-Down Mandate";
        attribute :>> estimatedTimeToMilestone1 := 3.0;
        attribute :>> estimatedTimeToMilestone2 := 6.0;
        attribute :>> estimatedTimeToMilestone3 := 10.0;
        attribute :>> relativeEffort := 0.9;
        attribute :>> riskTolerance := 0.3;
    }

    part def GrassrootsAdoption :> TransformationStrategy {
        doc
        /*
         * Bottom-up practitioner-driven change. Champions demonstrate value
         * through pilot projects. Organic growth but slower adoption curve
         * and risk of inconsistent practices.
         */
        attribute :>> strategyName := "Grassroots Adoption";
        attribute :>> estimatedTimeToMilestone1 := 5.0;
        attribute :>> estimatedTimeToMilestone2 := 9.0;
        attribute :>> estimatedTimeToMilestone3 := 14.0;
        attribute :>> relativeEffort := 0.5;
        attribute :>> riskTolerance := 0.6;
    }

    part def HybridApproach :> TransformationStrategy {
        doc
        /*
         * Combined mandate with practitioner enablement. Leadership sets
         * direction and provides resources; practitioners lead implementation.
         * Balanced pace with broad buy-in.
         */
        attribute :>> strategyName := "Hybrid Approach";
        attribute :>> estimatedTimeToMilestone1 := 4.0;
        attribute :>> estimatedTimeToMilestone2 := 7.0;
        attribute :>> estimatedTimeToMilestone3 := 11.0;
        attribute :>> relativeEffort := 0.7;
        attribute :>> riskTolerance := 0.5;
    }

    part def DomainLedTransformation :> TransformationStrategy {
        doc
        /*
         * Domain-specific adoption led by industry sectors with highest
         * SE maturity (aerospace, defense). Other sectors follow proven
         * patterns. Targeted but risks creating domain silos.
         */
        attribute :>> strategyName := "Domain-Led Transformation";
        attribute :>> estimatedTimeToMilestone1 := 3.0;
        attribute :>> estimatedTimeToMilestone2 := 8.0;
        attribute :>> estimatedTimeToMilestone3 := 12.0;
        attribute :>> relativeEffort := 0.6;
        attribute :>> riskTolerance := 0.4;
    }

    // ================================================================
    // Trade Study Framework
    // ================================================================

    analysis def TransformationTradeStudy {
        doc
        /*
         * Formal trade study comparing transformation strategy alternatives.
         * Evaluates each strategy against maturity improvement rate, cost,
         * risk, and stakeholder acceptance criteria.
         */

        subject studyContext : TransformationStrategy;

        part topDown : TopDownMandate;
        part grassroots : GrassrootsAdoption;
        part hybrid : HybridApproach;
        part domainLed : DomainLedTransformation;

        attribute timeWeight : Real := 0.30;
        attribute effortWeight : Real := 0.25;
        attribute riskWeight : Real := 0.25;
        attribute acceptanceWeight : Real := 0.20;
    }

    // ================================================================
    // Evaluation Criteria
    // ================================================================

    part def EvaluationCriterion {
        doc /* A single criterion for evaluating transformation strategies. */
        attribute criterionName : String;
        attribute weight : Real;
        attribute description : String;
    }

    part timeToValue : EvaluationCriterion {
        doc /* How quickly the strategy delivers measurable maturity improvements. */
        attribute :>> criterionName := "Time to Value";
        attribute :>> weight := 0.30;
    }

    part implementationEffort : EvaluationCriterion {
        doc /* Resources and organizational effort required. */
        attribute :>> criterionName := "Implementation Effort";
        attribute :>> weight := 0.25;
    }

    part riskExposure : EvaluationCriterion {
        doc /* Likelihood and impact of strategy failure or derailment. */
        attribute :>> criterionName := "Risk Exposure";
        attribute :>> weight := 0.25;
    }

    part stakeholderAcceptance : EvaluationCriterion {
        doc /* Degree of buy-in across practitioner, management, and academic stakeholders. */
        attribute :>> criterionName := "Stakeholder Acceptance";
        attribute :>> weight := 0.20;
    }

    // ================================================================
    // Trade Study Instance
    // ================================================================

    analysis visionTransformationStudy : TransformationTradeStudy {
        doc
        /*
         * Instance of the transformation trade study applied to
         * the Vision 2035 roadmap. Recommended outcome: HybridApproach
         * based on balanced scoring across all criteria.
         */
        attribute recommendedStrategy : String := "HybridApproach";
        attribute rationale : String := "Hybrid approach balances adoption speed with practitioner buy-in, achieving milestone targets within acceptable risk bounds";
    }
}
