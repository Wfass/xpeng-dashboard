.class public Lcom/xiaopeng/devtools/a/b;
.super Ljava/lang/Object;
.source "ResponseWriter.java"


# static fields
.field private static uW:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private uV:Ljava/io/BufferedWriter;

.field private uX:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uY:Ljava/net/Socket;

.field private uZ:Ljava/lang/String;

.field private va:Landroid/app/AlarmManager;

.field private vb:Z

.field private vc:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/devtools/a/b;->uW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/a/b;->vb:Z

    .line 34
    sget-object v0, Lcom/xiaopeng/devtools/a/-$$Lambda$b$F_z1cgU5Jt9fURNMAc9VrAHJLxk;->INSTANCE:Lcom/xiaopeng/devtools/a/-$$Lambda$b$F_z1cgU5Jt9fURNMAc9VrAHJLxk;

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->vc:Landroid/app/AlarmManager$OnAlarmListener;

    .line 77
    const-string v0, "ResponseWriter"

    const-string v1, "Create ResponseWriter without socket"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 79
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->va:Landroid/app/AlarmManager;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResponseWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/a/b;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/a/b;->vb:Z

    .line 34
    sget-object v0, Lcom/xiaopeng/devtools/a/-$$Lambda$b$F_z1cgU5Jt9fURNMAc9VrAHJLxk;->INSTANCE:Lcom/xiaopeng/devtools/a/-$$Lambda$b$F_z1cgU5Jt9fURNMAc9VrAHJLxk;

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->vc:Landroid/app/AlarmManager$OnAlarmListener;

    .line 67
    const-string v0, "ResponseWriter"

    const-string v1, "Create ResponseWriter"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->va:Landroid/app/AlarmManager;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResponseWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/a/b;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/b;->a(Ljava/net/Socket;)V

    .line 74
    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 3

    .line 35
    const-string v0, "ResponseWriter"

    const-string v1, "onAlarm STOP PC COMMAND SERVICE"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public I(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/a/b;->vb:Z

    .line 55
    return-void
.end method

.method public a(Ljava/net/Socket;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/devtools/a/b;->uY:Ljava/net/Socket;

    .line 87
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 92
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/b;->uZ:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_1
    const-string p1, "ResponseWriter"

    const-string v0, "ResponseWriter Socket is closed"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/a/b;->hQ()V

    .line 101
    return-void
.end method

.method public bL(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/devtools/a/b;->uZ:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public bM(Ljava/lang/String;)Z
    .locals 4

    .line 139
    nop

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    goto :goto_0

    .line 150
    :cond_0
    const-string p1, "ResponseWriter"

    const-string v0, "write"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "out is null"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method public close()V
    .locals 2

    .line 157
    const-string v0, "ResponseWriter"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uV:Ljava/io/BufferedWriter;

    .line 167
    :cond_0
    return-void
.end method

.method public hP()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->va:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/a/b;->vc:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 42
    return-void
.end method

.method public hQ()V
    .locals 8

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/a/b;->hP()V

    .line 46
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/a/b;->vb:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/devtools/a/b;->va:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x124f80

    add-long/2addr v3, v5

    const-string v5, "ResponseWriter"

    iget-object v6, p0, Lcom/xiaopeng/devtools/a/b;->vc:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/xiaopeng/devtools/a/b;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 51
    :cond_0
    return-void
.end method

.method public declared-synchronized hR()Z
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/devtools/a/b;->uW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hS()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uZ:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized write(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    const-string p1, "ResponseWriter"

    const-string v0, "ResponseWriter write - Queue is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return v1

    .line 117
    :cond_0
    nop

    .line 119
    if-eqz p1, :cond_3

    .line 121
    :try_start_1
    const-string v0, "ResponseWriter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/a/b;->hR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const-string v0, "ResponseWriter"

    const-string v1, "ResponseWriter write - poll queue"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/a/b;->bM(Ljava/lang/String;)Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/b;->bM(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 130
    :cond_2
    const-string v0, "ResponseWriter"

    const-string v1, "ResponseWriter write - need to queueing"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/b;->uX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/a/b;->hQ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit p0

    return v1

    .line 111
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
