.class public Lcom/xiaopeng/speech/proxy/SpeechStateProxy;
.super Lcom/xiaopeng/speech/ISpeechState$Stub;
.source "SpeechStateProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/ISpeechState;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechState:Lcom/xiaopeng/speech/ISpeechState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "SpeechStateProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->canExit()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canPerformASRToText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISpeechState;->canPerformASRToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCurrentTTS(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public getCurrentTTS()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->getCurrentTTS()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuncState(I)Z
    .locals 1
    .param p1, "func"    # I

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/ISpeechState;->getFuncState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOOBEStatus()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->getOOBEStatus()I

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
    const/4 v0, -0x1

    return v0
.end method

.method public getPhoneCallStatus()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->getPhoneCallStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDMEndByPOISelect()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isDMEndByPOISelect()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDMStarted()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isDMStarted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHotWordEngineReady()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isHotWordEngineReady()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInitOK()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isInitOK()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 30
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isMicrophoneMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNGCSpeechInitState()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isNGCSpeechInitState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isShowSpeechDialog()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isShowSpeechDialog()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStateWaiting()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->isStateWaiting()Z

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

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 94
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSpeechState()Lcom/xiaopeng/speech/ISpeechState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSpeechState()Lcom/xiaopeng/speech/ISpeechState;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "SpeechStateProxy"

    const-string v1, "isInitOK false, speechEngine.getSpeechState() = null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 109
    iput-object v1, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    .line 110
    return-void
.end method

.method public onWaiting()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mSpeechState:Lcom/xiaopeng/speech/ISpeechState;

    invoke-interface {v0}, Lcom/xiaopeng/speech/ISpeechState;->onWaiting()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCanExitFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public setFuncState(IZ)V
    .locals 2
    .param p1, "func"    # I
    .param p2, "flag"    # Z

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;IZ)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public setOOBEStatus(I)V
    .locals 2
    .param p1, "callStatus"    # I

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setPhoneCallStatus(I)V
    .locals 2
    .param p1, "callStatus"    # I

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callStatus"    # I

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public setShowSpeechDialog(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/SpeechStateProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
