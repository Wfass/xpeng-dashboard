.class public Lcom/xiaopeng/devtools/system/b/b;
.super Ljava/lang/Object;
.source "PingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Aw:Ljava/lang/String;

.field private Ax:I

.field private Ay:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    .line 25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/b/b;->Ay:Z

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

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPackagesize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget v0, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 33
    iput v1, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    if-gez v0, :cond_1

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    .line 37
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ping -s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/system/b/b;->Ax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->aZ(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    const/16 v2, 0x2711

    if-nez v0, :cond_2

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/devtools/bean/event/CommonEvent;

    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 42
    return-void

    .line 44
    :cond_2
    nop

    .line 46
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    const-string v4, "PingTask"

    const-string v5, "sendPing readline"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 51
    const-string v5, "PingTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPing line"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ttl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/xiaopeng/devtools/system/b/b;->Ay:Z

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/devtools/bean/event/CommonEvent;

    invoke-direct {v6, v2, v4}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 60
    :cond_4
    nop

    .line 61
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 63
    :catch_0
    move-exception v3

    .line 64
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 65
    :goto_3
    nop

    .line 66
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    const-string v0, "ping"

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/utils/m;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/devtools/bean/event/CommonEvent;

    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    goto :goto_8

    .line 56
    :catch_1
    move-exception v4

    goto :goto_5

    .line 59
    :catchall_0
    move-exception v4

    move-object v3, v1

    goto :goto_9

    .line 56
    :catch_2
    move-exception v4

    move-object v3, v1

    .line 57
    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    if-eqz v3, :cond_5

    .line 61
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 63
    :catch_3
    move-exception v3

    .line 64
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 65
    :cond_5
    :goto_6
    nop

    .line 66
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    const-string v0, "ping"

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/utils/m;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/devtools/bean/event/CommonEvent;

    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    :goto_8
    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 69
    nop

    .line 70
    return-void

    .line 59
    :catchall_1
    move-exception v4

    .line 60
    :goto_9
    if-eqz v3, :cond_6

    .line 61
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    .line 63
    :catch_4
    move-exception v3

    .line 64
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 65
    :cond_6
    :goto_a
    nop

    .line 66
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/b/b;->Aw:Ljava/lang/String;

    const-string v3, "ping"

    invoke-static {v3, v0}, Lcom/xiaopeng/devtools/utils/m;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v3, Lcom/xiaopeng/devtools/bean/event/CommonEvent;

    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    throw v4
.end method
