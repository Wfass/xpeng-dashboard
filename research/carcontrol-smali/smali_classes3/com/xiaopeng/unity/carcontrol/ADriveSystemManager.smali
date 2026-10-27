.class public Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "ADriveSystemManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IADriveSystemManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IADriveSystemManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ADriveSystemManager"


# instance fields
.field private mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyFaultIndicationSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_body_fault_indication:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getBodyFaultIndicationSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDrivingRiskWarningSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_driving_risk_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getDrivingRiskWarningSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGreenLightRemindStateSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_greenlight_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getGreenLightRemindStateSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentOverspeedRemindStateSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_intelligent_overspeed_remind_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getIntelligentOverspeedRemindStateSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStartRemindStateSw()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_start_remind_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getStartRemindStateSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public initInternal()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/IADriveSystemViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    .line 35
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$ADriveSystemManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeData: getStartRemindStateData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADriveSystemManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;->onStartRemindStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$ADriveSystemManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeData: getGreenLightRemindStateData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADriveSystemManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;->onGreenLightRemindStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$ADriveSystemManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeData: getIntelligentOverspeedRemindStateData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADriveSystemManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;->onIntelligentOverspeedRemindStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$ADriveSystemManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeData: getBodyFaultIndicationData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADriveSystemManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;->onBodyFaultIndicationChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$ADriveSystemManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeData: getDrivingRiskWarningData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADriveSystemManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemListener;->onDrivingRiskWarningChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getStartRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$0NZWDxu4PA_c_r4Iw5egJvajnZs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$0NZWDxu4PA_c_r4Iw5egJvajnZs;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getGreenLightRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$BeDQLDciqSDAdUBGbT_bGgbdHL4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$BeDQLDciqSDAdUBGbT_bGgbdHL4;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getIntelligentOverspeedRemindStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$FEVbwk50fpa9INM9Xt4LWj40WlQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$FEVbwk50fpa9INM9Xt4LWj40WlQ;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getBodyFaultIndicationData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$vZh6-PI5EjQ71LSCQVX7j8VPA7c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$vZh6-PI5EjQ71LSCQVX7j8VPA7c;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getDrivingRiskWarningData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$UvbRO6HZb2XBKg_pIBFt156Jh_w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ADriveSystemManager$UvbRO6HZb2XBKg_pIBFt156Jh_w;-><init>(Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getIntelligentOverspeedRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getDrivingRiskWarningSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getStartRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "getBodyFaultIndicationSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "setIntelligentOverspeedRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "setBodyFaultIndicationSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "setGreenLightRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "setDrivingRiskWarningSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "setStartRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "getGreenLightRemindStateSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ADriveSystemManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getIntelligentOverspeedRemindStateSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getDrivingRiskWarningSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getStartRemindStateSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 107
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getBodyFaultIndicationSw()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 134
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setIntelligentOverspeedRemindStateSw(Z)V

    goto :goto_1

    .line 110
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setBodyFaultIndicationSw(Z)V

    goto :goto_1

    .line 128
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setGreenLightRemindStateSw(Z)V

    goto :goto_1

    .line 116
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setDrivingRiskWarningSw(Z)V

    goto :goto_1

    .line 122
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->setStartRemindStateSw(Z)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 125
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getGreenLightRemindStateSw()Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65b7d339 -> :sswitch_9
        -0x646d9b30 -> :sswitch_8
        -0x5c4213f4 -> :sswitch_7
        -0x4f87edc5 -> :sswitch_6
        -0x4228c0a2 -> :sswitch_5
        -0x36e7400e -> :sswitch_4
        -0x123b7316 -> :sswitch_3
        0x466e2c4 -> :sswitch_2
        0x296abd00 -> :sswitch_1
        0x56221b7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setBodyFaultIndicationSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_body_fault_indication:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->setBodyFaultIndicationSw(Z)V

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "adrive_body_fault_indication"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDrivingRiskWarningSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_driving_risk_warning:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->setDrivingRiskWarningSw(Z)V

    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "adrive_driving_risk_warning"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGreenLightRemindStateSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_greenlight_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->setGreenLightRemindStateSw(Z)V

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "adrive_greenlight_state"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIntelligentOverspeedRemindStateSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_intelligent_overspeed_remind_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->setIntelligentOverspeedRemindStateSw(Z)V

    .line 192
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "adrive_intelligent_overspeed_remind_state"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartRemindStateSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->adrive_start_remind_state:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->mADrivesystemVm:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->setStartRemindStateSw(Z)V

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "adrive_start_remind_state"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
