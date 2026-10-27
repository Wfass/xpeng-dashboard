.class public Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "ScreenageSettingsManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IScreenSettingsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IScreenSettingsManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenageSettingsManager"


# instance fields
.field private mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDrivingGuardSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_dvr:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getDrivingGuardSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getNarPerspectiveSelection()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_nar_perspective:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getNarPerspectiveSelection()I

    move-result v0

    return v0
.end method

.method public getNraCacheState()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraCacheState()I

    move-result v0

    return v0
.end method

.method public getNraState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_narrow_assist_sensitivity:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraState()I

    move-result v0

    return v0
.end method

.method public getNraSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_narrow_assist:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPerspectiveSelection()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_dvr_recording_perspective:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getPerspectiveSelection()I

    move-result v0

    return v0
.end method

.method public getSteeringImageFullSelection()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_steering_image_full_selection:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getSteeringImageFullSelection()I

    move-result v0

    return v0
.end method

.method public getSteeringImageFullState()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_steering_image_full_selection:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getSteeringImageFullState()Z

    move-result v0

    return v0
.end method

.method public getTransCarbodySw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_transparent_carbody:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTransCarbodySw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTransChasisSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_transparent_chassis:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTransChasisSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTurnAssistantSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_turning_assist:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getTurnAssistantSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTurnSignalActivateRearVideoSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_turn_active_rear_side_video:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTurnSignalActivateRearVideoSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public initInternal()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/screenage/IScreenageSettingsViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 38
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$ScreenageSettingsManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNraStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onNraStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTurnAssistChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onTurnAssistChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSteeringImageFullSelectionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onSteeringImageFullStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrivingGuardDataChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onDrivingGuardDataChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$ScreenageSettingsManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrivingGuardPerspectiveSegChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onDrivingGuardPerspectiveSegChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransChassisChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onTransChassisChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransCarbodyChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onTransCarbodyChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNraSwChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onNraSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$ScreenageSettingsManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNraSwChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onTurnSignalActivateRearVideoChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$ScreenageSettingsManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrivingGuardPerspectiveSegChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onNarPerspectiveSelectionChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$ScreenageSettingsManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSteeringImageFullSelectionChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenageSettingsManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsListener;->onSteeringImageFullSelectionChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$s-_A2B5m2c4-sPcI5x7fiHxY0lQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$s-_A2B5m2c4-sPcI5x7fiHxY0lQ;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getTurnAssistantData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$buith7eMvrqSzdnZ7nzSgxww58s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$buith7eMvrqSzdnZ7nzSgxww58s;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getDrivingGuardData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$r1pRMU0N8P6VRUsLWw5sXu2JV_o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$r1pRMU0N8P6VRUsLWw5sXu2JV_o;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getDrivingGuardPerspectiveSegData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$VWqRxbi_Y5sOcwrG0K_FsvUjJb8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$VWqRxbi_Y5sOcwrG0K_FsvUjJb8;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTranschassisData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$CS85ZTZBbXwZtT8vbOOyp1wN7dA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$CS85ZTZBbXwZtT8vbOOyp1wN7dA;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTransCarbodyData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ih7NIcFPjX7V0vxZYa8Ox5r04Pg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ih7NIcFPjX7V0vxZYa8Ox5r04Pg;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getNraSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$5v9ZzVaD2OP-X7cGgU4zlho4RYU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$5v9ZzVaD2OP-X7cGgU4zlho4RYU;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getTurnSignalActivateRearSideVideoData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$nZYw6cvFPXe3_ro_aOzSPe0ZQz4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$nZYw6cvFPXe3_ro_aOzSPe0ZQz4;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getNarPerspectiveSelectionData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ZlkQLm_K6gdY-ViUSpdKbPW_0SM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ZlkQLm_K6gdY-ViUSpdKbPW_0SM;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getSteeringImageFullSelectionData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$uLpL5pPKYeTxrbJZlfg6D8HcJu8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$uLpL5pPKYeTxrbJZlfg6D8HcJu8;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->getSteeringImageFullStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$zelbebUeIBa41E1U0lYvrv1gJXM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$zelbebUeIBa41E1U0lYvrv1gJXM;-><init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getNraSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setNarPerspectiveSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getNarPerspectiveSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getNraState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getDrivingGuardSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setNraState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "setTransCarbodySw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "setSteeringImageFullState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "setPerspectiveSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setTransChasisSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "setNraSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "setDrivingGuardSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getTurnSignalActivateRearVideoSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getSteeringImageFullState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "getSteeringImageFullSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "setTurnAssistantEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_10
    const-string v0, "setSteeringImageFullSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_11
    const-string v0, "getPerspectiveSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_12
    const-string v0, "getTurnAssistantSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_13
    const-string v0, "getTransChasisSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_14
    const-string v0, "setTurnSignalActivateRearSideVideoEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_15
    const-string v0, "getNraCacheState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_16
    const-string v0, "getTransCarbodySw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenageSettingsManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNraSw()Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 237
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setNarPerspectiveSelection(I)V

    goto/16 :goto_1

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNarPerspectiveSelection()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 207
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNraState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 216
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getDrivingGuardSw()Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 210
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setNraState(I)V

    goto/16 :goto_1

    .line 192
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setTransCarbodySw(Z)V

    goto/16 :goto_1

    .line 249
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setSteeringImageFullState(Z)V

    goto :goto_1

    .line 225
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setPerspectiveSelection(I)V

    goto :goto_1

    .line 186
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setTransChasisSw(Z)V

    goto :goto_1

    .line 204
    :pswitch_a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setNraSwEnable(Z)V

    goto :goto_1

    .line 219
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setDrivingGuardSw(Z)V

    goto :goto_1

    .line 228
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTurnSignalActivateRearVideoSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 246
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getSteeringImageFullState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 240
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getSteeringImageFullSelection()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 198
    :pswitch_f
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setTurnAssistantEnable(Z)V

    goto :goto_1

    .line 243
    :pswitch_10
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setSteeringImageFullSelection(I)V

    goto :goto_1

    .line 222
    :pswitch_11
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getPerspectiveSelection()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 195
    :pswitch_12
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTurnAssistantSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 183
    :pswitch_13
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTransChasisSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 231
    :pswitch_14
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->setTurnSignalActivateRearSideVideoEnable(Z)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 213
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNraCacheState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 189
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTransCarbodySw()Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_17

    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_17
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7ab5d458 -> :sswitch_16
        -0x76abb68a -> :sswitch_15
        -0x76909637 -> :sswitch_14
        -0x6bae8fe9 -> :sswitch_13
        -0x55150911 -> :sswitch_12
        -0x46f728da -> :sswitch_11
        -0x1c5f818b -> :sswitch_10
        -0xc486ffe -> :sswitch_f
        -0xc1e3797 -> :sswitch_e
        0x30411ee -> :sswitch_d
        0x126bbd8d -> :sswitch_c
        0x1cfee724 -> :sswitch_b
        0x22242182 -> :sswitch_a
        0x2727d68b -> :sswitch_9
        0x335c0632 -> :sswitch_8
        0x3547adfa -> :sswitch_7
        0x4d4093b4 -> :sswitch_6
        0x522831f6 -> :sswitch_5
        0x55087f18 -> :sswitch_4
        0x576fd0ea -> :sswitch_3
        0x5d1b9a39 -> :sswitch_2
        0x734b7fad -> :sswitch_1
        0x74e108ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrivingGuardSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_dvr:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setDrivingGuardSw(Z)V

    .line 322
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_dvr"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNarPerspectiveSelection(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_nar_perspective:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setNarPerspectiveSelection(I)V

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screenage_settings_nar_perspective"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNraState(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_narrow_assist_sensitivity:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNraState(I)V

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screenage_settings_narrow_assist_sensitivity"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNraSwEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_narrow_assist:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setNraSwEnable(Z)V

    .line 298
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_narrow_assist"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPerspectiveSelection(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_dvr_recording_perspective:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setPerspectiveSelection(I)V

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screenage_settings_dvr_recording_perspective"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSteeringImageFullSelection(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_steering_image_full_selection:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setSteeringImageFullSelection(I)V

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "screenage_settings_steering_image_full_selection"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSteeringImageFullState(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_steering_image_full_selection:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setSteeringImageFullState(Z)V

    .line 342
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_steering_image_full_selection"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTransCarbodySw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_transparent_carbody:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setTransCarbodySw(Z)V

    .line 278
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_transparent_carbody"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTransChasisSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_transparent_chassis:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setTransChasisSw(Z)V

    .line 263
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_transparent_chassis"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTurnAssistantEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_turning_assist:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->setTurnAssistantEnable(Z)V

    .line 288
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_turning_assist"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTurnSignalActivateRearSideVideoEnable(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->screenage_settings_turn_active_rear_side_video:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->mScreenageSettingsVm:Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->setTurnSignalActivateRearSideVideoEnable(Z)V

    .line 371
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "screenage_settings_turn_active_rear_side_video"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
