.class public Lcom/xiaopeng/commonfunc/system/a/a;
.super Ljava/lang/Object;
.source "Sleep.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final oW:Ljava/lang/Object;

.field private oX:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oW:Ljava/lang/Object;

    .line 9
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oX:J

    .line 12
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oX:J

    .line 13
    return-void
.end method

.method public static sleep(J)V
    .locals 3

    .line 16
    const-string v0, "Sleep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep start  timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/commonfunc/system/a/a;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/commonfunc/system/a/a;-><init>(J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "Sleep"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :goto_0
    const-string v0, "Sleep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep end  timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oW:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oW:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/xiaopeng/commonfunc/system/a/a;->oX:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 34
    :catch_0
    move-exception v1

    .line 35
    :try_start_1
    const-string v2, "Sleep"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
