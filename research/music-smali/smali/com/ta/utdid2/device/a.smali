.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ta/utdid2/device/a;

.field private static c:J


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/a;->a:Lcom/ta/utdid2/device/a;

    const-wide/16 v0, 0xbb8

    .line 21
    sput-wide v0, Lcom/ta/utdid2/device/a;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/ta/utdid2/device/a;
    .locals 1

    .line 27
    sget-object v0, Lcom/ta/utdid2/device/a;->a:Lcom/ta/utdid2/device/a;

    return-object v0
.end method

.method static synthetic b()J
    .locals 2

    .line 16
    sget-wide v0, Lcom/ta/utdid2/device/a;->c:J

    return-wide v0
.end method

.method private f()V
    .locals 7

    const-string v0, ""

    .line 79
    invoke-static {}, Lcom/ta/a/c/f;->e()V

    .line 80
    iget-object v1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    :try_start_0
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/ta/utdid2/device/c;->c(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x2

    .line 86
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "isMainProcess"

    aput-object v6, v5, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_1

    return-void

    .line 91
    :cond_1
    new-instance v4, Lcom/ta/utdid2/device/a$1;

    invoke-direct {v4, p0, v3}, Lcom/ta/utdid2/device/a$1;-><init>(Lcom/ta/utdid2/device/a;Landroid/content/Context;)V

    .line 112
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 4

    .line 62
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/ta/a/b/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "read utdid from V5AppFile"

    aput-object v3, v1, v2

    const-string v2, "AppUtdid"

    invoke-static {v2, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 70
    invoke-static {v1}, Lcom/ta/utdid2/device/d;->setType(I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    .line 36
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ta/a/c/c;->c()V

    .line 37
    invoke-direct {p0}, Lcom/ta/utdid2/device/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {p1}, Lcom/ta/utdid2/device/d;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ta/utdid2/device/d;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    iput-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/ta/utdid2/device/a;->f()V

    .line 48
    iget-object p1, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-static {}, Lcom/ta/a/c/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    const-string p1, "ffffffffffffffffffffffff"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/ta/a/c/c;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    const-string v0, "AppUtdid"

    const/4 v1, 0x0

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p1, "ffffffffffffffffffffffff"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    :try_start_6
    invoke-static {}, Lcom/ta/a/c/c;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_7
    invoke-static {}, Lcom/ta/a/c/c;->d()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
