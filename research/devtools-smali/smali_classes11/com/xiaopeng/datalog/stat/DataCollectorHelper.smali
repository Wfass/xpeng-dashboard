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

.field private remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xp-log-local"

    goto :goto_0

    :cond_0
    const-string v0, "xp-log"

    :goto_0
    sput-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_NAME:Ljava/lang/String;

    .line 61
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    .line 72
    new-instance v0, Landroid/os/Handler;

    .line 73
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->zipAndEncrypt(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private bindService()V
    .locals 5

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.service.DATA_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.xiaopeng.data.uploader"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    :cond_0
    return-void
.end method

.method private buildCanDataZipJson()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 488
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->qb:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v0

    .line 490
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    const-string v2, "DataCollectorHelper"

    const-string v3, "parse dbcVersion error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 496
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 497
    const-string v2, "data"

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 502
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 508
    return-object v0
.end method

.method private buildCduDataZipJson()Ljava/lang/String;
    .locals 4

    .line 538
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->qc:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v0

    .line 540
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    const-string v2, "DataCollectorHelper"

    const-string v3, "parse dbcVersion error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 546
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 547
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 548
    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 549
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    return-object v0
.end method

.method private deleteLocalFile(Ljava/io/File;Z)V
    .locals 0

    .line 431
    if-eqz p2, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 434
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    goto :goto_0

    .line 435
    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    :cond_0
    :goto_0
    return-void
.end method

.method private dumpCan2File()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "DataCollectorHelper"

    const-string v1, "mCanDataCache.isEmpty(), return!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCanDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/k;->dM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/xiaopeng/datalog/b/a;->eV()Lcom/xiaopeng/datalog/b/a;

    move-result-object v1

    const-string v2, "candata"

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaopeng/datalog/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method private dumpCdu2File()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "DataCollectorHelper"

    const-string v1, "mCduDataCache.isEmpty(), return!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCduDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/k;->dM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/xiaopeng/datalog/b/a;->eV()Lcom/xiaopeng/datalog/b/a;

    move-result-object v1

    const-string v2, "cdudata"

    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaopeng/datalog/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    return-void
.end method

.method private generateAllFilePathString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 453
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 456
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Log/upload-zip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 416
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 421
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
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_en.zip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
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
    .locals 4

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateRemoteUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
    .locals 2

    .line 143
    sget-object v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    if-nez v0, :cond_1

    .line 144
    const-class v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mInstance:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 148
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 150
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

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 528
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
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

    .line 399
    nop

    .line 401
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/k;->b(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    goto :goto_0

    .line 402
    :catch_0
    move-exception p2

    .line 403
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 406
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".zip"

    const-string v2, "_en.zip"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    const-string p1, "@!chxpzi#0109$+/"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/b/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    .line 408
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->deleteLocalFile(Ljava/io/File;Z)V

    .line 409
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    .line 161
    return-void
.end method

.method internalUploadRecentSystemLog(Ljava/lang/String;)V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    const-string v0, "DataCollectorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalUploadRecentSystemLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadSystemLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception p1

    .line 589
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 592
    :cond_0
    :goto_0
    return-void
.end method

.method isConnected()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

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

    .line 247
    nop

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadCan(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    nop

    .line 257
    nop

    .line 260
    move v0, v1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    goto :goto_1

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :cond_3
    :goto_1
    return-void
.end method

.method uploadCdu(Ljava/lang/String;)V
    .locals 3

    .line 189
    nop

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v0, :cond_1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLog(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    const/4 v0, 0x1

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "DataCollectorHelper"

    const-string v2, "uploadCdu error!"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 205
    invoke-virtual {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 204
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 206
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    .line 208
    :cond_2
    return-void
.end method

.method uploadCduWithFiles(Lcom/xiaopeng/datalog/d;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/datalog/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;[Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/datalog/d;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 363
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

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v0, :cond_0

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadFiles(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception p1

    .line 475
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 478
    :cond_0
    :goto_0
    return-void
.end method

.method uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 319
    nop

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 p1, 0x1

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception p1

    .line 325
    const-string p2, "DataCollectorHelper"

    const-string v0, "uploadLogImmediately error!"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 331
    const-string p1, "DataCollectorHelper"

    const-string p2, "uploadLogImmediately fail and ignore!"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method

.method uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 216
    nop

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v0, :cond_1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    const/4 v0, 0x1

    .line 226
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 230
    const-class v0, Lcom/xiaopeng/datalog/a;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 231
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 232
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    const-string v0, "data"

    .line 233
    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 236
    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 235
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 237
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    .line 239
    :cond_2
    return-void
.end method

.method uploadRecentSystemLog()Ljava/lang/String;
    .locals 2

    .line 559
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    .line 560
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 561
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 580
    return-object v0
.end method
