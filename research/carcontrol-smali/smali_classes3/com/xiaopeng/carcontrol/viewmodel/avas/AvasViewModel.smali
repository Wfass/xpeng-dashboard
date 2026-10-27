.class public Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;
.source "AvasViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AvasViewModel"


# instance fields
.field private final mAvasAcChargingSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasBootEffect:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasDcChargingSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasDisconnectChargingSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasExternalSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasExternalVolume:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasSayHiSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasSleepSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasTakePhotoSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasWakeWaitFullChargeSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvasWakeWaitSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriendEffect:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowSpdEffect:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowSpdSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowSpdVolume:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;-><init>()V

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdSw:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdEffect:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdVolume:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitSw:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitFullChargeSw:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSleepSw:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasAcChargingSw:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDcChargingSw:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDisconnectChargingSw:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalSw:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalVolume:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasTakePhotoSw:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSayHiSw:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasBootEffect:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mFriendEffect:Landroidx/lifecycle/MutableLiveData;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getAvasAcChargingSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasAcChargingSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasBootEffectData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasBootEffect:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasDcChargingSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDcChargingSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasDisconnectChargingSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDisconnectChargingSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasExternalSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasExternalVolumeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalVolume:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasLowSpdEffectData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdEffect:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasLowSpdVolumeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdVolume:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasSayHiSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSayHiSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasSleepSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSleepSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasTakePhotoSw()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasTakePhotoSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasWakeWaitFullChargeSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitFullChargeSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvasWakeWaitSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getBootSoundEffectValue()Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;
    .locals 3

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->fromXuiCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AvasViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object v0
.end method

.method public getFriendEffectData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mFriendEffect:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLowSpdSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$setAvasLowSpdEffect$0$AvasViewModel()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setLowSpdEnable(Z)V

    return-void
.end method

.method public onAvasAcChargingChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasAcChargingSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasDcChargingChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDcChargingSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasDisconnectChargingChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasDisconnectChargingSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasExternalSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasExternalVolumeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasExternalVolume:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasLowSpdChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasLowSpdEffectChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->fromAvasType(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdEffect:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvasLowSpdEffectChanged, error effect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onAvasLowSpdVolumeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mLowSpdVolume:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAvasSayHiSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSayHiSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasSleepChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasSleepSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasTakePhotoChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasTakePhotoSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasWakeWaitChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvasWakeWaitFullChargeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasWakeWaitFullChargeSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onBootEffectChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mAvasBootEffect:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFriendSoundTypeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->mFriendEffect:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAvasFriendEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->toAvasType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setFriendEffect(I)V

    :cond_0
    return-void
.end method

.method public setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->toAvasType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setLowSpdEffect(I)V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->isLowSpdEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 163
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/-$$Lambda$AvasViewModel$PWmnQxoXCjKRuFX05gaPaVhNrU0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/-$$Lambda$AvasViewModel$PWmnQxoXCjKRuFX05gaPaVhNrU0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setBootSoundEffectValue(Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->toXuiCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffect(I)V

    :cond_0
    return-void
.end method
