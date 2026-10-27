.class public abstract Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;
.super Ljava/lang/Object;
.source "AbstractOtaManager.java"


# static fields
.field private static final SYSPATH:Ljava/lang/String; = "/system/etc/xuiservice/remote/remote.bin"

.field public static final TAG:Ljava/lang/String; = "AbstractOtaManager"


# instance fields
.field private listener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

.field private mRemoteManager:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

.field private userPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "/data/xuiservice/remote/remote.bin"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->userPath:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->listener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    .line 22
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->mRemoteManager:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    return-void
.end method

.method private versionCompare(I)Z
    .locals 8
    .param p1, "newVersion"    # I

    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RemoteVersion"

    .line 25
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "oldVersion":Ljava/lang/String;
    const-string v1, "AbstractOtaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "versionCompare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%03d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    return v4
.end method


# virtual methods
.method protected getAddress()Ljava/lang/String;
    .locals 3

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_remote_address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOtaStatusRegistry()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->listener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    return-object v0
.end method

.method protected abstract getVersion(Ljava/lang/String;)I
.end method

.method public registerOtaStatusListener(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->listener:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    .line 41
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "userPath"    # Ljava/lang/String;

    .line 49
    const-string v0, "AbstractOtaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->userPath:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected abstract startOta(Ljava/lang/String;)Z
.end method

.method public upgrade(Z)Z
    .locals 4
    .param p1, "checkVersion"    # Z

    .line 61
    const-string v0, "/system/etc/xuiservice/remote/remote.bin"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->getVersion(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "sysVersion":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->userPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->getVersion(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "userVersion":I
    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->versionCompare(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    const-string v2, "AbstractOtaManager"

    const-string v3, "This version is already up to date."

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    return v2

    .line 65
    :cond_1
    :goto_0
    if-le v0, v1, :cond_2

    const-string v2, "/system/etc/xuiservice/remote/remote.bin"

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->userPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;->startOta(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
