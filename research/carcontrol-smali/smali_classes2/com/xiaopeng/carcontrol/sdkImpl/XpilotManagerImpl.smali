.class public Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "XpilotManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer$Implementation;


# instance fields
.field private mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

.field private mIsSupportXpuNedc:Z

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private getXpuNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    .locals 2

    .line 406
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 407
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mIsSupportXpuNedc:Z

    if-eqz v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isXpuNedcActivated()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isXpuNedcActivated()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlcState()I
    .locals 4

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlcState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getAutoParkState()I
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoParkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBodyFaultIndicationState()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getBodyFaultIndicationSw()Z

    move-result v0

    return v0
.end method

.method public getDrivingRiskWarningState()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getDrivingRiskWarningSw()Z

    move-result v0

    return v0
.end method

.method public getGreenLightRemindState()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getGreenLightRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getHintMode()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getParkSoundEffect()I

    move-result v0

    return v0
.end method

.method public getImageRetentionState()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIntelligentOverspeedRemindState()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getIntelligentOverspeedRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getLccState()I
    .locals 4

    .line 323
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLccState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMemParkState()I
    .locals 4

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMemParkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNedcState()I
    .locals 4

    .line 205
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->getXpuNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNedcState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpCustomSpeedKph()I
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedKph()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpCustomSpeedKph: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpCustomSpeedMode()I
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedMode()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpCustomSpeedMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpCustomSpeedPercent()I
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedPercent()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpCustomSpeedPercent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpOvertakeMode()I
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpOvertakeMode()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpOvertakeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpRemindMode()I
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpRemindMode()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpRemindMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNgpState()I
    .locals 4

    .line 306
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNgpState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getSasAlertState()Z
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasIslaMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getVoiceSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getStartRemindState()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getStartRemindStateSw()Z

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/IADriveSystemViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    .line 34
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getXpilotManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    const-string v0, "isSupportXpuNedc"

    .line 35
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mIsSupportXpuNedc:Z

    return-void
.end method

.method public synthetic lambda$observeData$0$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onAutoParkChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onMemParkChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onLccChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$12$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scuResponse"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->isXpuNedcActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onAlcChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$13$XpilotManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeData: getStartRemindStateData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onStartRemindChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$XpilotManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeData: getGreenLightRemindStateData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onGreenLightRemindChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$XpilotManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeData: getIntelligentOverspeedRemindStateData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onIntelligentOverspeedRemindStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$XpilotManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeData: getBodyFaultIndicationData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onBodyFaultIndicationChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$17$XpilotManagerImpl(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeData: getDrivingRiskWarningData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onDrivingRiskWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$18$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_1

    .line 153
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onSasAlertChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$19$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onSasAlertChanged(Z)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getVoiceSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {p1, v2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onSasAlertChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$observeData$2$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNedcStateChange(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpOvertakeModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpCustomSpeedModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpCustomSpeedPercentChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpCustomSpeedKphChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onNgpRemindModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_1

    .line 82
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onImageRetentionChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$9$XpilotManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/XpilotManagerServer;->onHintModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$OWm6QDcWbf87PjilwTbWFvF_GpY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$OWm6QDcWbf87PjilwTbWFvF_GpY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$mpgRaJdShqsqd46Yctx8OVphUrQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$mpgRaJdShqsqd46Yctx8OVphUrQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$fpHuijjQpKGeYfireqXiEvQkc1g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$fpHuijjQpKGeYfireqXiEvQkc1g;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpOvertakeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$7ttt9jo53_Asb75GIGaXchtcvIk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$7ttt9jo53_Asb75GIGaXchtcvIk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$N3MLKzswyCYNFyfwtZkRKfAt7UA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$N3MLKzswyCYNFyfwtZkRKfAt7UA;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedPercentData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$20eajr1XoH531orRsM_v8IiM8ro;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$20eajr1XoH531orRsM_v8IiM8ro;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNgpCustomSpeedKphData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$gyeRCUSaoAWb6f5H3qSYUuwayIg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$gyeRCUSaoAWb6f5H3qSYUuwayIg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpRemindData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$SyTu3PmGL54bF6vxfbNvKlUuJ3Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$SyTu3PmGL54bF6vxfbNvKlUuJ3Y;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getImageRetentionSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$7cH3YQaXOIaIZMrNh0o8QmaPEGg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$7cH3YQaXOIaIZMrNh0o8QmaPEGg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getHintModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$KKDJ7fXgN2nN_Vfn-XeU8HQxPfg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$KKDJ7fXgN2nN_Vfn-XeU8HQxPfg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$DtteZ3NM01K_LfxcGKdLXJFe3wk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$DtteZ3NM01K_LfxcGKdLXJFe3wk;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$idnp1wtvs6dpsJFAmv9GnT2EVK4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$idnp1wtvs6dpsJFAmv9GnT2EVK4;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$6SaelT9SBSPyWCicpC72IRjGRnc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$6SaelT9SBSPyWCicpC72IRjGRnc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getStartRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$JYOHvlQtOvEQqHdwqPh22ZYL7dM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$JYOHvlQtOvEQqHdwqPh22ZYL7dM;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getGreenLightRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$Y5iQWDF54WqXmfyB462Lyop17y8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$Y5iQWDF54WqXmfyB462Lyop17y8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getIntelligentOverspeedRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$YaQX7CZYE5yRyX1ZPTRx-pTahmw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$YaQX7CZYE5yRyX1ZPTRx-pTahmw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getBodyFaultIndicationData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$3-3RviNYfeLnsLtF87Dck-Fbc3I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$3-3RviNYfeLnsLtF87Dck-Fbc3I;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mADSystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getDrivingRiskWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$9aiR1DydZiosci6Njl290JCkcgg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$9aiR1DydZiosci6Njl290JCkcgg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getVoiceSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$Ds96wBRKloQGnRYma-RtdgP12U0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$Ds96wBRKloQGnRYma-RtdgP12U0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasIslaData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$O1OIfucf2YClVBKSzrL1Qi_Ef98;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$O1OIfucf2YClVBKSzrL1Qi_Ef98;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setAlcEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlcEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setAlcEnable(Z)V

    return-void
.end method

.method public setAutoParkEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoParkEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setAutoParkSw(Z)V

    return-void
.end method

.method public setHintMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setParkSoundEffect(I)V

    return-void
.end method

.method public setImageRetentionEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setImageRetentionEnable(Z)V

    return-void
.end method

.method public setLccEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLccEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setLccEnable(Z)V

    return-void
.end method

.method public setMemParkEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMemParkEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setMemoryParkSw(Z)V

    return-void
.end method

.method public setNedcEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mIsSupportXpuNedc:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setXpuNedcEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNedcSwitch(Z)V

    :cond_0
    return-void
.end method

.method public setNgpCustomSpeedKph(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpCustomSpeedKph: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedKph(I)V

    return-void
.end method

.method public setNgpCustomSpeedMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpCustomSpeedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedMode(I)V

    return-void
.end method

.method public setNgpCustomSpeedPercent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpCustomSpeedPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpCustomSpeedPercent(I)V

    return-void
.end method

.method public setNgpEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpEnable(Z)V

    return-void
.end method

.method public setNgpOvertakeMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpOvertakeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNgpOvertakeMode(I)V

    return-void
.end method

.method public setNgpRemindMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNgpRemindMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setNgpRemindMode(I)V

    return-void
.end method

.method public setSasAlertEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getOverseasIslaMode()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setOverseasIslaMode(I)V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setVoiceSw(Z)V

    return-void
.end method
