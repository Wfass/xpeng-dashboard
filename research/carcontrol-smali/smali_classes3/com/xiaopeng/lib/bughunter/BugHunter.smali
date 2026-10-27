.class public Lcom/xiaopeng/lib/bughunter/BugHunter;
.super Ljava/lang/Object;
.source "BugHunter.java"


# static fields
.field private static final CATON_EVENT:Ljava/lang/String; = "perf_caton"

.field private static final DUMP_INFO_FLAG:Ljava/lang/String; = "persist.sys.xp.debug.dumpcaton"

.field private static final KEY_ANR_FLAG:Ljava/lang/String; = "anr"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_APP_VER:Ljava/lang/String; = "appVer"

.field private static final KEY_CANTON_TYPE:Ljava/lang/String; = "catonType"

.field private static final KEY_CDU_VER:Ljava/lang/String; = "cduVer"

.field private static final KEY_EVENT:Ljava/lang/String; = "_event"

.field private static final KEY_EVENT_TIME:Ljava/lang/String; = "_time"

.field private static final KEY_IG_ON_STATE:Ljava/lang/String; = "igOnState"

.field private static final KEY_IG_ON_TIME:Ljava/lang/String; = "igOnTime"

.field private static final KEY_MCU_VER:Ljava/lang/String; = "_mcuver"

.field private static final KEY_MEM_INFO:Ljava/lang/String; = "memInfo"

.field private static final KEY_MODULE:Ljava/lang/String; = "_module"

.field private static final KEY_MODULE_VER:Ljava/lang/String; = "_module_version"

.field private static final KEY_NETWORK:Ljava/lang/String; = "_network"

.field private static final KEY_SCREEN_DISPLAY_CHANGE_TIME:Ljava/lang/String; = "screenDisplayChangeTime"

.field private static final KEY_SCREEN_DISPLAY_STATE:Ljava/lang/String; = "screenDisplayState"

.field private static final KEY_STACK_INFO:Ljava/lang/String; = "stackInfo"

.field private static final KEY_STACK_MD5:Ljava/lang/String; = "md5"

.field private static final KEY_STUCK_TIME:Ljava/lang/String; = "elapseTime"

.field private static final KEY_SYSTEM_BOOT_TIME:Ljava/lang/String; = "_st_time"

.field private static final OUTPUT_DIR:Ljava/lang/String; = "/sdcard/Log"

.field private static final REPORT_CATON_FLAG:Ljava/lang/String; = "persist.sys.xp.release.reportcaton"

.field private static final SEPARATOR:Ljava/lang/String; = "#"

.field private static final STACKTRACES_MAX_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "libBugHunter"

.field public static final TYPE_ANDROID:I = 0x0

.field public static final TYPE_U3D:I = 0x1

.field private static sDumpToSdCardFlag:Z = false

.field private static sInstance:Landroid/content/Context; = null

.field private static volatile sIsInitialized:Z = false

.field private static sIsInternational:Z = false

