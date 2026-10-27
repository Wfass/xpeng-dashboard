.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;
.super Ljava/lang/Object;
.source "LluBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "LluBaseViewModel"


# instance fields
.field mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_llu"

    .line 24
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    return-void
.end method


# virtual methods
.method public getLluAwakeMode()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluAwakeMode()I

    move-result v0

    return v0
.end method

.method public getLluChargingSw()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluChargingSw()Z

    move-result v0

    return v0
.end method

.method public getLluEffect(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluEffect(I)I

    move-result p1

    return p1
.end method

.method public getLluSleepMode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluSleepMode()I

    move-result v0

    return v0
.end method

.method public getLluSleepSw()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluSleepSw()Z

    move-result v0

    return v0
.end method

.method public getLluSpeedLimitCfg()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluSpeedLimitCfg()I

    move-result v0

    return v0
.end method

.method public getLluWakeWaitSw()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluWakeWaitSw()Z

    move-result v0

    return v0
.end method

.method public getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getRunningLluEffectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->fromLluCmd(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    return-object v0
.end method

.method public isLLuSwEnabled()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v0

    return v0
.end method

.method public isLightDanceAvailable()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLightDanceAvailable()I

    move-result v0

    return v0
.end method

.method public isLluChargingEnable()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluChargingEnable()Z

    move-result v0

    return v0
.end method

.method public isLluLockUnlockEleEnabled()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluLockUnlockEleEnabled()Z

    move-result v0

    return v0
.end method

.method public isLluPhotoEnable()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluPhotoEnable()Z

    move-result v0

    return v0
.end method

.method public isLluShowOffEnable()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluShowOffEnable()Z

    move-result v0

    return v0
.end method

.method public isLluSleepEnable()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluSleepEnable()Z

    move-result v0

    return v0
.end method

.method public isLluWakeWaitEnable()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluWakeWaitEnable()Z

    move-result v0

    return v0
.end method

.method public isSayHiEnabled()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isSayHiEnabled()Z

    move-result v0

    return v0
.end method

.method public playLluEffect(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pause"
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "LluBaseViewModel"

    .line 206
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLangLightMusicEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "LluBaseViewModel"

    .line 197
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLluAwakeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluAwakeMode(I)V

    return-void
.end method

.method public setLluChargingSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, p1, v0, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    :goto_0
    return-void
.end method

.method public setLluDancePreview(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const-string v1, "WeddingMarch"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLluEffect(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    return-void
.end method

.method public setLluEffectPreview(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLluLockUnlockEleSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluLockUnlockEleSw(Z)V

    return-void
.end method

.method public setLluMultiSwEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const-string v2, "isSupportLluAllOn"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p1, v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    return-void
.end method

.method public setLluPhotoSwitch(Z)V
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
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluPhotoSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "LluBaseViewModel"

    .line 171
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLluShowOffSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluShowOffSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "LluBaseViewModel"

    .line 183
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepMode(I)V

    return-void
.end method

.method public setLluSleepSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, p1, v0, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    :goto_0
    return-void
.end method

.method public setLluSpeedLimitCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSpeedLimitCfg(I)V

    return-void
.end method

.method public setLluSwEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    return-void
.end method

.method public setLluWakeWaitSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, p1, v0, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    :goto_0
    return-void
.end method

.method public setSayHiEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setSayHiEnable(Z)V

    return-void
.end method

.method public stopLluEffectPreview()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->stopLluEffectPreview()V

    return-void
.end method
