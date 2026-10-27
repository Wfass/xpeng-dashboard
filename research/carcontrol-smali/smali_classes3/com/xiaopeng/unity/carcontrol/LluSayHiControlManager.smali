.class public Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "LluSayHiControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ILluSayHiControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ILluSayHiControlManager;"
    }
.end annotation


# instance fields
.field private mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkValid(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluPreviewState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p1

    .line 185
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
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

    if-eqz p1, :cond_2

    .line 211
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluPreviewState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private convertSayHiEffect2AvasEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect1:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    .line 380
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect3:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    goto :goto_0

    .line 382
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect2:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    :goto_0
    return-object v0
.end method

.method private convertSayHiEffect2LluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    .line 346
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    goto :goto_0

    .line 348
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->SayHi2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    :goto_0
    return-object v0
.end method

.method private getSoundPath(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_1.wav"

    goto :goto_0

    :cond_1
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_3.wav"

    goto :goto_0

    :cond_2
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_2.wav"

    :goto_0
    return-object p1
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setAndPlayLluEffect$6(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "soundPath"
        }
    .end annotation

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLluLockingEffect()I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_locking_effect:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)I

    move-result v0

    return v0
.end method

.method public getLluPreviewState()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluPreviewStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->checkValid(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->convertLluPreviewState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLluSayHiEffect()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_sayhi_effect:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getFriendEffect()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->fromAvasType(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 318
    sget-object v3, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$AvasEffect:[I

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public initInternal()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 53
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 54
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 55
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 56
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    .line 57
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 58
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isSayHiAvasEnable()Z
    .locals 5

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSayHiEnable()Z

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasSayHiSw()Z

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSayHiAvasEnable: isSayHiEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isSayHiEnable()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_sayhi:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isSayHiEnabled()Z

    move-result v0

    return v0
.end method

.method public isSupportLluPreview()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 340
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isTurnLampOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 341
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

.method public synthetic lambda$observeData$0$LluSayHiControlManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->checkValid(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->convertLluPreviewState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onLluPreviewStateChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$1$LluSayHiControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onLluSayHiEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$LluSayHiControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onLluSyaHiSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$LluSayHiControlManager(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSayHiEnable()Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvasSayHiSwChanged: isSayHiEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v1, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v1, v3}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onAvasSayHiSwChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$4$LluSayHiControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onLluSayHiEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$LluSayHiControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlListener;->onLluLockingEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setAndPlayLluEffect$7$LluSayHiControlManager(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "effect"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluPreviewStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$w2Whd-N0Y5ctCqTI2E0Ao0UBauo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$w2Whd-N0Y5ctCqTI2E0Ao0UBauo;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getXuiShowoffModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$yLrFJWsZTnzeyN6uh7JBm9FpxTk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$yLrFJWsZTnzeyN6uh7JBm9FpxTk;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluSyaHiSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$COJSA3I5GsHLVJJMSzfVsFJIP4k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$COJSA3I5GsHLVJJMSzfVsFJIP4k;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasSayHiSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$I_b3HackGog496RuPS4mZSx13WE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$I_b3HackGog496RuPS4mZSx13WE;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getFriendEffectData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$twXjAIleqMvDQOG-zKWl0OcXaI0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$twXjAIleqMvDQOG-zKWl0OcXaI0;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getXuiLockingModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$Gpo8B1sj1sEdK6i73RSg-83YhEI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$Gpo8B1sj1sEdK6i73RSg-83YhEI;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setLluSayHiEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setSayHiAvasSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "isSupportLluPreview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setSayHiSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "isSayHiAvasEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "getLluLockingEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "stopLluPreview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "getLluPreviewState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "getLluSayHiEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "setLluLockingEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "isSayHiEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_0

    :sswitch_b
    const-string v0, "setXKeyForCustomerSayHi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->TAG:Ljava/lang/String;

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

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_c

    const-string p1, ","

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 97
    array-length p2, p1

    if-le p2, v2, :cond_c

    .line 98
    aget-object p2, p1, v1

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLluSayHiEffect(IZ)V

    goto :goto_1

    .line 121
    :pswitch_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setSayHiAvasSw(Z)V

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSupportLluPreview()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 115
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setSayHiSw(Z)V

    goto :goto_1

    .line 118
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSayHiAvasEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 130
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getLluLockingEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 109
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->stopLluPreview()V

    goto :goto_1

    .line 92
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getLluPreviewState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 103
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getLluSayHiEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 127
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLluLockingEffect(I)V

    goto :goto_1

    .line 112
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSayHiEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 124
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setXKeyForCustomerSayHi()V

    :cond_c
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_d

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_d
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6d4fd8d2 -> :sswitch_b
        -0x6765c49b -> :sswitch_a
        -0x5ca3192b -> :sswitch_9
        -0x54bef642 -> :sswitch_8
        -0x2fb0f0f8 -> :sswitch_7
        -0x1f132b4b -> :sswitch_6
        -0x9fae37 -> :sswitch_5
        0x12fb0c6c -> :sswitch_4
        0x20fca70e -> :sswitch_3
        0x34929c38 -> :sswitch_2
        0x567eef95 -> :sswitch_1
        0x733771ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setAndPlayLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;ILcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "effectMode",
            "avasEffect",
            "startPreview",
            "soundPath"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;I)V

    if-eqz p3, :cond_0

    .line 292
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasFriendEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    :cond_0
    if-eqz p4, :cond_1

    const/4 p2, 0x2

    .line 295
    new-instance p3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$8fBNKAlPkcc40sov-j-tTfeCCxE;

    invoke-direct {p3, p5}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$8fBNKAlPkcc40sov-j-tTfeCCxE;-><init>(Ljava/lang/String;)V

    const-wide/16 p4, 0x1c2

    invoke-static {p2, p3, p4, p5}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSupportLluPreview()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 302
    new-instance p3, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$UIeOemYX7tEtkl-cwRnNliVyg40;-><init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    const-wide/16 p4, 0x32

    invoke-static {p2, p3, p4, p5}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public setLluLockingEffect(I)V
    .locals 10
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_locking_effect:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    move v6, v3

    goto :goto_0

    .line 247
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking3:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move v6, v0

    move-object v5, v1

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking2:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-object v5, v0

    move v6, v1

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-object v5, v0

    move v6, v2

    :goto_0
    if-eq v6, v3, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    move-object v4, p0

    .line 254
    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setAndPlayLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;ILcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;ZLjava/lang/String;)V

    .line 256
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_exterior_llu_locking_effect"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLluSayHiEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setLluSayHiEffect(IZ)V

    return-void
.end method

.method public setLluSayHiEffect(IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "startPreview"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->lamp_exterior_llu_sayhi_effect:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    goto :goto_0

    .line 275
    :cond_1
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    goto :goto_0

    .line 272
    :cond_2
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    :goto_0
    if-eqz v2, :cond_3

    .line 284
    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->convertSayHiEffect2LluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->toLluCmd()I

    move-result v5

    .line 285
    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->convertSayHiEffect2AvasEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getSoundPath(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move v7, p2

    .line 284
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->setAndPlayLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;ILcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setSayHiAvasSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    return-void
.end method

.method public setSayHiSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_exterior_sayhi:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setSayHiEnable(Z)V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mAvasVm:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasSayHiSw(Z)V

    .line 421
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_exterior_sayhi"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXKeyForCustomerSayHi()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    return-void
.end method

.method public stopLluPreview()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->mLluVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->stopLluEffectPreview()V

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    return-void
.end method
