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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getDriveSoundLocation()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getDspMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getSoundLocationAngle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->getSoundSourceAngle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->initSoundConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isDefaultEnableSoundLocation()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isDefaultEnableSoundLock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isSupportSoundLock()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
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
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISoundLockState;->isVoicePositionSet()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lockSoundLocation(I)V
    .locals 1
    .param p1, "angle"    # I

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->lockSoundLocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public lockSoundLocationByWakeup(I)V
    .locals 1
    .param p1, "angle"    # I

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->lockSoundLocationByWakeup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 1
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSoundLockState()Lcom/xiaopeng/speech/ISoundLockState;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 25
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    .line 30
    return-void
.end method

.method public setData(IJI)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "address"    # J
    .param p4, "value"    # I

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/ISoundLockState;->setData(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultSoundLocationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDefaultSoundLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDefaultSoundLockEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDefaultSoundLockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDriveSoundLocation(I)V
    .locals 1
    .param p1, "location"    # I

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDriveSoundLocation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDspMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setDspMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setIsNeedResetSoundLock(Z)V
    .locals 1
    .param p1, "needReset"    # Z

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setIsNeedResetSoundLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSoundLocationAngle(I)V
    .locals 1
    .param p1, "angle"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setSoundLocationAngle(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSupportSoundLock(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISoundLockState;->setSupportSoundLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceLockAngle(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->mSoundLockState:Lcom/xiaopeng/speech/ISoundLockState;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/ISoundLockState;->setVoiceLockAngle(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
