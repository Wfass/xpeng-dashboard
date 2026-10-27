.class final Lcom/android/car/CarServiceUtils$SyncRunnable;
.super Ljava/lang/Object;
.source "CarServiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private volatile mComplete:Z

.field private final mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z

    .line 127
    iput-object p1, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    monitor-enter p0

    .line 134
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForComplete()V
    .locals 1

    .line 140
    monitor-enter p0

    .line 141
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_1
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_1

    .line 147
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
