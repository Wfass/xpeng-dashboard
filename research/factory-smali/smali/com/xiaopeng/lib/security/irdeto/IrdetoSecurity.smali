.class public Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/ISecurityModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD:Ljava/lang/String; = "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

.field private static final IRSS_FLAG_FILE_NAME:Ljava/lang/String; = "si_flag.dat"

.field private static final ISF_MGR_ROOTDETECTED:I = 0xa

.field private static final ISF_MGR_SHARED_SECURE_STORE_INVALID:I = 0xe

.field private static final MCU_FLAG_FILE_NAME:Ljava/lang/String; = "si_mcu.dat"

.field private static final NLSS0_FILE_NAME:Ljava/lang/String; = "irss0.dat"

.field private static final NLSS1_FILE_NAME:Ljava/lang/String; = "irss1.dat"

.field private static final NLSS2_FILE_NAME:Ljava/lang/String; = "irss2.dat"

.field public static final NLSS_FILE_PATH:Ljava/lang/String; = "/private/sec/"

.field private static final TAG:Ljava/lang/String; = "IrdetoSecurity"

.field private static sContext:Landroid/content/Context;

.field private static sIsInitSuccess:Z

.field private static sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;


# instance fields
.field private volatile sInitErrorMsg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->saveToken([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private checkSaveIndividualFlag()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->getIndividualFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "IrdetoSecurity"

    const-string v1, "irdeto delete indiv files"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->clearFlag()V

    .line 132
    :cond_0
    return-void
.end method

.method private clearFlag()V
    .locals 3

    .line 137
    :try_start_0
    const-string v0, "/private/sec/irss0.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 138
    const-string v0, "/private/sec/irss1.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 139
    const-string v0, "/private/sec/irss2.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 140
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 142
    const-string v0, "/private/sec/si_mcu.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "irss0.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1

    .line 568
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;->access$200()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object v0

    return-object v0
.end method

.method private initInternal(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forIndividual"    # Z

    .line 73
    sput-object p1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/private/sec/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->checkSaveIndividualFlag()V

    .line 81
    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->registerISFSecureStoreReloadReceiver()V

    .line 85
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    .line 87
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-direct {v1}, Lcom/irdeto/securesdk/SecureSDKManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    .line 88
    sget-object v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    const-string v2, "/private/sec/"

    invoke-virtual {v1, p1, v2}, Lcom/irdeto/securesdk/SecureSDKManager;->isfInitialize(Landroid/content/Context;Ljava/lang/String;)I

    .line 89
    sput-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    .line 90
    const-string v1, "IrdetoSecurity"

    const-string v2, "irdeto sdk init success"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/irdeto/securesdk/ISFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lcom/irdeto/securesdk/ISFException;
    const-string v2, "IrdetoSecurity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {v1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v0, 0xe

    if-eq v2, v0, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    const-string v0, "IrdetoSecurity"

    const-string v2, "irdeto sdk init failed : secure store error!!!!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->clearFlag()V

    .line 104
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    sput-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    .line 97
    const-string v0, "IrdetoSecurity"

    const-string v2, "irdeto sdk init success for eng root"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "irdeto init error for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/irdeto/securesdk/ISFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error code is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    .line 110
    .end local v1    # "e":Lcom/irdeto/securesdk/ISFException;
    :goto_2
    return-void
.end method

.method private printErrorReason(Ljava/lang/String;)V
    .locals 3
    .param p1, "head"    # Ljava/lang/String;

    .line 572
    const-string v0, "IrdetoSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private static registerISFSecureStoreReloadReceiver()V
    .locals 3

    .line 540
    const-string v0, "IrdetoSecurity"

    const-string v1, "registerISFSecureStoreReloadReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$4;

    invoke-direct {v2}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$4;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "token"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 500
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :try_start_1
    invoke-static {p0, p1}, Lcom/irdeto/securesdk/isf;->isfTokenSave([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    nop

    .line 511
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    throw v0

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    const-string v0, "IrdetoSecurity"

    const-string v1, "asyncGetMCUSecurityKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;Lcom/xiaopeng/lib/http/ICallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    return-void
.end method

.method public declared-synchronized asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 457
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 456
    .end local p1    # "ids":[Ljava/lang/String;
    .end local p2    # "token":[Ljava/lang/String;
    .end local p3    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    throw p1
.end method

.method public declared-synchronized asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    monitor-enter p0

    .line 474
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 473
    .end local p1    # "ids":[Ljava/lang/String;
    .end local p2    # "token":[Ljava/lang/String;
    .end local p3    # "listener":Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    throw p1
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    .line 370
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;->callBuildTokenDataThroughSystemDelegate(Landroid/content/Context;[Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 375
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 376
    const-string v1, "build token data error, "

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    .line 377
    monitor-exit v0

    return-object v2

    .line 379
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    invoke-static {p2}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/irdeto/securesdk/isf;->isfTokenOperate([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IrdetoSecurity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2

    .line 379
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearIndividualData()V
    .locals 1

    .line 162
    :try_start_0
    const-string v0, "/private/sec/irss2.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 163
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 165
    const-string v0, "/private/sec/si_mcu.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 394
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 395
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 398
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 523
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 524
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 525
    monitor-exit v0

    return-object v2

    .line 527
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :try_start_1
    const-string v0, "IR_CRYPTO_AES_CBC_DECRYPT"

    .line 531
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/irdeto/securesdk/isf;->isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 532
    .end local v0    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2

    .line 527
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 278
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 280
    const-string v1, "decode error, "

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    .line 281
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 283
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "result":Ljava/lang/String;
    const-string v1, "IrdetoSecurity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "irdeto decode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    return-object v0

    .line 289
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IrdetoSecurity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 283
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized deleteString(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 348
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 350
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :try_start_3
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfStoreDelete(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 347
    .end local p1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 114
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-virtual {v0}, Lcom/irdeto/securesdk/SecureSDKManager;->isfCleanup()I

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    .line 119
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    .line 120
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 258
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 260
    const-string v1, "encode error, "

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    .line 261
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 263
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/irdeto/securesdk/isf;->isfEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "result":Ljava/lang/String;
    const-string v1, "IrdetoSecurity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "irdeto encode result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    return-object v0

    .line 269
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IrdetoSecurity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 263
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGenerateOpaqueData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->IRDETO:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public getIndividualFlag()Ljava/lang/String;
    .locals 4

    .line 408
    const/4 v0, 0x0

    move-object v1, v0

    .line 410
    .local v1, "flag":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/private/sec/si_flag.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 412
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 414
    :goto_0
    return-object v1
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGetProvisionRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 304
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 306
    const-string v1, ""

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 308
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfStoreGet(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 308
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    .end local p1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    throw p1
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfProvisionResponse(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initInternal(Landroid/content/Context;Z)V

    .line 63
    return-object p0
.end method

.method public bridge synthetic initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object p1

    return-object p1
.end method

.method public initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initInternal(Landroid/content/Context;Z)V

    .line 69
    return-object p0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 5

    .line 423
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 424
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    const-string v1, "IrdetoSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Irdeto sdk not init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    monitor-exit v0

    return v2

    .line 428
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->getIndividualFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_1
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 428
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 446
    sget-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 2

    .line 193
    :try_start_0
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 205
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/io/File;

    const-string v1, "/private/sec/si_mcu.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    return-void

    .line 214
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGetMCUSecurityAsset()[B

    move-result-object v0

    .line 215
    .local v0, "data":[B
    const-string v1, "/private/sec/si_mcu.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "data":[B
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 327
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 329
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/irdeto/securesdk/isf;->isfStorePut(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 326
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    throw p1
.end method
