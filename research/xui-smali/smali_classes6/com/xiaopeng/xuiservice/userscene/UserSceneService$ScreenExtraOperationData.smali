.class public Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;
.super Ljava/lang/Object;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenExtraOperationData"
.end annotation


# instance fields
.field private backComponentName:Landroid/content/ComponentName;

.field private delayDuration:I

.field private freezeDuration:I

.field private shouldDoScreenMode:I

.field private startActivity:Ljava/lang/String;

.field private useAnimation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->backComponentName:Landroid/content/ComponentName;

    .line 554
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->startActivity:Ljava/lang/String;

    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->shouldDoScreenMode:I

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->useAnimation:Z

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->freezeDuration:I

    .line 558
    iput v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->delayDuration:I

    .line 560
    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->startActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->shouldDoScreenMode:I

    return v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->backComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->useAnimation:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->freezeDuration:I

    return v0
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;

    .line 551
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->delayDuration:I

    return v0
.end method


# virtual methods
.method public setBackComponentName(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "backComponentName"    # Landroid/content/ComponentName;

    .line 563
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->backComponentName:Landroid/content/ComponentName;

    .line 564
    return-void
.end method

.method public setDelayDuration(I)V
    .locals 0
    .param p1, "delayDuration"    # I

    .line 578
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->delayDuration:I

    .line 579
    return-void
.end method

.method public setFreezeDuration(I)V
    .locals 0
    .param p1, "freezeDuration"    # I

    .line 575
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->freezeDuration:I

    .line 576
    return-void
.end method

.method public setShouldDoScreenMode(I)V
    .locals 0
    .param p1, "shouldDoScreenMode"    # I

    .line 569
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->shouldDoScreenMode:I

    .line 570
    return-void
.end method

.method public setStartActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "startActivity"    # Ljava/lang/String;

    .line 566
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->startActivity:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setUseAnimation(Z)V
    .locals 0
    .param p1, "useAnimation"    # Z

    .line 572
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->useAnimation:Z

    .line 573
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenExtraOperationData{backComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->backComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->startActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDoScreenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->shouldDoScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->useAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", freezeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->freezeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$ScreenExtraOperationData;->delayDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
