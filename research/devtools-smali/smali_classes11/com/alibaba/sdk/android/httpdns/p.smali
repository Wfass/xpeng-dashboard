.class public Lcom/alibaba/sdk/android/httpdns/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/p;

.field private static e:J

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "https://"

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/p;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/p;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/p;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/alibaba/sdk/android/httpdns/p;->e:J

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/p;->a:Lcom/alibaba/sdk/android/httpdns/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:J

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/p;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->a:Lcom/alibaba/sdk/android/httpdns/p;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/p;->a:Lcom/alibaba/sdk/android/httpdns/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/p;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/p;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/p;->a:Lcom/alibaba/sdk/android/httpdns/p;

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
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->a:Lcom/alibaba/sdk/android/httpdns/p;

    return-object v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/a;->a()Lcom/alibaba/sdk/android/httpdns/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/b;->b()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alibaba/sdk/android/httpdns/d/a;->a(Ljava/lang/String;JI)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/f;->c:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method

.method private d(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/a;->a()Lcom/alibaba/sdk/android/httpdns/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/d/b;->a(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/b;->b()I

    move-result v3

    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/alibaba/sdk/android/httpdns/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/q;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/sdk/android/httpdns/p;->a(Ljava/lang/String;J)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/q;->isEnabled()Z

    move-result p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->switchDnsService(Z)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/q;->c()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/p;->a([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Scheduler center update success"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:J

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a([Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/f;->a([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "httpdns_server_ips"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "schedule_center_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "update server ips from schedule center."

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/n;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/f;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/httpdns/n;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string v0, "update server ips from schedule center too often, give up. "

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/p;->d(Ljava/lang/Throwable;)V

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/p;->d()V

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:J

    const-string p1, "Scheduler center update failed"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/f;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sc/httpdns_config?account_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&platform=android&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized init(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/p;->e:Z

    if-nez v0, :cond_5

    const-class v0, Lcom/alibaba/sdk/android/httpdns/p;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/p;->e:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "httpdns_config_cache"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    const-string v2, "httpdns_server_ips"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/p;->g:Ljava/lang/String;

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/p;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/p;->g:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/f;->a([Ljava/lang/String;)Z

    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Landroid/content/SharedPreferences;

    const-string v2, "schedule_center_last_request_time"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/alibaba/sdk/android/httpdns/p;->e:J

    sget-wide v5, Lcom/alibaba/sdk/android/httpdns/p;->e:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alibaba/sdk/android/httpdns/p;->e:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->a()Lcom/alibaba/sdk/android/httpdns/s;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/httpdns/s;->b(Z)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/p;->c()V

    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/alibaba/sdk/android/httpdns/p;->e:Z

    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
