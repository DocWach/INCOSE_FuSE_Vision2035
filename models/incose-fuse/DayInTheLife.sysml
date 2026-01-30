package DayInTheLife {
    doc /* Models the "Day in the Life of a Systems Engineer in 2035" scenario
         * from INCOSE Vision 2035, Chapter 3. Grounds the abstract FutureState
         * capabilities in a concrete operational workflow showing how a future
         * systems engineer leverages AI, digital twins, simulation, extended
         * reality, and automated V&V throughout a typical workday. */

    private import ScalarValues::*;

    // ── Actor Part Defs (Scenario Participants) ──

    part def SystemsEngineer2035 {
        doc /* The protagonist: a systems engineer in 2035 who leverages
             * advanced tooling and AI assistance throughout the workday. */
        attribute hasModelingExpertise : Boolean;
        attribute hasDataLiteracy : Boolean;
        attribute hasSystemsThinking : Boolean;
    }

    part def AIAssistant {
        doc /* AI-powered briefing and analysis tool that monitors systems
             * overnight, synthesizes findings, and recommends priorities. */
        attribute canSummarizeAnalysis : Boolean;
        attribute canFlagIssues : Boolean;
        attribute canRecommendPriorities : Boolean;
    }

    part def DigitalTwinPlatform {
        doc /* Digital twin system enabling model-based design review with
             * live synchronization to the physical system state. */
        attribute canRenderLiveModel : Boolean;
        attribute canDetectDesignIssues : Boolean;
    }

    part def SimulationEngine {
        doc /* Multi-scale simulation engine for exploring trade-offs
             * across physical, behavioral, and performance domains. */
        attribute canRunMultiScale : Boolean;
        attribute canEvaluateTradeOffs : Boolean;
        attribute canParallelCompute : Boolean;
    }

    part def XRCollaborationSystem {
        doc /* Extended reality platform enabling distributed team members
             * to collaborate in immersive design walkthroughs. */
        attribute canHostImmersiveSession : Boolean;
        attribute canSupportDistributedTeam : Boolean;
    }

    part def AutomatedVVSystem {
        doc /* Automated verification and validation system that continuously
             * checks requirements compliance and reports status. */
        attribute canRunContinuousVV : Boolean;
        attribute canReportCompliance : Boolean;
        attribute canTraceRequirements : Boolean;
    }

    part def StakeholderTeam {
        doc /* Distributed team of stakeholders participating in design
             * reviews and collaborative decision-making sessions. */
        attribute isGeographicallyDistributed : Boolean;
        attribute hasMultipleDisciplines : Boolean;
    }

    // ── Action Defs (Workflow Steps) ──

    action def MorningBriefing {
        doc /* AI assistant summarizes overnight analysis results, flags
             * issues requiring attention, and recommends daily priorities. */
        in item overnightData : String;
        out item prioritizedAgenda : String;
    }

    action def ModelBasedDesignReview {
        doc /* Engineer reviews the system model using the digital twin,
             * identifies design issues, and annotates the model. */
        in item agenda : String;
        out item designFindings : String;
    }

    action def SimulationDrivenDecision {
        doc /* Multi-scale simulation explores trade-offs across domains.
             * Engineer evaluates alternatives and selects preferred option. */
        in item designIssues : String;
        out item selectedAlternative : String;
    }

    action def XRStakeholderCollaboration {
        doc /* Extended reality session with distributed stakeholders for
             * immersive design walkthroughs and collaborative review. */
        in item proposedDesign : String;
        out item stakeholderFeedback : String;
    }

    action def AutomatedVerification {
        doc /* Continuous V&V runs against requirements baseline and
             * reports compliance status with traceability evidence. */
        in item updatedDesign : String;
        out item complianceReport : String;
    }

    action def KnowledgeCapture {
        doc /* End-of-day knowledge capture recording lessons learned,
             * decisions made, and rationale for future reference. */
        in item dayResults : String;
        out item lessonsLearned : String;
    }

    // ── Connection Def (Workflow Sequencing) ──

    connection def WorkflowSequence {
        doc /* Sequential workflow dependency between scenario activities. */
    }

    // ── Use Case Def (Composed Scenario) ──

    use case def DayInTheLife2035 {
        doc /* Composes the full day-in-the-life scenario showing how a
             * 2035 systems engineer moves through a typical workday
             * leveraging future SE capabilities and tools. */

        subject engineer : SystemsEngineer2035;

        part aiAssistant : AIAssistant;
        part digitalTwin : DigitalTwinPlatform;
        part simulator : SimulationEngine;
        part xrSystem : XRCollaborationSystem;
        part vvSystem : AutomatedVVSystem;
        part stakeholders : StakeholderTeam;

        action morning : MorningBriefing;
        action designReview : ModelBasedDesignReview;
        action simulation : SimulationDrivenDecision;
        action collaboration : XRStakeholderCollaboration;
        action autoVerification : AutomatedVerification;
        action capture : KnowledgeCapture;

        connection step1to2 : WorkflowSequence;
        connection step2to3 : WorkflowSequence;
        connection step3to4 : WorkflowSequence;
        connection step4to5 : WorkflowSequence;
        connection step5to6 : WorkflowSequence;
    }

    // ── Capability Dependencies ──

    part def FutureCapabilityDependencies {
        doc /* Maps each workflow action to the FutureState capabilities
             * it depends on. These correspond to capability definitions
             * in the FutureState package. */

        attribute morningBriefingDeps : String default "DataScienceIntegration, ConnectedDataLayer";
        attribute designReviewDeps : String default "ModelBasedSystemsEngineering, ConnectedDataLayer";
        attribute simulationDeps : String default "MultiScaleSimulation, MassiveParallelCompute";
        attribute collaborationDeps : String default "ExtendedReality, HumanSystemsIntegration";
        attribute verificationDeps : String default "TrustedSystemsEngineering";
        attribute captureDeps : String default "CollaborativeAcquisition";
    }
}
