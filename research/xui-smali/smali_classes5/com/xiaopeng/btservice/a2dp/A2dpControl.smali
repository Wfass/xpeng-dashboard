.class public Lcom/xiaopeng/btservice/a2dp/A2dpControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "A2dpControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "A2dpControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

.field private mCallbackA2dp:Lcom/nforetek/bt/aidl/UiCallbackA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mCallback"    # Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 43
    new-instance v0, Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;-><init>(Lcom/xiaopeng/btservice/a2dp/A2dpControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mCallbackA2dp:Lcom/nforetek/bt/aidl/UiCallbackA2dp;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/a2dp/A2dpControl;)Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqA2dpDisconnect(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpStreamType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isA2dpConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->isA2dpServiceReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public pauseRender()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->pauseA2dpRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 2
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 25
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mCallbackA2dp:Lcom/nforetek/bt/aidl/UiCallbackA2dp;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "A2dpControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->mCallbackA2dp:Lcom/nforetek/bt/aidl/UiCallbackA2dp;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setLocalVolume(F)Z
    .locals 1
    .param p1, "volume"    # F

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setA2dpLocalVolume(F)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStreamType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setA2dpStreamType(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startRender()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->startA2dpRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
