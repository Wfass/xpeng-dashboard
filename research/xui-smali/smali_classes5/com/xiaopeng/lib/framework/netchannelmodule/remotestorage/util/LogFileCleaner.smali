.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
.super Ljava/lang/Object;
.source "LogFileCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$Holder;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;
    }
.end annotation


# static fields
.field private static final CLEANING_THRESHOLD:I = 0x200

.field private static final FILE_EXPIRED_TIME:J = 0x240c8400L

.field private static final MAX_DELETED_FILES_EACH_TIME:I = 0x14

.field private static final ONE_DAY_MILLS:J = 0x5265c00L


# instance fields
.field private mCleaningTask:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;

.field private mLastCleaningDate:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLogFileFolder:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLastCleaningDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLogFileFolder:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanLogAsNeeded()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLogFileFolder:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 38
    .local v0, "currentDate":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLastCleaningDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 39
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mCleaningTask:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;

    if-nez v2, :cond_2

    .line 43
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;)V

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mCleaningTask:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;

    .line 45
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mCleaningTask:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLastCleaningDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 48
    return-void
.end method

.method public setLogFileFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->mLogFileFolder:Ljava/lang/String;

    .line 52
    return-void
.end method
