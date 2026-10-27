.class public Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;
.super Ljava/lang/Object;
.source "CopyFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CopyFileTask"


# instance fields
.field private mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

.field private final mDestPath:Ljava/lang/String;

.field private final mEnd:J

.field mIn:Ljava/io/RandomAccessFile;

.field mOut:Ljava/io/RandomAccessFile;

.field private final mSrcPath:Ljava/lang/String;

.field private final mStart:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "end"    # J

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    .line 28
    iput-wide p5, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mEnd:J

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;)V
    .locals 0
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "callback"    # Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    .line 35
    iput-wide p5, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mEnd:J

    .line 36
    iput-object p7, p0, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 41
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFileParentPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 44
    .local v4, "beginTime":J
    const-string v0, "CopyFileTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mSrcPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "destPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    const-string v7, "r"

    invoke-direct {v0, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    .line 46
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    const-string v7, "rw"

    invoke-direct {v0, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    .line 47
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    iget-wide v6, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 48
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    iget-wide v6, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 49
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 50
    .local v6, "inChannel":Ljava/nio/channels/FileChannel;
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 52
    .local v12, "outChannel":Ljava/nio/channels/FileChannel;
    iget-wide v13, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    iget-wide v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mEnd:J

    iget-wide v9, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    sub-long v15, v7, v9

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 53
    .local v0, "lock":Ljava/nio/channels/FileLock;
    iget-wide v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    iget-wide v9, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mEnd:J

    iget-wide v13, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mStart:J

    sub-long/2addr v9, v13

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 55
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 56
    iget-object v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 57
    iget-object v7, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 60
    .local v7, "endTime":J
    iget-object v9, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 61
    iget-object v9, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    invoke-interface {v9, v10}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;->onCopyResult(Z)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 65
    :goto_0
    const-string v9, "CopyFileTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "endTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " mSrcPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "destPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mDestPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v4    # "beginTime":J
    .end local v6    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v7    # "endTime":J
    .end local v12    # "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_1
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 78
    :cond_1
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    if-eqz v4, :cond_2

    .line 68
    iget-object v2, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    invoke-interface {v2, v3}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;->onCopyResult(Z)V

    goto :goto_1

    .line 70
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 78
    :cond_3
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    :cond_4
    :goto_2
    goto :goto_5

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 74
    :goto_3
    nop

    .line 75
    :try_start_4
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mOut:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 78
    :cond_5
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_6

    .line 79
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mIn:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    :cond_6
    goto :goto_4

    .line 81
    :catch_2
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    throw v2

    .line 86
    :cond_7
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    if-eqz v0, :cond_8

    .line 87
    iget-object v0, v1, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask;->mCallback:Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;

    invoke-interface {v0, v3}, Lcom/xiaopeng/commonfunc/system/runnable/CopyFileTask$Callback;->onCopyResult(Z)V

    goto :goto_5

    .line 89
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    :goto_5
    return-void
.end method
