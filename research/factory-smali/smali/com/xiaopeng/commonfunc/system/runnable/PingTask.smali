.class public Lcom/xiaopeng/commonfunc/system/runnable/PingTask;
.super Ljava/lang/Object;
.source "PingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PingTask"


# instance fields
.field private mPackagesize:I

.field private final mSite:Ljava/lang/String;

.field private result:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "site"    # Ljava/lang/String;
    .param p2, "packagesize"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->result:Z

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 30
    const-string v0, "PingTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPackagesize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget v0, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 33
    iput v1, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    if-gez v0, :cond_1

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    .line 37
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ping -s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mPackagesize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->execProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 40
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    const/16 v2, 0x2711

    if-nez v0, :cond_2

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v4, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 42
    return-void

    .line 44
    :cond_2
    move-object v3, v1

    .line 46
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 49
    const-string v4, "PingTask"

    const-string v5, "sendPing readline"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 51
    const-string v4, "PingTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPing line"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ttl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->result:Z

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v6, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v6, v2, v5}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 60
    .end local v5    # "line":Ljava/lang/String;
    :cond_4
    nop

    .line 61
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 65
    :goto_3
    nop

    .line 66
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    const-string v4, "ping"

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->killProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v5, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    goto :goto_7

    .line 59
    :catchall_0
    move-exception v4

    goto :goto_8

    .line 56
    :catch_1
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5

    .line 61
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 63
    :catch_2
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 65
    :cond_5
    :goto_5
    nop

    .line 66
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    const-string v4, "ping"

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->killProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v5, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 69
    nop

    .line 70
    return-void

    .line 59
    :goto_8
    nop

    .line 60
    if-eqz v3, :cond_6

    .line 61
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 63
    :catch_3
    move-exception v5

    .line 64
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 65
    :cond_6
    :goto_9
    nop

    .line 66
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    iget-object v5, p0, Lcom/xiaopeng/commonfunc/system/runnable/PingTask;->mSite:Ljava/lang/String;

    const-string v6, "ping"

    invoke-static {v6, v5}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->killProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v6, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    throw v4
.end method
