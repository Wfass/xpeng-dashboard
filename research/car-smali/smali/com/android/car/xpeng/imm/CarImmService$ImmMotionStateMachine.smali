.class public Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
.super Ljava/lang/Object;
.source "CarImmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/imm/CarImmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImmMotionStateMachine"
.end annotation


# instance fields
.field private baseImmOrientation:I

.field private currentImmOrientation:I

.field private currentPriority:I

.field private currentState:I

.field private mImmAiAvmMode:Z

.field private mImmAiAvmModeActivate:Z

.field private mImmAiDriverPriorityMode:Z

.field private mImmAiDriverPriorityModeActivate:Z

.field private mImmAiRacerMode:Z

.field private mImmAiRacerModeActivate:Z

.field private mImmAiVoiceAwakenDriverActivate:Z

.field private mImmAiVoiceAwakenMode:Z

.field private mImmAiVoiceAwakenPassengerActivate:Z

.field final synthetic this$0:Lcom/android/car/xpeng/imm/CarImmService;


# direct methods
.method public constructor <init>(Lcom/android/car/xpeng/imm/CarImmService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/xpeng/imm/CarImmService;

    .line 512
    iput-object p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    .line 514
    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentPriority:I

    .line 515
    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->baseImmOrientation:I

    .line 516
    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentImmOrientation:I

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerMode:Z

    .line 519
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityMode:Z

    .line 522
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    .line 524
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmMode:Z

    .line 525
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z

    .line 527
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenMode:Z

    .line 528
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenDriverActivate:Z

    .line 529
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenPassengerActivate:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiRacerMode(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiRacerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiRacerModeActivate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiDriverPriorityMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiDriverPriorityModeActivate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiAvmMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # I

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setCurrentImmOrientationState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # I

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setBaseImmOrientation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiDriverPriorityMode(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getCurrentImmOrientationState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiRacerModeActivate(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiDriverPriorityModeActivate(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiAvmModeActivate(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getBaseImmOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiVoiceAwakenDriverActivate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiVoiceAwakenPassengerActivate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiVoiceAwakenPassengerActivate(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiVoiceAwakenDriverActivate(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiAvmMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    .param p1, "x1"    # Z

    .line 512
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->setImmAiVoiceAwakenMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 512
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->getImmAiVoiceAwakenMode()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized getBaseImmOrientation()I
    .locals 1

    monitor-enter p0

    .line 610
    :try_start_0
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->baseImmOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getCurrentImmOrientationState()I
    .locals 1

    monitor-enter p0

    .line 605
    :try_start_0
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentImmOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiAvmMode()Z
    .locals 3

    monitor-enter p0

    .line 676
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiAvmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiAvmModeActivate()Z
    .locals 3

    monitor-enter p0

    .line 688
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiAvmModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiDriverPriorityMode()Z
    .locals 3

    monitor-enter p0

    .line 652
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiDriverPriorityMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiDriverPriorityModeActivate()Z
    .locals 3

    monitor-enter p0

    .line 664
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiDriverPriorityModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiRacerMode()Z
    .locals 3

    monitor-enter p0

    .line 628
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiRacerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiRacerModeActivate()Z
    .locals 3

    monitor-enter p0

    .line 640
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiRacerModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiVoiceAwakenDriverActivate()Z
    .locals 3

    monitor-enter p0

    .line 712
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiVoiceAwakenDriverActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenDriverActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenDriverActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiVoiceAwakenMode()Z
    .locals 3

    monitor-enter p0

    .line 700
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiVoiceAwakenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized getImmAiVoiceAwakenPassengerActivate()Z
    .locals 3

    monitor-enter p0

    .line 724
    :try_start_0
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAiVoiceAwakenPassengerActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenPassengerActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenPassengerActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method private declared-synchronized setBaseImmOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    monitor-enter p0

    .line 615
    :try_start_0
    iput p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->baseImmOrientation:I

    .line 617
    invoke-static {p1}, Lcom/android/car/xpeng/imm/CarImmService;->access$1700(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    .line 614
    .end local p1    # "orientation":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setCurrentImmOrientationState(I)V
    .locals 0
    .param p1, "orientation"    # I

    monitor-enter p0

    .line 600
    :try_start_0
    iput p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentImmOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 599
    .end local p1    # "orientation":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiAvmMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 670
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmMode:Z

    .line 671
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiAvmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    .line 669
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiAvmModeActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    monitor-enter p0

    .line 682
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z

    .line 683
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiAvmModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 681
    .end local p1    # "activate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiDriverPriorityMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 646
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityMode:Z

    .line 647
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiDriverPriorityMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    .line 645
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiDriverPriorityModeActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    monitor-enter p0

    .line 658
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    .line 659
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiDriverPriorityModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    .line 657
    .end local p1    # "activate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiRacerMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 622
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerMode:Z

    .line 623
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiRacerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    .line 621
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiRacerModeActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    monitor-enter p0

    .line 634
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    .line 635
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiRacerModeActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 633
    .end local p1    # "activate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiVoiceAwakenDriverActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    monitor-enter p0

    .line 706
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenDriverActivate:Z

    .line 707
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiVoiceAwakenDriverActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    .line 705
    .end local p1    # "activate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiVoiceAwakenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 694
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenMode:Z

    .line 695
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiVoiceAwakenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 693
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method private declared-synchronized setImmAiVoiceAwakenPassengerActivate(Z)V
    .locals 3
    .param p1, "activate"    # Z

    monitor-enter p0

    .line 718
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiVoiceAwakenPassengerActivate:Z

    .line 719
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAiVoiceAwakenPassengerActivate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit p0

    return-void

    .line 717
    .end local p1    # "activate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method


# virtual methods
.method public declared-synchronized breakAllImmAiActivate()V
    .locals 1

    monitor-enter p0

    .line 579
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    .line 580
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    .line 581
    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw v0
.end method

.method public declared-synchronized canExecuteMovement(I)I
    .locals 4
    .param p1, "newPriority"    # I

    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-virtual {v0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmState()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    .line 540
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canExecuteMovement: currentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 554
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 546
    :cond_2
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentPriority:I

    if-lt p1, v0, :cond_3

    .line 547
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u8fd0\u52a8\u4f18\u5148\u7ea7\u540c\u7ea7\u6216\u66f4\u9ad8\uff0c\u53ef\u4ee5\u6267\u884c\u65b0\u8fd0\u52a8: newPriority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentPriority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentPriority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    monitor-exit p0

    return v2

    .line 550
    :cond_3
    :try_start_2
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u8fd0\u52a8\u4f18\u5148\u7ea7\u66f4\u4f4e\uff0c\u4e0d\u80fd\u6267\u884c\u65b0\u8fd0\u52a8: newPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    const/4 v0, 0x5

    monitor-exit p0

    return v0

    .line 543
    :cond_4
    :goto_1
    monitor-exit p0

    return v2

    .line 538
    .end local p1    # "newPriority":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method

.method public declared-synchronized isOtherImmAiActivate(I)Z
    .locals 3
    .param p1, "mode"    # I

    monitor-enter p0

    .line 563
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 571
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    goto :goto_3

    .line 569
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    nop

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 567
    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiRacerModeActivate:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    .line 565
    :pswitch_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    nop

    :cond_5
    :goto_2
    monitor-exit p0

    return v0

    .line 571
    :goto_3
    if-nez v2, :cond_7

    :try_start_3
    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiDriverPriorityModeActivate:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->mImmAiAvmModeActivate:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    nop

    :cond_7
    :goto_4
    monitor-exit p0

    return v0

    .line 562
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized updateCurrentPriority(I)V
    .locals 0
    .param p1, "newPriority"    # I

    monitor-enter p0

    .line 592
    :try_start_0
    iput p1, p0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->currentPriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 591
    .end local p1    # "newPriority":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;
    throw p1
.end method
