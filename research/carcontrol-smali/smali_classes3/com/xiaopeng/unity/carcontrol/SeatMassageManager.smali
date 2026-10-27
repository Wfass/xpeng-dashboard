.class public Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "SeatMassageManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ISeatMassageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ISeatMassageManager;"
    }
.end annotation


# instance fields
.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    move-result-object v0

    return-object v0
.end method

.method private handleMassagerDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIntensity()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;->onMassagerStatusChange(ILjava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method private handleRhythmDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->getMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->getIntensity()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->isRunning()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;->onRhythmStatusChange(IIIZ)V

    :cond_0
    return-void
.end method

.method private handleSeatLumbRelaxStatusChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->getSeatId()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->getMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->isRunning()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;->onSeatLumbRelaxStatusChange(IIZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$3GGeM8yKlBN4xoZK1wYZX7LX7Ig(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->handleMassagerDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V

    return-void
.end method

.method public static synthetic lambda$U9OHwSBKgWN15gpnKKMPHtcGOKI(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->handleRhythmDataChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;)V

    return-void
.end method

.method public static synthetic lambda$m8TGnPDHC2wmvH8ud0zrCpdVujU(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->handleSeatLumbRelaxStatusChange(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;)V

    return-void
.end method


# virtual methods
.method public getMassageMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageMode(I)I

    move-result p1

    return p1
.end method

.method public getMassagerEffectIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerEffectIDs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMassagerIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result p1

    return p1
.end method

.method public getMassagerRunningEffectId(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRhythmIntensity(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmIntensity(I)I

    move-result p1

    return p1
.end method

.method public getRhythmMode()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmMode()I

    move-result v0

    return v0
.end method

.method public getWaistReliefMemoryMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getWaistReliefMemoryMode(I)I

    move-result p1

    return p1
.end method

.method public getWaistReliefMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getWaistReliefMode(I)I

    move-result p1

    return p1
.end method

.method protected initInternal()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 41
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isRhythmRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRhythmRunning(I)Z

    move-result p1

    return p1
.end method

.method public isWaistReliefRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWaistReliefRunning(I)Z

    move-result p1

    return p1
.end method

.method protected observeData()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;

    invoke-direct {v2, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;

    invoke-direct {v3, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;

    invoke-direct {v3, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;

    invoke-direct {v3, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRhythmData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatLumbRelaxStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$m8TGnPDHC2wmvH8ud0zrCpdVujU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$m8TGnPDHC2wmvH8ud0zrCpdVujU;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p2, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 99
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "setMassageMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "setMassagerIntensity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "startMassagerWithIntensity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "setRhythmIntensity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "setWaistReliefMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "isRhythmRunning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "startMassager"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "getMassagerEffectIDs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "isWaistReliefRunning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "getWaistReliefMemoryMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "getRhythmIntensity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "getWaistReliefMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "stopWaistReliefMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "setRhythmMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getMassageMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "setWaistReliefMemoryMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_10
    const-string v3, "stopMassager"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_1

    :cond_11
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_11
    const-string v3, "getRhythmMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_1

    :cond_12
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_12
    const-string v3, "showSeatSettingPanel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_1

    :cond_13
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v3, "stopRhythm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_1

    :cond_14
    move v0, v4

    goto :goto_1

    :sswitch_14
    const-string v3, "getMassagerRunningEffectId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_1

    :cond_15
    move v0, v5

    goto :goto_1

    :sswitch_15
    const-string v3, "startRhythm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_1

    :cond_16
    move v0, v6

    goto :goto_1

    :sswitch_16
    const-string v3, "getMassagerIntensity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_1

    :cond_17
    move v0, v2

    :goto_1
    const-string v3, ""

    packed-switch v0, :pswitch_data_0

    .line 178
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :pswitch_0
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setMassageMode(II)V

    goto/16 :goto_2

    .line 121
    :pswitch_1
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setMassagerIntensity(II)V

    goto/16 :goto_2

    .line 108
    :pswitch_2
    array-length p1, p2

    if-ne p1, v4, :cond_19

    .line 109
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object v0, p2, v6

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p2, p2, v5

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->startMassagerWithIntensity(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :pswitch_3
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setRhythmIntensity(II)V

    goto/16 :goto_2

    .line 169
    :pswitch_4
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setWaistReliefMode(II)V

    goto/16 :goto_2

    .line 136
    :pswitch_5
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->isRhythmRunning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 101
    :pswitch_6
    array-length p1, p2

    if-ne p1, v5, :cond_18

    .line 102
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->startMassager(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :cond_18
    array-length p1, p2

    if-ne p1, v6, :cond_19

    .line 104
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->startMassager(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getMassagerEffectIDs()Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 118
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 172
    :pswitch_8
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->isWaistReliefRunning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_3

    .line 160
    :pswitch_9
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getWaistReliefMemoryMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 142
    :pswitch_a
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getRhythmIntensity(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 166
    :pswitch_b
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getWaistReliefMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_3

    .line 175
    :pswitch_c
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->stopWaistReliefMode(I)V

    goto/16 :goto_2

    .line 145
    :pswitch_d
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setRhythmMode(I)V

    goto :goto_2

    .line 154
    :pswitch_e
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getMassageMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 163
    :pswitch_f
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->setWaistReliefMemoryMode(II)V

    goto :goto_2

    .line 113
    :pswitch_10
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->stopMassager(IZ)V

    goto :goto_2

    .line 148
    :pswitch_11
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getRhythmMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 151
    :pswitch_12
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->showSeatSettingPanel(I)V

    goto :goto_2

    .line 133
    :pswitch_13
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->stopRhythm(I)V

    goto :goto_2

    .line 127
    :pswitch_14
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 130
    :pswitch_15
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->startRhythm(II)V

    :cond_19
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    .line 124
    :pswitch_16
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->getMassagerIntensity(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_1a

    .line 181
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1a
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x73bd750a -> :sswitch_16
        -0x7195dc68 -> :sswitch_15
        -0x5a2cfe12 -> :sswitch_14
        -0x52c3d0c8 -> :sswitch_13
        -0x44dbbaaa -> :sswitch_12
        -0x43e010b1 -> :sswitch_11
        -0x3512a197 -> :sswitch_10
        -0x3482d0ed -> :sswitch_f
        -0x2b5d2b68 -> :sswitch_e
        -0x15bbc2a5 -> :sswitch_d
        -0xc0e11ee -> :sswitch_c
        -0xb5babc2 -> :sswitch_b
        -0x7fef1f9 -> :sswitch_a
        -0x4958361 -> :sswitch_9
        0x11c86218 -> :sswitch_8
        0x16f51e4a -> :sswitch_7
        0x186fbac9 -> :sswitch_6
        0x1f780b3f -> :sswitch_5
        0x2b7aedb2 -> :sswitch_4
        0x2ed7a77b -> :sswitch_3
        0x50a209c4 -> :sswitch_2
        0x67d8976a -> :sswitch_1
        0x6b08480c -> :sswitch_0
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

.method public refreshMassageStopFlag(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isStopped"
        }
    .end annotation

    .line 241
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshMassageStopFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshRhythmStopFlag(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isStopped"
        }
    .end annotation

    .line 253
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshRhythmStopFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMassageMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassageMode(II)V

    return-void
.end method

.method public setMassagerIntensity(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassagerIntensity(II)V

    .line 212
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_massage_strength:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$2;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;II)V

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setRhythmIntensity(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "intensity"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRhythmIntensity(II)V

    return-void
.end method

.method public setRhythmMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRhythmMode(I)V

    return-void
.end method

.method public setWaistReliefMemoryMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWaistReliefMemoryMode(II)V

    return-void
.end method

.method public setWaistReliefMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWaistReliefMode(II)V

    return-void
.end method

.method public showSeatSettingPanel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenId"
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/ServerApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_BUTTON_SETTING_PANEL"

    .line 293
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SEAT_BUTTON_SETTING_PANEL"

    .line 295
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startMassager(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->refreshMassageStopFlag(IZ)V

    return-void
.end method

.method public startMassagerWithIntensity(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "intensity",
            "effectId"
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_massage_switch:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    return-void
.end method

.method public startRhythm(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "mode"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startRhythm(IIZ)V

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->refreshRhythmStopFlag(IZ)V

    return-void
.end method

.method public stopMassager(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "fromUi"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->seat_massage_switch:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->refreshMassageStopFlag(IZ)V

    return-void
.end method

.method public stopRhythm(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopRhythm(I)V

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->refreshRhythmStopFlag(IZ)V

    return-void
.end method

.method public stopWaistReliefMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopWaistReliefMode(I)V

    return-void
.end method
