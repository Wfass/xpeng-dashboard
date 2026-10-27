.class public Lcom/xiaopeng/devtools/model/e/a;
.super Ljava/lang/Object;
.source "OtaModel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private tQ:Lcom/xiaopeng/ota/IOTAService;

.field private tR:Z

.field private tS:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/model/e/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/e/a$1;-><init>(Lcom/xiaopeng/devtools/model/e/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tS:Landroid/content/ServiceConnection;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/e/a;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/e/a;->bindService()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/e/a;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/e/a;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    return p1
.end method

.method private bindService()V
    .locals 5

    .line 50
    const-string v0, "OtaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService mHasServiceBind-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v1, "com.xiaopeng.ota.system.OTAService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "com.xiaopeng.ota"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/e/a;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 55
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/e/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/e/a;->tS:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 58
    :cond_0
    return-void
.end method

.method private hd()V
    .locals 3

    .line 61
    const-string v0, "OtaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBind mHasServiceBind-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/e/a;->tS:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public hasCduFileFromUsb()Z
    .locals 4

    .line 198
    nop

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->hasCduFileFromUsb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OtaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCduFileFromUsb mHasCduFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    return v0
.end method

.method public hasMeterFileFromUsb()Z
    .locals 4

    .line 170
    nop

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->hasMeterFileFromUsb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OtaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMeterFileFromUsb mHasMeterFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    return v0
.end method

.method public hasPsuFileFromUsb()Z
    .locals 4

    .line 126
    nop

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->hasPsuFileFromUsb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OtaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPsuFileFromUsb mHasPsuFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    return v0
.end method

.method public he()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tR:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/e/a;->hd()V

    .line 260
    return-void
.end method

.method public updateCduFromUsb()V
    .locals 2

    .line 212
    const-string v0, "OtaModel"

    const-string v1, "updateCduFromUsb"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->updateCduFromUsb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 218
    :goto_0
    return-void
.end method

.method public updateEcuComplete(Ljava/lang/String;Z)V
    .locals 2

    .line 250
    const-string v0, "OtaModel"

    const-string v1, "updateEcuComplete"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/ota/IOTAService;->updateEcuComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 256
    :goto_0
    return-void
.end method

.method public updateMeterFromUsb()V
    .locals 2

    .line 184
    const-string v0, "OtaModel"

    const-string v1, "updateMeterFromUsb"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->updateMeterFromUsb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    :goto_0
    return-void
.end method

.method public updatePsuFromUsb()V
    .locals 2

    .line 114
    const-string v0, "OtaModel"

    const-string v1, "updatePsuFromUsb"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/e/a;->tQ:Lcom/xiaopeng/ota/IOTAService;

    invoke-interface {v0}, Lcom/xiaopeng/ota/IOTAService;->updatePsuFromUsb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    :goto_0
    return-void
.end method
