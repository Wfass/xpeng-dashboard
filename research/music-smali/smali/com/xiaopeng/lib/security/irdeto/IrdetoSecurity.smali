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

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

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

    const-string v0, "IrdetoSecurity"

    const-string v1, "irdeto delete indiv files"

    .line 129
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->clearFlag()V

    :cond_0
    return-void
.end method

.method private clearFlag()V
    .locals 3

    :try_start_0
    const-string v0, "/private/sec/irss0.dat"

    .line 137
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/irss1.dat"

    .line 138
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/irss2.dat"

    .line 139
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/si_flag.dat"

    .line 140
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/si_mcu.dat"

    .line 142
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
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1

    .line 586
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$Holder;->access$200()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object v0

    return-object v0
.end method

.method private initInternal(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "IrdetoSecurity"

    .line 73
    sput-object p1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    const-string v1, "/private/sec/"

    if-eqz p2, :cond_1

    .line 76
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->checkSaveIndividualFlag()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->registerISFSecureStoreReloadReceiver()V

    :goto_0
    const/4 p2, 0x0

    .line 85
    sput-boolean p2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 p2, 0x1

    .line 87
    :try_start_0
    new-instance v2, Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-direct {v2}, Lcom/irdeto/securesdk/SecureSDKManager;-><init>()V

    sput-object v2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    .line 88
    sget-object v2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-virtual {v2, p1, v1}, Lcom/irdeto/securesdk/SecureSDKManager;->isfInitialize(Landroid/content/Context;Ljava/lang/String;)I

    .line 89
    sput-boolean p2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const-string p1, "irdeto sdk init success"

    .line 90
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/irdeto/securesdk/ISFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 92
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 p2, 0xe

    if-eq v1, p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "irdeto sdk init failed : secure store error!!!!"

    .line 101
    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->clearFlag()V

    goto :goto_1

    .line 95
    :cond_3
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    sput-boolean p2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const-string p2, "irdeto sdk init success for eng root"

    .line 97
    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "irdeto init error for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error code is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private printErrorReason(Ljava/lang/String;)V
    .locals 1

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IrdetoSecurity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static registerISFSecureStoreReloadReceiver()V
    .locals 3

    const-string v0, "IrdetoSecurity"

    const-string v1, "registerISFSecureStoreReloadReceiver"

    .line 558
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    sget-object v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$4;

    invoke-direct {v2}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$4;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 516
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 517
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 518
    monitor-exit v0

    return-void

    .line 520
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :try_start_1
    invoke-static {p0, p1}, Lcom/irdeto/securesdk/isf;->isfTokenSave([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    throw p0

    :catchall_0
    move-exception p0

    .line 520
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
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

    const-string v0, "IrdetoSecurity"

    const-string v1, "asyncGetMCUSecurityKey"

    .line 229
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;Lcom/xiaopeng/lib/http/ICallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 496
    invoke-virtual {p0, p2, p3, p4}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 459
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 0

    .line 501
    invoke-virtual {p0, p2, p3, p4}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    return-void
.end method

.method public declared-synchronized asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    new-instance v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;-><init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 371
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/http/systemdelegate/DelegateHelper;->callBuildTokenDataThroughSystemDelegate(Landroid/content/Context;[Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 375
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 376
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "build token data error, "

    .line 377
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    .line 378
    monitor-exit v0

    return-object v2

    .line 380
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    invoke-static {p2}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/irdeto/securesdk/isf;->isfTokenOperate([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "IrdetoSecurity"

    .line 385
    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 380
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public clearIndividualData()V
    .locals 1

    :try_start_0
    const-string v0, "/private/sec/irss2.dat"

    .line 162
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/si_flag.dat"

    .line 163
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    const-string v0, "/private/sec/si_mcu.dat"

    .line 165
    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 393
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    .line 541
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 542
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 543
    monitor-exit v0

    return-object v2

    .line 545
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "IR_CRYPTO_AES_CBC_DECRYPT"

    .line 549
    invoke-static {v0, p1, p2, p3}, Lcom/irdeto/securesdk/isf;->isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 545
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 279
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    const-string p1, "decode error, "

    .line 281
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    const-string p1, ""

    .line 282
    monitor-exit v0

    return-object p1

    .line 284
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IrdetoSecurity"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "irdeto decode result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "IrdetoSecurity"

    .line 291
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    .line 284
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized deleteString(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 349
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 351
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 353
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :try_start_3
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfStoreDelete(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 353
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 114
    sget-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/irdeto/securesdk/SecureSDKManager;->isfCleanup()I

    const/4 v0, 0x0

    .line 116
    sput-object v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sSecureSDKManager:Lcom/irdeto/securesdk/SecureSDKManager;

    :cond_0
    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 259
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 260
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    const-string p1, "encode error, "

    .line 261
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->printErrorReason(Ljava/lang/String;)V

    const-string p1, ""

    .line 262
    monitor-exit v0

    return-object p1

    .line 264
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IrdetoSecurity"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "irdeto encode result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "IrdetoSecurity"

    .line 271
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    .line 264
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1

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
    .locals 3

    const/4 v0, 0x0

    .line 411
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/private/sec/si_flag.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGetProvisionRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 305
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    const-string p1, ""

    .line 307
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 309
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfStoreGet(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    .line 314
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 309
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 0

    .line 183
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfProvisionResponse(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initInternal(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public bridge synthetic initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object p1

    return-object p1
.end method

.method public initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->initInternal(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 5

    .line 425
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0

    .line 426
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "IrdetoSecurity"

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Irdeto sdk not init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sInitErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    monitor-exit v0

    return v2

    .line 430
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
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

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v2

    :catchall_0
    move-exception v1

    .line 430
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 448
    sget-boolean v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 2

    :try_start_0
    const-string v0, "/private/sec/si_flag.dat"

    .line 193
    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 1

    const-string v0, "/private/sec/si_mcu.dat"

    if-nez p1, :cond_0

    .line 208
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGetMCUSecurityAsset()[B

    move-result-object p1

    .line 216
    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    const-class v0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    :try_start_1
    sget-boolean v1, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->sIsInitSuccess:Z

    if-nez v1, :cond_0

    .line 330
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/irdeto/securesdk/isf;->isfStorePut(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 332
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 0

    return-void
.end method
