.class public Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"


# static fields
.field public static final BUCKET_AND_ENDPOINT:Ljava/lang/String;

.field public static final BUCKET_NAME:Ljava/lang/String;

.field private static final CHECK_CONNECTION_DELAY:I = 0x2710

.field private static final DEBUG:Z = false

.field private static final DUMP_CACHE_DELAY:I = 0xea60

.field private static final LOG_PATH:Ljava/lang/String; = "/data/Log/log0/"

.field private static final MAX_NUM_PER_ZIP_DATA_LOCAL:I = 0x14

.field private static final MESSAGE_CHECK_CONNECTION:I = 0x3

.field private static final MESSAGE_DUMP_CAN:I = 0x1

.field private static final MESSAGE_DUMP_CDU:I = 0x2

.field private static final SEPARATOR:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "DataCollectorHelper"

.field private static volatile mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;


# instance fields
.field private final mCanDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCduDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private mHandler:Landroid/os/Handler;

.field private remoteService:Lcom/xiaopeng/lib/bughunter/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xp-log-local"

    goto :goto_0

    :cond_0
    const-string v0, "xp-log"

    :goto_0
    sput-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".oss-cn-hangzhou.aliyuncs.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    .line 73
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/a;)Lcom/xiaopeng/lib/bughunter/a;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Landroid/content/ServiceConnection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->zipAndEncrypt(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.service.DATA_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.data.uploader"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postNormal(Ljava/lang/Runnable;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private buildCanDataZipJson()Ljava/lang/String;
    .locals 4

    .line 496
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CAN:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$a;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v0

    .line 498
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getDBCVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCollectorHelper"

    const-string v3, "parse dbcVersion error!"

    .line 500
    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 501
    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 504
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 505
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 510
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method private buildCduDataZipJson()Ljava/lang/String;
    .locals 4

    const-string v0, "DataCollectorHelper"

    .line 546
    sget-object v1, Lcom/xiaopeng/datalog/bean/LogEvent$a;->CDU:Lcom/xiaopeng/datalog/bean/LogEvent$a;

    invoke-static {v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$a;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v1

    .line 548
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getDBCVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "parse dbcVersion error!"

    .line 550
    invoke-static {v0, v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 551
    invoke-virtual {v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 556
    :goto_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 557
    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 558
    invoke-virtual {v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 559
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "buildCduDataZipJson error!"

    .line 561
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private deleteLocalFile(Ljava/io/File;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 441
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 442
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private dumpCan2File()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataCollectorHelper"

    const-string v1, "mCanDataCache.isEmpty(), return!"

    .line 287
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCanDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {}, Laof;->a()Laof;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    const-string v3, "candata"

    invoke-virtual {v1, v3, v0, v2}, Laof;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private dumpCdu2File()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataCollectorHelper"

    const-string v1, "mCduDataCache.isEmpty(), return!"

    .line 306
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCduDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {}, Laof;->a()Laof;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    const-string v3, "cdudata"

    invoke-virtual {v1, v3, v0, v2}, Laof;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private generateAllFilePathString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 464
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Log/upload-zip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 424
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateRemoteUrl(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_en.zip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateUploadInfos()[Ljava/lang/String;
    .locals 5

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate7(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateRemoteUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 388
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
    .locals 2

    .line 144
    sget-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    if-nez v0, :cond_1

    .line 145
    const-class v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 149
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 151
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    return-object v0
.end method

.method private uploadCduLogInternal(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 536
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private zipAndEncrypt(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFiles(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 411
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x0

    .line 414
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".zip"

    const-string v2, "_en.zip"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "@!chxpzi#0109$+/"

    .line 415
    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->encrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    .line 416
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->deleteLocalFile(Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    return-void
.end method

.method internalUploadRecentSystemLog(Ljava/lang/String;)V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DataCollectorHelper"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalUploadRecentSystemLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 603
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method isConnected()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method uploadCan(Ljava/lang/String;)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 258
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/a;->b(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    goto :goto_1

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method uploadCdu(Ljava/lang/String;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DataCollectorHelper"

    const-string v2, "uploadCdu error!"

    .line 206
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 213
    invoke-virtual {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 212
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 214
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method uploadCduWithFiles(Laob;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laob;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;[Ljava/lang/String;Ljava/util/List;Laob;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method uploadFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v0, :cond_0

    .line 481
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 483
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    const-string v1, "DataCollectorHelper"

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/bughunter/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "uploadLogImmediately error!"

    .line 333
    invoke-static {v1, p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "uploadLogImmediately fail and ignore!"

    .line 339
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/a;

    if-eqz v0, :cond_1

    .line 227
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/bughunter/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 238
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 239
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 240
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    const-string v0, "data"

    .line 241
    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 244
    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 243
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 245
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method uploadRecentSystemLog()Ljava/lang/String;
    .locals 2

    .line 573
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 574
    aget-object v0, v0, v1

    .line 575
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$7;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-object v0
.end method
