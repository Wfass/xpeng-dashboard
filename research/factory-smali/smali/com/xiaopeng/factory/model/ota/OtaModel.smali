.class public Lcom/xiaopeng/factory/model/ota/OtaModel;
.super Ljava/lang/Object;
.source "OtaModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtaModel"

.field private static sOtaModel:Lcom/xiaopeng/factory/model/ota/OtaModel;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasServiceBind:Z

.field private mOTAService:Lcom/xiaopeng/ota/IOTAService;

.field private mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mTimes:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/xiaopeng/factory/model/ota/OtaModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/ota/OtaModel$1;-><init>(Lcom/xiaopeng/factory/model/ota/OtaModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mServiceConn:Landroid/content/ServiceConnection;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/ota/OtaModel;->bindService()V

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/ota/OtaModel;
    .param p1, "x1"    # Lcom/xiaopeng/ota/IOTAService;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/factory/model/ota/OtaModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/ota/OtaModel;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    return p1
.end method

.method private bindService()V
    .locals 5

    .line 70
    const-string v0, "OtaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService mHasServiceBind-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.ota.system.OTAService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "com.xiaopeng.ota"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 75
    iget-boolean v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/ota/OtaModel;
    .locals 2

    .line 40
    sget-object v0, Lcom/xiaopeng/factory/model/ota/OtaModel;->sOtaModel:Lcom/xiaopeng/factory/model/ota/OtaModel;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/xiaopeng/factory/model/ota/OtaModel;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/factory/model/ota/OtaModel;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/factory/model/ota/OtaModel;->sOtaModel:Lcom/xiaopeng/factory/model/ota/OtaModel;

    .line 43
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/ota/OtaModel;->sOtaModel:Lcom/xiaopeng/factory/model/ota/OtaModel;

    return-object v0
.end method

.method public static synthetic lambda$asynGetPsuVersion$1(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/xiaopeng/lib/http/ICallback;

    .line 140
    const/4 v0, 0x5

    .line 141
    .local v0, "times":I
    const/4 v1, 0x0

    move v2, v0

    move-object v0, v1

    .line 143
    .local v0, "psuVersion":Ljava/lang/String;
    .local v2, "times":I
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    .local v3, "times":I
    if-eqz v2, :cond_0

    .line 144
    .end local v2    # "times":I
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    move v2, v3

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    move v6, v3

    move-object v3, v2

    move v2, v6

    goto :goto_2

    .line 146
    :cond_0
    move v2, v3

    .end local v3    # "times":I
    .restart local v2    # "times":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v3}, Lcom/xiaopeng/ota/IOTAService;->getPsuVersion()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 149
    :cond_2
    const-string v3, "OtaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asynGetPsuVersion mHasServiceBind = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " psuVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    if-eqz p1, :cond_3

    .line 151
    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    if-eqz v3, :cond_4

    .line 153
    iget-object v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    const-string v4, "VERSNAME"

    const-string v5, "1"

    invoke-static {v4, v5, v0}, Lcom/xiaopeng/factory/utils/AtUtil;->responseString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/ota/OtaModel;->onDestroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :cond_4
    :goto_1
    goto :goto_3

    .line 157
    :catch_1
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz p1, :cond_5

    .line 159
    invoke-interface {p1, v1}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 161
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static synthetic lambda$asynResetPsuKey$0(Lcom/xiaopeng/factory/model/ota/OtaModel;[B)V
    .locals 3
    .param p1, "value"    # [B

    .line 108
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mTimes:I

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mTimes:I

    .line 110
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "OtaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asynResetPsuKey mHasServiceBind = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/ota/IOTAService;->resetPsuKey([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 119
    :goto_2
    return-void
.end method

.method private unBind()V
    .locals 3

    .line 81
    const-string v0, "OtaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBind mHasServiceBind-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public activatePsu()Z
    .locals 6

    .line 193
    const/4 v0, 0x5

    .line 194
    .local v0, "times":I
    const/4 v1, 0x0

    .line 196
    .local v1, "result":Z
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .local v2, "times":I
    if-eqz v0, :cond_0

    .line 197
    .end local v0    # "times":I
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Lcom/xiaopeng/factory/system/runnable/Sleep;->sleep(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    move v0, v2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1

    .line 199
    :cond_0
    move v0, v2

    .end local v2    # "times":I
    .restart local v0    # "times":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v2}, Lcom/xiaopeng/ota/IOTAService;->activatePsu()Z

    move-result v2

    move v1, v2

    .line 202
    :cond_2
    const-string v2, "OtaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activatePsu mHasServiceBind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    goto :goto_2

    .line 203
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 206
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public asynGetPsuVersion(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$DtE2dNqo2AMXzQumjXLWj1sJHqE;-><init>(Lcom/xiaopeng/factory/model/ota/OtaModel;Lcom/xiaopeng/lib/http/ICallback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public asynResetPsuKey([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mTimes:I

    .line 106
    new-instance v0, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/ota/-$$Lambda$OtaModel$3Z3Hn-GP4kSIODa7RVLFN383X0k;-><init>(Lcom/xiaopeng/factory/model/ota/OtaModel;[B)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public getPsuId(ZJ)Ljava/lang/String;
    .locals 6
    .param p1, "isActivated"    # Z
    .param p2, "timeout"    # J

    .line 172
    const/4 v0, 0x5

    .line 173
    .local v0, "times":I
    const/4 v1, 0x0

    .line 175
    .local v1, "psuId":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .local v2, "times":I
    if-eqz v0, :cond_0

    .line 176
    .end local v0    # "times":I
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Lcom/xiaopeng/factory/system/runnable/Sleep;->sleep(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    move v0, v2

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1

    .line 178
    :cond_0
    move v0, v2

    .end local v2    # "times":I
    .restart local v0    # "times":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/ota/IOTAService;->getPsuId(ZJ)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 181
    :cond_2
    const-string v2, "OtaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsuId mHasServiceBind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isActivated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " psuId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    goto :goto_2

    .line 183
    :catch_1
    move-exception v2

    .line 184
    .local v2, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v1
.end method

.method public getPsuVersion()Ljava/lang/String;
    .locals 4

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "psuVersion":Ljava/lang/String;
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v1}, Lcom/xiaopeng/ota/IOTAService;->getPsuVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 133
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "OtaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsuVersion mHasServiceBind = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "psuVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/ota/OtaModel;->unBind()V

    .line 211
    return-void
.end method

.method public resetPsuKey([B)Z
    .locals 4
    .param p1, "value"    # [B

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Z
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mOTAService:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v1, p1}, Lcom/xiaopeng/ota/IOTAService;->resetPsuKey([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 99
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "OtaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPsuKey mHasServiceBind = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mHasServiceBind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    return v0
.end method

.method public setAtWriter(Lcom/xiaopeng/factory/atcommand/ResponseWriter;)V
    .locals 1
    .param p1, "responseWriter"    # Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/factory/model/ota/OtaModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    .line 50
    :cond_0
    return-void
.end method
