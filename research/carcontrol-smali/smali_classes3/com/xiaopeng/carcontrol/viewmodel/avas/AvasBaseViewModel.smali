.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;
.super Ljava/lang/Object;
.source "AvasBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AvasBaseViewModel"


# instance fields
.field mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

.field private mExternalSw:Ljava/lang/Boolean;

.field private mExternalVolume:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalSw:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalVolume:Ljava/lang/Integer;

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_avas"

    .line 39
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/-$$Lambda$AvasBaseViewModel$z5T6FfExad3PENaYetnCd4iPuxE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/-$$Lambda$AvasBaseViewModel$z5T6FfExad3PENaYetnCd4iPuxE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvasExternalVolume()I
    .locals 1

    .line 198
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getAvasExternalVolume()I

    move-result v0

    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalVolume:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAvasSayHiSw()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getAvasSayHiSw()Z

    move-result v0

    return v0
.end method

.method public getAvasSpeakerSw()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getAvasSpeakerSw()Z

    move-result v0

    return v0
.end method

.method public getBootEffectBeforeSw()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getBootEffectBeforeSw()I

    move-result v0

    return v0
.end method

.method public getBootSoundEffect()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getBootSoundEffect()I

    move-result v0

    return v0
.end method

.method public getBootSoundPreviewPath(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    array-length v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 269
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->getResPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 272
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 273
    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getFriendEffect()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getFriendSoundType()I

    move-result v0

    return v0
.end method

.method public getLowSpdEffect()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getLowSpdSoundType()I

    move-result v0

    return v0
.end method

.method public getLowSpdVolume()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getLowSpdSoundVolume()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isAvasAcChargingEnable()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasAcChargingEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasDcChargingEnable()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasDcChargingEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasDisconnectChargingEnable()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasDisconnectChargingEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasExternalSwEnabled()Z
    .locals 1

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasExternalEnabled()Z

    move-result v0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalSw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAvasSleepEnable()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasSleepEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasTakePhotoEnable()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasTakePhotoEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasWakeWaitEnable()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasWakeWaitEnable()Z

    move-result v0

    return v0
.end method

.method public isAvasWakeWaitFullChargeEnable()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isAvasWakeWaitFullChargeEnable()Z

    move-result v0

    return v0
.end method

.method public isLowSpdEnabled()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->isLowSpdSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$AvasBaseViewModel()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_external_sw"

    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalSw:Ljava/lang/Boolean;

    const-string v1, "avas_external_volume"

    const/16 v2, 0x64

    .line 46
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalVolume:Ljava/lang/Integer;

    return-void
.end method

.method public setAvasAcChargingSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasAcChargingSwitch(Z)V

    return-void
.end method

.method public setAvasDcChargingSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasDcChargingSwitch(Z)V

    return-void
.end method

.method public setAvasDisconnectChargingSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasDisconnectChargingSwitch(Z)V

    return-void
.end method

.method public setAvasExternalSound(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasExternalSound(I)V

    return-void
.end method

.method public setAvasExternalSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasExternalSw(Z)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalSw:Ljava/lang/Boolean;

    .line 172
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_external_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public setAvasExternalVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasExternalVolume(I)V

    .line 189
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mExternalVolume:Ljava/lang/Integer;

    .line 191
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_external_volume"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setAvasSayHiSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasSayHiSw(Z)V

    return-void
.end method

.method public setAvasSleepSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasSleepSwitch(Z)V

    return-void
.end method

.method public setAvasSpeakerSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasSpeakerSw(Z)V

    return-void
.end method

.method public setAvasTakePhotoSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasTakePhotoSwitch(Z)V

    return-void
.end method

.method public setAvasWakeWaitFullChargeSwitch(Z)V
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasWakeWaitFullChargeSwitch(Z)V

    return-void
.end method

.method public setAvasWakeWaitSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setAvasWakeWaitSwitch(Z)V

    return-void
.end method

.method public setBootEffectBeforeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootEffectBeforeSw(I)V

    return-void
.end method

.method public setBootSoundEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->getBootSoundEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->setBootEffectBeforeSw(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootSoundEffect(I)V

    return-void
.end method

.method public setExternalSoundModeCmd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setExternalSoundModeCmd(I)V

    return-void
.end method

.method public setFriendEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setFriendSoundType(I)V

    .line 95
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "say_hi_effect"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setLowSpdEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundType(I)V

    return-void
.end method

.method public setLowSpdEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundEnable(Z)V

    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->avas_low_spd_close:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLowSpdVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasBaseViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundVolume(I)V

    return-void
.end method
