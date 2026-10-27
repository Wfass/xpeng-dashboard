.class public Lcom/xiaopeng/devtools/system/b/a;
.super Ljava/lang/Object;
.source "CopyFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field Aq:Ljava/io/RandomAccessFile;

.field Ar:Ljava/io/RandomAccessFile;

.field private As:Ljava/lang/String;

.field private At:Ljava/lang/String;

.field private Au:J

.field private Av:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/b/a;->As:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/devtools/system/b/a;->At:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    .line 25
    iput-wide p5, p0, Lcom/xiaopeng/devtools/system/b/a;->Av:J

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->As:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->At:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    const-string v0, "CopyFileTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSrcPath = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->As:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "destPath = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->At:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->As:Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    .line 35
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->At:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 41
    iget-wide v4, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    iget-wide v6, p0, Lcom/xiaopeng/devtools/system/b/a;->Av:J

    iget-wide v8, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    sub-long/2addr v6, v8

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v8

    .line 42
    iget-wide v3, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    iget-wide v5, p0, Lcom/xiaopeng/devtools/system/b/a;->Av:J

    iget-wide v9, p0, Lcom/xiaopeng/devtools/system/b/a;->Au:J

    sub-long/2addr v5, v9

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 44
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    const-string v0, "CopyFileTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSrcPath = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->As:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "destPath = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/a;->At:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 64
    :cond_2
    :goto_0
    goto :goto_3

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    goto :goto_3

    .line 55
    :goto_1
    nop

    .line 56
    :try_start_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/b/a;->Ar:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/b/a;->Aq:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 64
    :cond_4
    goto :goto_2

    .line 62
    :catch_2
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    :goto_2
    throw v0

    .line 67
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 69
    :goto_3
    return-void
.end method
