.class public Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "CarManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$CarManagerServerHolder;,
        Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    }
.end annotation


# static fields
.field private static final DUMP_CMD_DISABLE_APP_KEY:Ljava/lang/String; = "-disable-appkey-verify"

.field private static final DUMP_CMD_DISABLE_MODULE:Ljava/lang/String; = "-disable-module-verify"

.field private static final DUMP_CMD_ENABLE_APP_KEY:Ljava/lang/String; = "-enable-appkey-verify"

.field private static final DUMP_CMD_ENABLE_MODULE:Ljava/lang/String; = "-enable-module-verify"

.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarManagerServer"

.field private static volatile VERIFY_APPKEY:Z

.field private static volatile VERIFY_MODULE:Z


# instance fields
.field private mAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/car/opensdk/CarManager;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->MODULE_NAME:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_APPKEY:Z

    .line 154
    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_MODULE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 31
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    .line 59
    const-string v0, "carmanagerserver"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarManagerServer$LJ14gwFFsk3TVfeYv77Bxz4eANU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarManagerServer$LJ14gwFFsk3TVfeYv77Bxz4eANU;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;
    .locals 1

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$CarManagerServerHolder;->access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v0

    return-object v0
.end method

.method private getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "pkgInfo":Lcom/xiaopeng/app/xpPackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 410
    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXpPackageInfo,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private handleCommands(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "ret":I
    const-string v1, "CarManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCommands, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x74bdfa17

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, -0x26898772

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "authGet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "carManagerInit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 305
    :pswitch_0
    aget-object v1, p2, v3

    invoke-virtual {p0, p4, p5, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v1

    .line 306
    .local v1, "authed":Z
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, -0x3

    :goto_2
    move v0, v3

    .line 307
    .end local v1    # "authed":Z
    goto :goto_3

    .line 302
    :pswitch_1
    invoke-direct {p0, p4, p5, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->handleSdkInit(II[Ljava/lang/String;)I

    move-result v0

    .line 303
    nop

    .line 311
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSdkInit(II[Ljava/lang/String;)I
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .line 318
    .local v0, "ret":I
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$1;)V

    .line 319
    .local v1, "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->packageName:Ljava/lang/String;

    .line 320
    iput p2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->uid:I

    .line 321
    iput p1, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->currentPid:I

    .line 322
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSystemApp(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isThirdApp(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->isThird:Z

    .line 324
    sget-boolean v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_APPKEY:Z

    if-eqz v2, :cond_2

    .line 325
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->isThird:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->verifyAppKey(I[Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->sdkVerified:Z

    goto :goto_2

    .line 327
    :cond_2
    iput-boolean v4, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->sdkVerified:Z

    .line 330
    :goto_2
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->isThird:Z

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    .line 332
    .local v2, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v2, :cond_3

    .line 333
    iget-wide v5, v2, Lcom/xiaopeng/app/xpPackageInfo;->moduleAuthFlags:J

    iput-wide v5, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->authBits:J

    .line 337
    .end local v2    # "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 338
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->sdkVerified:Z

    if-nez v2, :cond_4

    .line 342
    const/4 v0, -0x2

    .line 347
    :cond_4
    const-string v2, "CarManagerServer"

    const-string v5, "handleSdkInit pid(%d) uid(%s) result => %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    .line 347
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v0

    .line 339
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isDebugBuild()Z
    .locals 1

    .line 415
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    return v0
.end method

.method private isSystemApp(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 369
    const/16 v0, 0x2710

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThirdApp(II)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 373
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 374
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    .line 379
    .local v2, "pkgInfo":Lcom/xiaopeng/app/xpPackageInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 380
    const/4 v4, 0x1

    .local v4, "isThird":Z
    goto :goto_1

    .line 384
    .end local v4    # "isThird":Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 385
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-interface {v4, v5, p1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 387
    const/4 v4, 0x0

    .restart local v4    # "isThird":Z
    goto :goto_0

    .line 390
    .end local v4    # "isThird":Z
    :cond_1
    move v4, v3

    .line 395
    .restart local v4    # "isThird":Z
    :goto_0
    goto :goto_1

    .line 392
    .end local v4    # "isThird":Z
    :catch_0
    move-exception v4

    .line 393
    .local v4, "e2":Ljava/lang/Exception;
    const-string v5, "CarManagerServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUidSignatures e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    nop

    .end local v4    # "e2":Ljava/lang/Exception;
    move v4, v3

    .line 398
    .local v4, "isThird":Z
    :goto_1
    const-string v5, "CarManagerServer"

    const-string v6, "check app is third app, packageName(%s) uid(%d) pid(%d) isThird = %b"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    .line 398
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return v4
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private verifyAppKey(I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "params"    # [Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    aget-object v1, p2, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 355
    .local v1, "appKey":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 356
    return v0

    .line 360
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 362
    return v0

    .line 365
    :cond_2
    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/opensdk/SecurityUtil;->verifyAppKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 116
    const-string v0, "CarManagerServer"

    const-string v1, "add listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 169
    const-string v0, "dump:CarManagerServer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    if-eqz p2, :cond_a

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 174
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_9

    .line 175
    aget-object v2, p2, v1

    .line 176
    .local v2, "arg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "-enable-appkey-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "-disable-appkey-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_2

    :sswitch_2
    const-string v3, "-list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_3
    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_2

    :sswitch_4
    const-string v3, "-h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_2

    :sswitch_5
    const-string v3, "-enable-module-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "-disable-module-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v2    # "arg":Ljava/lang/String;
    goto/16 :goto_7

    .line 198
    .restart local v2    # "arg":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x5695938

    if-eq v3, v8, :cond_5

    const v4, -0x2a32823

    if-eq v3, v4, :cond_4

    const v4, 0x53b66c56

    if-eq v3, v4, :cond_3

    const v4, 0x567c9d6b

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v3, "-enable-appkey-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v7

    goto :goto_4

    :cond_3
    const-string v3, "-disable-appkey-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v0

    goto :goto_4

    :cond_4
    const-string v3, "-enable-module-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v5

    goto :goto_4

    :cond_5
    const-string v3, "-disable-module-verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v6

    :goto_4
    packed-switch v4, :pswitch_data_1

    goto :goto_5

    .line 213
    :pswitch_1
    const-string v3, "module auth is enabled."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    sput-boolean v7, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_MODULE:Z

    goto :goto_5

    .line 209
    :pswitch_2
    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_MODULE:Z

    .line 210
    const-string v3, "module auth is disabled!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    goto :goto_5

    .line 205
    :pswitch_3
    sput-boolean v7, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_APPKEY:Z

    .line 206
    const-string v3, "app key verification is enabled."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    goto :goto_5

    .line 201
    :pswitch_4
    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_APPKEY:Z

    .line 202
    const-string v3, "app key verification is disabled!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    nop

    .line 215
    :goto_5
    goto/16 :goto_7

    .line 218
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support in release build: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    goto :goto_7

    .line 187
    :pswitch_5
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;

    .line 189
    .local v5, "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 190
    .end local v5    # "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    goto :goto_6

    .line 191
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    monitor-exit v3

    .line 193
    goto :goto_7

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 178
    :pswitch_6
    const-string v3, "Support cmd:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "-l/-list: List all AppInfo"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "-disable-appkey-verify"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "-disable-module-verify"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "-enable-appkey-verify"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v3, "\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "-enable-module-verify"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    nop

    .line 174
    .end local v2    # "arg":Ljava/lang/String;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_9
    return-void

    .line 171
    :cond_a
    :goto_8
    const-string v0, "please input params! use -h too list supported cmd"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5695938 -> :sswitch_6
        -0x2a32823 -> :sswitch_5
        0x5db -> :sswitch_4
        0x5df -> :sswitch_3
        0x2acd24b -> :sswitch_2
        0x53b66c56 -> :sswitch_1
        0x567c9d6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 71
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 87
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->handleCommands(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    .line 89
    .local v0, "ret":I
    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->handleCommands(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    .line 106
    .local v0, "ret":I
    return v0
.end method

.method public isModuleAuth(IILjava/lang/String;)Z
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "moduleName"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;

    .line 269
    .local v0, "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v2, v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->currentPid:I

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->sdkVerified:Z

    if-nez v2, :cond_1

    .line 276
    return v1

    .line 279
    :cond_1
    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->isThird:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 281
    return v3

    .line 284
    :cond_2
    sget-boolean v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->VERIFY_MODULE:Z

    if-eqz v2, :cond_5

    .line 285
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->getModuleBitsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 286
    .local v2, "bitVal":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 288
    return v3

    .line 291
    :cond_3
    const-wide/16 v4, 0x0

    iget-wide v6, v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->authBits:J

    const-wide/16 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    shl-long/2addr v8, v10

    and-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1

    .line 294
    .end local v2    # "bitVal":Ljava/lang/Integer;
    :cond_5
    return v3

    .line 271
    :cond_6
    :goto_0
    return v1
.end method

.method public isSdkInit(I)Z
    .locals 10
    .param p1, "pid"    # I

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;

    .line 254
    .local v2, "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    iget v6, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->currentPid:I

    if-ne v6, p1, :cond_0

    iget-boolean v6, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->sdkVerified:Z

    if-eqz v6, :cond_0

    .line 255
    const-string v1, "CarManagerServer"

    const-string v6, "isSdkInit: pid(%d) find appInfo(isThird=%b, uid=%d, pid=%d, authBits=%d)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-boolean v5, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->isThird:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    iget v5, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const/4 v3, 0x3

    iget v5, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->currentPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const/4 v3, 0x4

    iget-wide v8, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->authBits:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v3

    .line 255
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    monitor-exit v0

    return v4

    .line 259
    .end local v2    # "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const-string v0, "CarManagerServer"

    const-string v1, "isSdkInit pid(%d) packageName(%s) = false"

    new-array v2, v3, [Ljava/lang/Object;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 261
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return v5

    .line 260
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onClientDied(I)V
    .locals 5
    .param p1, "pid"    # I

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "diedAppInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;

    .line 239
    .local v3, "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    iget v4, v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->currentPid:I

    if-ne v4, p1, :cond_0

    .line 240
    move-object v1, v3

    .line 241
    goto :goto_1

    .line 243
    .end local v3    # "appInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    :cond_0
    goto :goto_0

    .line 244
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 245
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->mAppInfoMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v1    # "diedAppInfo":Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer$AppInfo;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    const-string v0, "CarManagerServer"

    const-string v1, "onClientDied pid(%d) packageName(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 247
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeListener()V
    .locals 2

    .line 124
    const-string v0, "CarManagerServer"

    const-string v1, "remove listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
