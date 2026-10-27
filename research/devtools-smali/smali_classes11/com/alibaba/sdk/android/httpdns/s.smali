.class public Lcom/alibaba/sdk/android/httpdns/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/s;


# instance fields
.field private f:Z

.field private g:J

.field private hostName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/s;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/s;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/s;->hostName:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/s;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/s;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/s;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/a;->a()Lcom/alibaba/sdk/android/httpdns/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/o;->c:Lcom/alibaba/sdk/android/httpdns/o;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/t;->a(Lcom/alibaba/sdk/android/httpdns/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/sdk/android/httpdns/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/s;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/s;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/s;->g:J

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/s;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/s;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/s;->hostName:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/s;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v0, "sniffer is turned off"

    :goto_1
    move-object v1, v0

    move v0, v3

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/s;->d()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "sniff too often"

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/s;->hostName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "hostname is null"

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, "launch a sniff task"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/m;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/s;->hostName:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/o;->c:Lcom/alibaba/sdk/android/httpdns/o;

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/httpdns/m;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/o;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/httpdns/m;->a(I)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/o;->c:Lcom/alibaba/sdk/android/httpdns/o;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/t;->a(Lcom/alibaba/sdk/android/httpdns/o;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/httpdns/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/s;->hostName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launch sniffer failed due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
