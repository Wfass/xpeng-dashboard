.class public Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
.super Ljava/lang/Object;
.source "NoConcurrenceRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;
    }
.end annotation


# instance fields
.field private mRun:Ljava/lang/Runnable;

.field private mSession:I

.field private mSessionRunnable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mStrict:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mStrict:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSession()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    return v0
.end method

.method public newSession()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession(Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public newSession(Z)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatable"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$1;-><init>(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)V

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    .line 104
    iput v1, v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;->mSession:I

    .line 105
    iput-boolean p1, v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;->mRepeatable:Z

    .line 106
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSessionRunnable:Ljava/lang/ref/WeakReference;

    .line 107
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public strict()Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mStrict:Z

    return-object p0
.end method

.method public trigger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->trigger(IZ)V

    return-void
.end method

.method public trigger(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "updateSession"
        }
    .end annotation

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSessionRunnable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 59
    iget v0, v0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;->mSession:I

    if-ne v0, p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 61
    iget p2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->mSession:I

    .line 63
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->run()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
