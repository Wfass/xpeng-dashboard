.class public Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
.super Ljava/lang/Object;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneOperationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    }
.end annotation


# instance fields
.field private backComponentName:Landroid/content/ComponentName;

.field private delayDuration:I

.field private freezeDuration:I

.field private isUserScenario:Z

.field private operation:I

.field private packageName:Ljava/lang/String;

.field private screenId:I

.field private shouldDoScreenMode:I

.field private startActivity:Ljava/lang/String;

.field private startTime:J

.field private targetActivityLaunched:Z

.field private useAnimation:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startActivity:Ljava/lang/String;

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->shouldDoScreenMode:I

    .line 601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startTime:J

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->useAnimation:Z

    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->freezeDuration:I

    .line 604
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->delayDuration:I

    .line 606
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->targetActivityLaunched:Z

    .line 685
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    .line 686
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    .line 687
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUserScenario:Z

    .line 688
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->screenId:I

    .line 689
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startActivity:Ljava/lang/String;

    .line 690
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$1900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->shouldDoScreenMode:I

    .line 691
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$2000(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->backComponentName:Landroid/content/ComponentName;

    .line 692
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$2100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->useAnimation:Z

    .line 693
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$2200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->freezeDuration:I

    .line 694
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->access$2300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->delayDuration:I

    .line 695
    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->delayDuration:I

    return v0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUserScenario:Z

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->screenId:I

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->backComponentName:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 751
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 752
    return v0

    .line 754
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 757
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    .line 758
    .local v2, "other":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    iget v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    iget v4, v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 755
    .end local v2    # "other":Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBackComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->backComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDelayDuration()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->delayDuration:I

    return v0
.end method

.method public getFreezeDuration()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->freezeDuration:I

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 698
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    return v0
.end method

.method public getOperationStartTime()J
    .locals 2

    .line 722
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldDoScreenMode()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->shouldDoScreenMode:I

    return v0
.end method

.method public getStartActivity()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startActivity:Ljava/lang/String;

    return-object v0
.end method

.method public isTargetActivityLaunched()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->targetActivityLaunched:Z

    return v0
.end method

.method public isUseAnimation()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->useAnimation:Z

    return v0
.end method

.method public isUserScenario()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUserScenario:Z

    return v0
.end method

.method public setOperationStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 718
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startTime:J

    .line 719
    return-void
.end method

.method public setTargetActivityLaunched(Z)V
    .locals 0
    .param p1, "activityLaunched"    # Z

    .line 742
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->targetActivityLaunched:Z

    .line 743
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneOperationData{operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->operation:I

    .line 764
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getOperationName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isUserScenario="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->isUserScenario:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDoScreenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->shouldDoScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", backComponentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->backComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->useAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", freezeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->freezeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;->delayDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    return-object v0
.end method
