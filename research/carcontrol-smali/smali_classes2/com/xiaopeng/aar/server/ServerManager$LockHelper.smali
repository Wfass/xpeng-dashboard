.class Lcom/xiaopeng/aar/server/ServerManager$LockHelper;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockHelper"
.end annotation


# static fields
.field private static final WAIT_MAX_TIMEOUT:I = 0xbb8

.field private static final WAIT_TIMEOUT:I = 0x64


# instance fields
.field private mInit:Z

.field private final mLock:Ljava/lang/Object;

.field private mTimeout:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mInit:Z

    const/16 v0, 0x64

    .line 364
    iput v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mTimeout:I

    if-lez p1, :cond_0

    .line 368
    iput p1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mTimeout:I

    .line 370
    :cond_0
    iget p1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mTimeout:I

    const/16 v0, 0xbb8

    if-le p1, v0, :cond_1

    .line 371
    iput v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mTimeout:I

    :cond_1
    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/aar/server/ServerManager$LockHelper;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->unLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/aar/server/ServerManager$LockHelper;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->checkLock()V

    return-void
.end method

.method private checkLock()V
    .locals 4

    .line 383
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mInit:Z

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mInit:Z

    if-nez v1, :cond_0

    const-string v1, "SerMg"

    const-string/jumbo v2, "wait......."

    .line 386
    invoke-static {v1, v2}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mLock:Ljava/lang/Object;

    iget v2, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 390
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 393
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private unLock()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 377
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mInit:Z

    .line 378
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager$LockHelper;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 379
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
