.class public Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;
.super Lcom/xiaopeng/speech/ISoundLockState$Stub;
.source "SoundLockStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/ISoundLockState$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDriveSoundLocation()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getDriveSoundLocation()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDspMode()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getDspMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundLocationAngle()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getSoundLocationAngle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundSourceAngle()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getSoundSourceAngle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initSoundConfig()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->initSoundConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDefaultEnableSoundLocation()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isDefaultEnableSoundLocation()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultEnableSoundLock()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isDefaultEnableSoundLock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSoundLock()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isSupportSoundLock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoicePositionSet()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isVoicePositionSet()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockSoundLocation(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->lockSoundLocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public lockSoundLocationByWakeup(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->lockSoundLocationByWakeup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSoundLockState()Lcom/xiaopeng/speech/ISoundLockState;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    return-void
.end method

.method public setData(IJI)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/ISoundLockState;->setData(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultSoundLocationEnabled(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDefaultSoundLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultSoundLockEnabled(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDefaultSoundLockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDriveSoundLocation(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDriveSoundLocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDspMode(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDspMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsNeedResetSoundLock(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setIsNeedResetSoundLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSoundLocationAngle(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setSoundLocationAngle(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSupportSoundLock(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setSupportSoundLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceLockAngle(II)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/ISoundLockState;->setVoiceLockAngle(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
