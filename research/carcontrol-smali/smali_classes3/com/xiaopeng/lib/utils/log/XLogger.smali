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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

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
    iget-object p1, p1, Lcom/xiaopeng/lib/utils/log/XLoggerFactory$XLoggerBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/utils/log/XLogger;->init(Landroid/content/Context;)V

    return-void
.end method

.method private cleanLogPath()V
    .locals 13

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "XLogger"

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    const-string v3, "logDir.setReadable(true, false), path:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 126
    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 130
    array-length v1, v0

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    .line 138
    array-length v1, v0

    move v8, v5

    :goto_0
    if-ge v8, v1, :cond_4

    aget-object v9, v0, v8

    .line 139
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 140
    iget-object v10, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 141
    invoke-virtual {v9, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v10

    .line 142
    invoke-virtual {v9, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v11

    and-int/2addr v10, v11

    .line 143
    invoke-virtual {v9, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v11

    and-int/2addr v10, v11

    .line 144
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 145
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " chmodResult:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-static {v2, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v10, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, v0

    if-le v1, v3, :cond_5

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete first mAlreadyChmodList element:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mAlreadyChmodList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    :cond_5
    iget-wide v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    cmp-long v1, v6, v3

    if-gez v1, :cond_6

    return-void

    .line 160
    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 161
    new-instance v3, Lcom/xiaopeng/lib/utils/log/XLogger$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lib/utils/log/XLogger$1;-><init>(Lcom/xiaopeng/lib/utils/log/XLogger;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    :goto_1
    iget-wide v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_8

    array-length v1, v0

    if-gt v5, v1, :cond_8

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileSizeSum > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxTotalSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    sub-long/2addr v6, v3

    .line 171
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_7

    const-string v0, "delete file fail, reset to DefaultLogger"

    .line 174
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;

    invoke-direct {v0}, Lcom/xiaopeng/lib/utils/LogUtils$DefaultLogger;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->setLogger(Lcom/xiaopeng/lib/utils/LogUtils$Logger;)V

    return-void

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    :goto_2
    const-string v0, "logFiles == null || logFiles.length == 0, return!"

    .line 131
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    const-string v0, "!logDir.exists() || !logDir.isDirectory(), return!"

    .line 117
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;
        }
    .end annotation

    :try_start_0
    const-string v0, "c++_shared"

    .line 65
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "marsxlog"

    .line 66
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/mXlog"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    iget v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLevel:I

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMode:I

    iget-object v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFilePrefix:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "43b835098ac59e6a265edfd3b4aa53ba18e67c9503e88f74253d433f36cf854e3a6f77a92d25454284bcf57913bd91abadfa062520cb8662f6740eaeca23b573"

    invoke-static/range {v0 .. v6}, Lcom/tencent/mars/xlog/Xlog;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Lcom/tencent/mars/xlog/Xlog;->setConsoleLogOpen(Z)V

    .line 79
    iget-wide v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMaxSingleSize:J

    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Xlog;->setMaxFileSize(J)V

    .line 81
    new-instance v0, Lcom/tencent/mars/xlog/Xlog;

    invoke-direct {v0}, Lcom/tencent/mars/xlog/Xlog;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFlushInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception p1

    .line 68
    new-instance v0, Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mFlushInterval:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    iget-wide v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    const-wide/16 v3, 0x0

    .line 93
    iput-wide v3, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    .line 94
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isDebuggableVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object p1

    const-string v3, "DEV"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    invoke-virtual {p1, v0}, Lcom/tencent/mars/xlog/Xlog;->appenderFlush(Z)V

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/lib/utils/log/XLogger;->cleanLogPath()V

    const-wide/32 v3, 0x20000

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##Error##[LogExplosion]## increaseLength > 128k, packageName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XLogger"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "msg",
            "TAG",
            "fileName"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 184
    iget-wide v2, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mLogLengthPerMin:J

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_4
    iget-object v3, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mXlog:Lcom/tencent/mars/xlog/Xlog;

    iget v8, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mPid:I

    iget-wide v11, v0, Lcom/xiaopeng/lib/utils/log/XLogger;->mMainThreadId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p2

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/mars/xlog/Xlog;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :goto_0
    return-void
.end method
