.class public Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
.super Ljava/lang/Object;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private useAnimation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->startActivity:Ljava/lang/String;

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->shouldDoScreenMode:I

    .line 616
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->startTime:J

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->useAnimation:Z

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->freezeDuration:I

    .line 619
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->delayDuration:I

    .line 622
    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->operation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->isUserScenario:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->screenId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->startActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->shouldDoScreenMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->backComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->useAnimation:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->freezeDuration:I

    return v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;

    .line 608
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->delayDuration:I

    return v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;
    .locals 1

    .line 680
    new-instance v0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData;-><init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;)V

    return-object v0
.end method

.method public setBackComponentName(Landroid/content/ComponentName;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "backComponentName"    # Landroid/content/ComponentName;

    .line 655
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->backComponentName:Landroid/content/ComponentName;

    .line 656
    return-object p0
.end method

.method public setDelayDuration(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "delayDuration"    # I

    .line 675
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->delayDuration:I

    .line 676
    return-object p0
.end method

.method public setFreezeDuration(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "freezeDuration"    # I

    .line 670
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->freezeDuration:I

    .line 671
    return-object p0
.end method

.method public setIsUserScenario(Z)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "isUserScenario"    # Z

    .line 640
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->isUserScenario:Z

    .line 641
    return-object p0
.end method

.method public setOperation(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "operation"    # I

    .line 625
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->operation:I

    .line 626
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 630
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->packageName:Ljava/lang/String;

    .line 631
    return-object p0
.end method

.method public setScreenId(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "screenId"    # I

    .line 635
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->screenId:I

    .line 636
    return-object p0
.end method

.method public setShouldDoScreenMode(I)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "shouldDoScreenMode"    # I

    .line 650
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->shouldDoScreenMode:I

    .line 651
    return-object p0
.end method

.method public setStartActivity(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "startActivity"    # Ljava/lang/String;

    .line 645
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->startActivity:Ljava/lang/String;

    .line 646
    return-object p0
.end method

.method public setStartTime(J)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "startTime"    # J

    .line 660
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->startTime:J

    .line 661
    return-object p0
.end method

.method public setUseAnimation(Z)Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;
    .locals 0
    .param p1, "useAnimation"    # Z

    .line 665
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$SceneOperationData$Builder;->useAnimation:Z

    .line 666
    return-object p0
.end method
