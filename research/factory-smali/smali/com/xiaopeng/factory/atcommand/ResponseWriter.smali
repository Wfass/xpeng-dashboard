.class public Lcom/xiaopeng/factory/atcommand/ResponseWriter;
.super Ljava/lang/Object;
.source "ResponseWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseWriter"

.field private static mWritable:Z


# instance fields
.field private mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private out:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mWritable:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "mSocket"    # Ljava/net/Socket;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "ResponseWriter"

    const-string v1, "Create ResponseWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 29
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->updateSocket(Ljava/net/Socket;)V

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    .line 101
    :cond_0
    return-void
.end method

.method public declared-synchronized getWritable()Z
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mWritable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/atcommand/ResponseWriter;
    throw v0
.end method

.method public declared-synchronized setWritable(Z)V
    .locals 3
    .param p1, "w"    # Z

    monitor-enter p0

    .line 18
    :try_start_0
    const-string v0, "ResponseWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseWriter setWritable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sput-boolean p1, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mWritable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 17
    .end local p1    # "w":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/atcommand/ResponseWriter;
    throw p1
.end method

.method public updateSocket(Ljava/net/Socket;)V
    .locals 3
    .param p1, "mSocket"    # Ljava/net/Socket;

    .line 33
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 37
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 42
    :cond_1
    const-string v0, "ResponseWriter"

    const-string v1, "ResponseWriter Socket is closed"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :goto_1
    return-void
.end method

.method public declared-synchronized write(Ljava/lang/String;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "ResponseWriter"

    const-string v1, "ResponseWriter write - Queue is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, "result":Z
    if-eqz p1, :cond_3

    .line 56
    :try_start_1
    const-string v1, "ResponseWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write response :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->getWritable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    const-string v1, "ResponseWriter"

    const-string v2, "ResponseWriter write - poll queue"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->writeToSocket(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->writeToSocket(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_1

    .line 65
    :cond_2
    const-string v1, "ResponseWriter"

    const-string v2, "ResponseWriter write - need to queueing"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->mStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 70
    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    .line 46
    .end local v0    # "result":Z
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/atcommand/ResponseWriter;
    throw p1
.end method

.method public writeToSocket(Ljava/lang/String;)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "result":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "ResponseWriter"

    const-string v2, "write"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "out is null"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :goto_1
    return v0
.end method