.field private static sReportCatonFlag:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Log/catondumpflag"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.sys.xp.debug.dumpcaton"

    .line 101
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 102
    sput-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sDumpToSdCardFlag:Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static/range {p0 .. p7}, Lcom/xiaopeng/lib/bughunter/BugHunter;->printStackTrace(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/bughunter/BugHunter;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sDumpToSdCardFlag:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static/range {p0 .. p7}, Lcom/xiaopeng/lib/bughunter/BugHunter;->getJsonStuckLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/bughunter/BugHunter;->dumpCatonInfo(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    return v0
.end method

.method private static calcStackTraceMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stacktraceInfo"
        }
    .end annotation

    const-string v0, "\n"

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 485
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/lib/bughunter/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dumpCatonInfo(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logDir",
            "packageName",
            "bytes"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "libBugHunter"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 591
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    .line 592
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    .line 593
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caton LogDir setReadable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; setWritable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; setExecutable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "make caton LogDir failed"

    .line 597
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".log"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 604
    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 606
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 607
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    const-string p0, "\n\n"

    .line 608
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 611
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    return-void

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz p1, :cond_3

    .line 615
    :try_start_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 619
    :catch_3
    :cond_3
    throw p0
.end method

.method public static getApp()Landroid/content/Context;
    .locals 1

    .line 109
    sget-object v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sInstance:Landroid/content/Context;

    return-object v0
.end method

.method private static getJsonStuckLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "pkgName",
            "appVer",
            "elapseTime",
            "stackMd5",
            "stackInfo",
            "cantonType"
        }
    .end annotation

    .line 491
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_event"

    const-string v2, "perf_caton"

    .line 493
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_module"

    const-string v2, "perf"

    .line 494
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_mcuver"

    .line 495
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/utils/BugHunterUtils;->getMCUVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_module_version"

    .line 496
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_st_time"

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_time"

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_network"

    .line 500
    invoke-static {p0}, Lcom/xiaopeng/lib/bughunter/utils/BugHunterUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appName"

    .line 502
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appVer"

    .line 503
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "anr"

    const/4 p1, 0x0

    .line 504
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "elapseTime"

    .line 505
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "md5"

    .line 506
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "stackInfo"

    .line 507
    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "catonType"

    .line 508
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "cduVer"

    .line 509
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "igOnState"

    .line 510
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getIgOnState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "igOnTime"

    .line 511
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getIgOnStateChangeTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "screenDisplayState"

    .line 512
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getScreenDisplayStatus()I

    move-result p1

    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "screenDisplayChangeTime"

    .line 514
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getScreenDisplayChangeTime()J

    move-result-wide p1

    .line 514
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error in function getJsonCatonLog, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "libBugHunter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 637
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 p0, 0x4000

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 643
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/bughunter/BugHunter;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 627
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-static {p0, v0, v1, v0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->init(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public static init(Landroid/content/Context;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "strictMode",
            "enableLogcat",
            "enableDumpFile"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    sget-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sReportCatonFlag:Z

    if-nez v0, :cond_0

    const-string p0, "libBugHunter"

    const-string p1, "BugHunter is deprecated, skip init"

    .line 123
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/bughunter/BugHunter;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInitialized:Z

    if-eqz v1, :cond_1

    .line 129
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 131
    sput-boolean v1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInitialized:Z

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "libBugHunter"

    const-string v1, "initCaton: BUILD_VERSION 2.3.6"

    .line 134
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sInstance:Landroid/content/Context;

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->registerReceiver()V

    .line 141
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/lib/bughunter/BugHunter;->initCaton(Landroid/content/Context;ZZZ)V

    .line 144
    const-class p1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance p2, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-direct {p2, p0}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 146
    const-class p0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {p0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p0

    const-class p1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 132
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static initCaton(Landroid/content/Context;ZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "strictMode",
            "enableLogcat",
            "enableDumpFile"
        }
    .end annotation

    .line 362
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isUserVersion()Z

    move-result v0

    const-wide/16 v1, 0x190

    const-wide/16 v3, 0x64

    if-eqz v0, :cond_0

    const-wide/32 v1, 0xea60

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    move-wide v1, v3

    goto :goto_1

    .line 370
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/Log/catonflag"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_1
    if-eqz p3, :cond_3

    const/4 p1, 0x1

    .line 379
    sput-boolean p1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sDumpToSdCardFlag:Z

    .line 382
    :cond_3
    new-instance p1, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;-><init>(Landroid/content/Context;)V

    sget-object p3, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->LOOPER:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    .line 384
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->monitorMode(Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    move-result-object p1

    .line 386
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->loggingEnabled(Z)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    move-result-object p1

    .line 388
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->collectInterval(J)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    move-result-object p1

    .line 390
    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->thresholdTime(J)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/lib/bughunter/BugHunter$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/lib/bughunter/BugHunter$3;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->callback(Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    move-result-object p0

    .line 472
    invoke-static {p0}, Lcom/xiaopeng/lib/bughunter/anr/Caton;->initialize(Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;)V

    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "md5",
            "context",
            "pkgName",
            "stackTraces",
            "stuckElapseTime",
            "threadElapseTime"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 527
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 529
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    const-string v5, "activity"

    .line 533
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 535
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 537
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 538
    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    .line 539
    iget-wide v10, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v10, v8

    .line 540
    iget-wide v12, v5, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long v8, v12, v8

    const-string v0, "availMem:"

    .line 542
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "totalMem:"

    .line 543
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "threshold:"

    .line 544
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-wide v5, v6

    goto :goto_0

    :cond_0
    move-wide v8, v5

    move-wide v10, v8

    .line 547
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n----------------caton log [ "

    .line 548
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, " ]"

    .line 552
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    :goto_1
    if-ltz v7, :cond_2

    .line 555
    aget-object v12, v2, v7

    const-string v13, "\n"

    .line 556
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 559
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "YYYY/MM/dd HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v7, "md5"

    move-object v12, p0

    .line 562
    invoke-virtual {v3, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "pkgName"

    .line 563
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    .line 564
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ElapseTime"

    move-wide/from16 v12, p4

    .line 565
    invoke-virtual {v3, v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "threadElapseTime"

    move-wide/from16 v12, p6

    .line 566
    invoke-virtual {v3, v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "availMem"

    .line 567
    invoke-virtual {v3, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "totalMem"

    .line 568
    invoke-virtual {v3, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "threshold"

    .line 569
    invoke-virtual {v3, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "catonLog"

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 573
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 576
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libBugHunter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/bughunter/anr/Config;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reportCantonEvent(ILjava/lang/String;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "cantonInfo",
            "stuckElapseTime",
            "threadElapseTime"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportCantonEvent type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  stuckElapseTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libBugHunter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r\n\r\n"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 163
    array-length v0, p1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    .line 167
    :goto_0
    array-length v5, p1

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 168
    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    .line 169
    aget-object v5, p1, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    const-string p1, "reportCantonEvent stackTraces\'s size is over 50, break"

    .line 172
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    .line 179
    array-length p1, v4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_4

    aget-object v3, v4, v0

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportCantonEvent stackTrace = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_4
    sget-boolean p1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    if-eqz p1, :cond_5

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sIsInternational = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", will skip report"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_5
    new-instance p1, Lcom/xiaopeng/lib/bughunter/BugHunter$1;

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    move v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/lib/bughunter/BugHunter$1;-><init>([Ljava/lang/String;JJI)V

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static reportCantonEvent(I[Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "stackTraces",
            "stuckElapseTime",
            "threadElapseTime"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportCantonEvent type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  stuckElapseTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libBugHunter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportCantonEvent stackTrace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    if-eqz v0, :cond_1

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sIsInternational = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/xiaopeng/lib/bughunter/BugHunter;->sIsInternational:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", will skip report"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 266
    new-instance v8, Lcom/xiaopeng/lib/bughunter/BugHunter$2;

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/bughunter/BugHunter$2;-><init>([Ljava/lang/String;JJI)V

    invoke-static {v0, v8}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static wrapStackTracesString([Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stackTraces",
            "stringBuilder"
        }
    .end annotation

    .line 332
    array-length v0, p0

    const/4 v1, 0x0

    .line 333
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/xiaopeng/lib/bughunter/BugHunter;->calcStackTraceMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 338
    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :cond_0
    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 344
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wrapStackTracesString md5 = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "libBugHunter"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
