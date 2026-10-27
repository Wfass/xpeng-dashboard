.class public Lcom/xiaopeng/unity/carcontrol/LampManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "LampManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ILampManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/LampManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/LampListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ILampManager;"
    }
.end annotation


# instance fields
.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LampManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/LampManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LampManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkValidEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runningEffect"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private convertLluPreviewState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 201
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LampManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluPreviewState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeadLampMode()I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->convertHeadLampValue(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)I

    move-result v0

    return v0
.end method

.method public getLluPreviewEffect()I
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluPreviewStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const-string v1, "getLluPreviewEffect:"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 226
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    .line 231
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LampManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluEffect:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x6

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLluPreviewState()I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluPreviewStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->checkValidEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->convertLluPreviewState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 36
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 37
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 38
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 39
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LampManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/LampManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/LampManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isLLuSwEnable()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    return v0
.end method

.method public isRearFogLampOn()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_rear_fog:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v0

    return v0
.end method

.method public isSupportLluPreview()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 308
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isTurnLampOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 309
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$observeData$0$LampManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lampMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampListener;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->convertHeadLampValue(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampListener;->onHeadLampModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$LampManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LampListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LampListener;->onRearFogLampChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampManager$L2wUfT5B3_SxypDWFTzpGcw07Z8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampManager$L2wUfT5B3_SxypDWFTzpGcw07Z8;-><init>(Lcom/xiaopeng/unity/carcontrol/LampManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampManager$MCF0en2PoayGfoYw0nGa5q0mFUY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LampManager$MCF0en2PoayGfoYw0nGa5q0mFUY;-><init>(Lcom/xiaopeng/unity/carcontrol/LampManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getHeadLampMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "isRearFogLampOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isSupportLluPreview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "getLluPreviewEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "stopLluPreview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "getLluPreviewState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "setRearFogLamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "setLluPreviewEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "setHeadLampMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "isLLuSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 92
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->TAG:Ljava/lang/String;

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

    goto :goto_1

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->getHeadLampMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->isRearFogLampOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 89
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->isSupportLluPreview()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->getLluPreviewEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 83
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->stopLluPreview()V

    goto :goto_1

    .line 74
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->getLluPreviewState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 71
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setRearFogLamp(Z)V

    goto :goto_1

    .line 80
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setLluPreviewEffect(I)V

    goto :goto_1

    .line 65
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LampManager;->setHeadLampMode(I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 86
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->isLLuSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x797a804e -> :sswitch_9
        -0x6d6a8ce3 -> :sswitch_8
        -0x3b17acfa -> :sswitch_7
        -0x36916450 -> :sswitch_6
        -0x2fb0f0f8 -> :sswitch_5
        -0x1f132b4b -> :sswitch_4
        0x20ebbdfa -> :sswitch_3
        0x34929c38 -> :sswitch_2
        0x593fade7 -> :sswitch_1
        0x5c4c7811 -> :sswitch_0
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

.method public setHeadLampMode(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->LowBeam:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    goto :goto_0

    .line 149
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Position:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLluPreviewEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 274
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->FindCar:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 271
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 268
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->DcCharged:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 265
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Sleep:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 262
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->AwakeWait:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    :goto_0
    if-eqz p1, :cond_5

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    :cond_5
    return-void
.end method

.method public setRearFogLamp(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_rear_fog:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearFogLamp(Z)V

    .line 181
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_rear_fog"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopLluPreview()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LampManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->stopLluEffectPreview()V

    return-void
.end method
