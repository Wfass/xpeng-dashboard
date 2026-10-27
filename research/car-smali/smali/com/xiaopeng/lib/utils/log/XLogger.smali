.class public Lcom/xiaopeng/lib/utils/log/XLogger;
.super Ljava/lang/Object;
.source "XLogger.java"

# interfaces
.implements Lcom/xiaopeng/lib/utils/LogUtils$Logger;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CACHE_DAYS:I = 0x0

.field private static final MAX_INCREASE_SIZE_ONE_MIN:I = 0x20000

.field private static final MESSAGE_FLUSH:I = 0x1

.field private static final PUBLIC_KEY:Ljava/lang/String; = "43b835098ac59e6a265edfd3b4aa53ba18e67c9503e88f74253d433f36cf854e3a6f77a92d25454284bcf57913bd91abadfa062520cb8662f6740eaeca23b573"

.field private static final TAG:Ljava/lang/String; = "XLogger"


# instance fields
.field private mAlreadyChmodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilePath:Ljava/lang/String;

.field private final mFilePrefix:Ljava/lang/String;

.field private final mFlushInterval:I

.field private mHandler:Landroid/os/Handler;

.field private final mLevel:I

.field private mLogLengthPerMin:J

.field private mMainThreadId:J

.field private final mMaxSingleSize:J

.field private final mMaxTotalSize:J

.field private final mMode:I

.field private final mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mXlog:Lcom/tencent/mars/xlog/Xlog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPackageName:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePath:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->filePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePrefix:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->mode:I

    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMode:I

    .line 55
    iget v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->level:I

    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLevel:I

    .line 56
    iget v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->flushInterval:I

    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFlushInterval:I

    .line 57
    iget-wide v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxTotalSize:J

    iput-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    .line 58
    iget-wide v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->maxSingleSize:J

    iput-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxSingleSize:J

    .line 60
    iget-object v0, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/utils/log/XLogger;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private cleanLogPath()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "logDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    .line 123
    const-string v1, "XLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logDir.setReadable(true, false), path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 126
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 130
    .local v1, "logFiles":[Ljava/io/File;
    if-eqz v1, :cond_9

    array-length v4, v1

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 136
    :cond_2
    const-wide/16 v4, 0x0

    .line 137
    .local v4, "fileSizeSum":J
    const/4 v6, 0x0

    .line 138
    .local v6, "chmodResult":Z
    array-length v7, v1

    move v8, v6

    move-wide v5, v4

    move v4, v3

    .end local v4    # "fileSizeSum":J
    .end local v6    # "chmodResult":Z
    .local v5, "fileSizeSum":J
    .local v8, "chmodResult":Z
    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v9, v1, v4

    .line 139
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 140
    iget-object v10, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 141
    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v8

    .line 142
    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v10

    and-int/2addr v8, v10

    .line 143
    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v10

    and-int/2addr v8, v10

    .line 144
    const-string v10, "XLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "logDir.setReadable(true, false), path:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " chmodResult:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-static {v10, v11}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v10, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v9    # "f":Ljava/io/File;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    array-length v4, v1

    if-le v2, v4, :cond_5

    .line 151
    const-string v2, "XLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete first mAlreadyChmodList element:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    :cond_5
    iget-wide v9, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    cmp-long v2, v5, v9

    if-gez v2, :cond_6

    .line 156
    return-void

    .line 160
    :cond_6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "logFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Lcom/xiaopeng/lib/utils/log/XLogger$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/lib/utils/log/XLogger$1;-><init>(Lcom/xiaopeng/lib/utils/log/XLogger;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    nop

    .line 168
    .local v3, "index":I
    :goto_1
    iget-wide v9, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    cmp-long v4, v5, v9

    if-lez v4, :cond_8

    array-length v4, v1

    if-gt v3, v4, :cond_8

    .line 169
    const-string v4, "XLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileSizeSum > "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", delete "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v5, v9

    .line 171
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 172
    .local v4, "result":Z
    const-string v7, "XLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    if-nez v4, :cond_7

    .line 174
    const-string v7, "XLogger"

    const-string v9, "delete file fail, reset to DefaultLogger"

    invoke-static {v7, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v7, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;

    invoke-direct {v7}, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;-><init>()V

    invoke-static {v7}, Lcom/xiaopeng/lib/utils/LogUtils;->setLogger(Lcom/xiaopeng/lib/utils/LogUtils$Logger;)V

    .line 176
    return-void

    .line 178
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 179
    .end local v4    # "result":Z
    goto :goto_1

    .line 180
    :cond_8
    return-void

    .line 131
    .end local v2    # "logFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "index":I
    .end local v5    # "fileSizeSum":J
    .end local v8    # "chmodResult":Z
    :cond_9
    :goto_2
    const-string v2, "XLogger"

    const-string v3, "logFiles == null || logFiles.length == 0, return!"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    return-void

    .line 117
    .end local v1    # "logFiles":[Ljava/io/File;
    :cond_a
    :goto_3
    const-string v1, "XLogger"

    const-string v2, "!logDir.exists() || !logDir.isDirectory(), return!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;
        }
    .end annotation

    .line 65
    :try_start_0
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    const-string v0, "marsxlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/mXlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cachePath":Ljava/lang/String;
    iget v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLevel:I

    iget v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMode:I

    iget-object v5, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePrefix:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "43b835098ac59e6a265edfd3b4aa53ba18e67c9503e88f74253d433f36cf854e3a6f77a92d25454284bcf57913bd91abadfa062520cb8662f6740eaeca23b573"

    move-object v4, v0

    invoke-static/range {v2 .. v8}, Lcom/tencent/mars/xlog/Xlog;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/mars/xlog/Xlog;->setConsoleLogOpen(Z)V

    .line 79
    iget-wide v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxSingleSize:J

    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Xlog;->setMaxFileSize(J)V

    .line 81
    new-instance v2, Lcom/tencent/mars/xlog/Xlog;

    invoke-direct {v2}, Lcom/tencent/mars/xlog/Xlog;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFlushInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    return-void

    .line 67
    .end local v0    # "cachePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFlushInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    iget-wide v2, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    .line 93
    .local v2, "increaseLength":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    .line 94
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DEV"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 96
    .local v0, "checkExplosion":Z
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    invoke-virtual {v4, v1}, Lcom/tencent/mars/xlog/Xlog;->appenderFlush(Z)V

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/lib/utils/log/XLogger;->cleanLogPath()V

    .line 98
    const-wide/32 v4, 0x20000

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 99
    const-string v4, "XLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "##Error##[LogExplosion]## increaseLength > 128k, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .end local v0    # "checkExplosion":Z
    .end local v2    # "increaseLength":J
    :cond_2
    :goto_1
    return v1
.end method

.method public logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "TAG"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 184
    iget-wide v1, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "funcName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 187
    .local v2, "line":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    .line 188
    .local v14, "tid":J
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 206
    :pswitch_0
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move v7, v2

    move-wide v9, v14

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move v7, v2

    move-wide v9, v14

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 203
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move v7, v2

    move-wide v9, v14

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 199
    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move v7, v2

    move-wide v9, v14

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 195
    goto :goto_0

    .line 190
    :pswitch_4
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move v7, v2

    move-wide v9, v14

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 191
    nop

    .line 210
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
