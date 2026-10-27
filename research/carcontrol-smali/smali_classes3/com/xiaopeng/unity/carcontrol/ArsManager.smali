.class public Lcom/xiaopeng/unity/carcontrol/ArsManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "ArsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/ArsManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/ArsListener;",
        ">;"
    }
.end annotation


# instance fields
.field mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/ArsManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ArsManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/ArsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkArsError()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->checkError()I

    move-result v0

    return v0
.end method

.method public controlAsr(IZ)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_asr:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmd",
            "status"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->unfold(Z)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->fold(Z)V

    .line 191
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "windowdoor_asr"

    invoke-static {p2, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getArsErrorState()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFaultState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getArsFoldState()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getArsInitState()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getArsPosition()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPosition()I

    move-result v0

    return v0
.end method

.method public getArsVehLockAutoFoldSwitchStatus()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_asr_auto_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsVehLockAutoFoldSwitchStatus()Z

    move-result v0

    return v0
.end method

.method public getArsWorkMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_asr_work_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getArsWorkState()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->getIntValue()I

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    if-nez v1, :cond_0

    .line 33
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    .line 36
    :cond_0
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsFoldState"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsFoldStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsInitState"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsInitStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsWorkMode"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsWorkModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsWorkState"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsWorkStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arsFaultState"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->getIntValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsErrorStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$ArsManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsPositionChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$ArsManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ArsListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsListener;->onArsAutoFoldStChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFoldStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$tEg4kXlRkaSzBFx2SDsExjHPsm4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$tEg4kXlRkaSzBFx2SDsExjHPsm4;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsInitStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$B6hop2NyGAb_VQ9gtgkWCGuUWlg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$B6hop2NyGAb_VQ9gtgkWCGuUWlg;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkModeLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$6ACoPOegi2PYSCosxay4YcgMm4Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$6ACoPOegi2PYSCosxay4YcgMm4Q;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsWorkStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$ebe10-xHYR_KBH7fESRpdqME5e4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$ebe10-xHYR_KBH7fESRpdqME5e4;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFaultStateLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$U-VopQHIinpERe0CmA0sgEGbzQA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$U-VopQHIinpERe0CmA0sgEGbzQA;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsPositionLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$H6mRaPjJheSlrwxIvydYrkJpVmM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$H6mRaPjJheSlrwxIvydYrkJpVmM;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsAutoFoldStLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$Pq4pLdt1taEiH2u6mxVbTQmiUBw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$Pq4pLdt1taEiH2u6mxVbTQmiUBw;-><init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
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

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getArsErrorState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setArsWorkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "checkArsError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "startArsInitialize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getArsWorkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "fold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getArsFoldState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "getArsPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "getArsVehLockAutoFoldSwitchStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "unfold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "getArsInitState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "startArsReset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v4, v1

    goto :goto_0

    :sswitch_c
    const-string v0, "getArsWorkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v4, v2

    goto :goto_0

    :sswitch_d
    const-string v0, "setArsVehLockAutoFoldSwitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsErrorState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 126
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setArsWorkMode(I)V

    goto/16 :goto_3

    .line 162
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->checkArsError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 130
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->startArsInitialize(Z)V

    goto/16 :goto_3

    .line 146
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsWorkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_4

    .line 118
    :pswitch_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_1

    :cond_e
    move v2, v3

    :cond_f
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->controlAsr(IZ)V

    goto :goto_3

    .line 154
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsFoldState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 158
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 166
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsVehLockAutoFoldSwitchStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 122
    :pswitch_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_2

    :cond_10
    move v2, v3

    :cond_11
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->controlAsr(IZ)V

    goto :goto_3

    .line 138
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsInitState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 134
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->startReset(Z)V

    goto :goto_3

    .line 150
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsWorkMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 170
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->setArsVehLockAutoFoldSwitch(Z)V

    :goto_3
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_12

    const-string p1, ""

    goto :goto_5

    .line 176
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52f3af98 -> :sswitch_d
        -0x5224d860 -> :sswitch_c
        -0x44a37971 -> :sswitch_b
        -0x427b206b -> :sswitch_a
        -0x321ad9e6 -> :sswitch_9
        -0x2dd1b192 -> :sswitch_8
        -0x27a2c38b -> :sswitch_7
        -0x140218bc -> :sswitch_6
        0x300c01 -> :sswitch_5
        0xde09634 -> :sswitch_4
        0x38d52a50 -> :sswitch_3
        0x430455ee -> :sswitch_2
        0x44409b14 -> :sswitch_1
        0x448c07b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setArsVehLockAutoFoldSwitch(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_asr_auto_lock:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->setArsVehLockAutoFoldSwitch(Z)V

    .line 243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_asr_auto_lock"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setArsWorkMode(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_asr_work_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arsWorkMode"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->fromIntValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_asr_work_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startArsInitialize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withWarning"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startInitialize(Z)V

    return-void
.end method

.method public startReset(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withWarning"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager;->mArsVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->startReset(Z)V

    return-void
.end method
