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
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isLanVersion()Z

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

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

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
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
    .param p1, "x1"    # Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

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
    .local v0, "intent":Landroid/content/Intent;
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
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    :cond_0
    return-void
.end method

.method private buildCanDataZipJson()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 488
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->CAN:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v0

    .line 490
    .local v0, "event":Lcom/xiaopeng/datalog/bean/LogEvent;
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

    .line 494
    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DataCollectorHelper"

    const-string v3, "parse dbcVersion error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 497
    .local v1, "canData":Lcom/google/gson/JsonObject;
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
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 502
    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "canDataZipJson":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 508
    return-object v3
.end method

.method private buildCduDataZipJson()Ljava/lang/String;
    .locals 4

    .line 538
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->CDU:Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;

    move-result-object v0

    .line 540
    .local v0, "event":Lcom/xiaopeng/datalog/bean/LogEvent;
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

    .line 544
    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DataCollectorHelper"

    const-string v3, "parse dbcVersion error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setV(I)V

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 547
    .local v1, "msg":Ljava/util/List;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 548
    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setMsg(Ljava/util/List;)V

    .line 549
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "cduDataZipJson":Ljava/lang/String;
    return-object v2
.end method

.method private deleteLocalFile(Ljava/io/File;Z)V
    .locals 1
    .param p1, "dstZipFile"    # Ljava/io/File;
    .param p2, "encryptResult"    # Z

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
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private dumpCan2File()V
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "DataCollectorHelper"

    const-string v1, "mCanDataCache.isEmpty(), return!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCanDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "canDataZipJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getInstance()Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    move-result-object v2

    const-string v3, "candata"

    iget-object v4, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v4}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->updateFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 290
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method private dumpCdu2File()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "DataCollectorHelper"

    const-string v1, "mCduDataCache.isEmpty(), return!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->buildCduDataZipJson()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "cduDataZipJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ZipUtils;->compressForGzipAndBase64NoWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getInstance()Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    move-result-object v2

    const-string v3, "cdudata"

    iget-object v4, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v4}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->updateFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 308
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

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
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "allFilePathStr":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 453
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
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
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "timeStamp"    # J
    .param p3, "objectKeyDir"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Log/upload-zip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "dstFileDirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "dstFileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 421
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateRemoteUrl(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "timeStamp"    # J
    .param p3, "objectKeyDir"    # Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_en.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "objectKey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->BUCKET_AND_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateUploadInfos()[Ljava/lang/String;
    .locals 7

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    .local v0, "timeStamp":J
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

    .line 376
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate7(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "objectKeyDir":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateRemoteUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "address":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "dstFilePath":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    return-object v5
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
    .locals 4
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
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCdu2File()V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    :cond_1
    :goto_0
    return-void
.end method

.method private zipAndEncrypt(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "dstFilePath"    # Ljava/lang/String;
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
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, "dstZipFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/ZipUtils;->zipMultiFiles(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 404
    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 406
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".zip"

    const-string v3, "_en.zip"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "encryptFile":Ljava/io/File;
    const-string v2, "@!chxpzi#0109$+/"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->encrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 408
    .local v2, "encryptResult":Z
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->deleteLocalFile(Ljava/io/File;Z)V

    .line 409
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V

    .line 161
    return-void
.end method

.method internalUploadRecentSystemLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "ossUrl"    # Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadSystemLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 592
    .end local v0    # "e":Landroid/os/RemoteException;
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
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_1

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadCan(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    const/4 v0, 0x1

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 262
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCanDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->dumpCan2File()V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :cond_3
    :goto_1
    return-void
.end method

.method uploadCdu(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLog(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataCollectorHelper"

    const-string v3, "uploadCdu error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 205
    invoke-virtual {v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 204
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 206
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    .line 208
    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method uploadCduWithFiles(Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V
    .locals 2
    .param p1, "statEvent"    # Lcom/xiaopeng/datalog/StatEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/datalog/StatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "uploadInfos":[Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$5;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;[Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/datalog/StatEvent;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

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
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 v0, 0x1

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataCollectorHelper"

    const-string v3, "uploadLogImmediately error!"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 331
    const-string v1, "DataCollectorHelper"

    const-string v2, "uploadLogImmediately fail and ignore!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :cond_1
    return-void
.end method

.method uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    if-eqz v1, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->remoteService:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mCduDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 230
    const-class v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 231
    .local v1, "dataLog":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 232
    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "data"

    .line 233
    invoke-interface {v2, v3, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    .line 234
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "jsonData":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->mGson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;

    invoke-direct {v4, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 236
    invoke-virtual {v4}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 235
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 237
    .local v3, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v3}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduLogInternal(Ljava/util/Map;)V

    .line 239
    .end local v1    # "dataLog":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    .end local v2    # "jsonData":Ljava/lang/String;
    .end local v3    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method uploadRecentSystemLog()Ljava/lang/String;
    .locals 3

    .line 559
    invoke-direct {p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->generateUploadInfos()[Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "uploadInfos":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 561
    .local v1, "remoteUrl":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$6;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 580
    return-object v1
.end method
