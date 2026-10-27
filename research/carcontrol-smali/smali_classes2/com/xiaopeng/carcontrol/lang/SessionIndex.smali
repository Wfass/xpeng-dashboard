.class public Lcom/xiaopeng/carcontrol/lang/SessionIndex;
.super Ljava/lang/Object;
.source "SessionIndex.java"


# instance fields
.field private mSession:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newSession()Lcom/xiaopeng/carcontrol/lang/SessionIndex;
    .locals 1

    .line 24
    new-instance v0, Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized check(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->mSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized current()I
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->mSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increase()I
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->mSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->mSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
