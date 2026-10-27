.class public Lcom/xiaopeng/factory/system/runnable/Sleep;
.super Ljava/lang/Object;
.source "Sleep.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Sleep"


# instance fields
.field final _lock:Ljava/lang/Object;

.field private _timeout:J


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_lock:Ljava/lang/Object;

    .line 16
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_timeout:J

    .line 19
    iput-wide p1, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_timeout:J

    .line 20
    return-void
.end method

.method public static sleep(J)V
    .locals 4
    .param p0, "timeout"    # J

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/system/runnable/Sleep;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/factory/system/runnable/Sleep;-><init>(J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    .local v0, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleep"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v1, "Sleep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_lock:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/xiaopeng/factory/system/runnable/Sleep;->_timeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "Sleep"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
