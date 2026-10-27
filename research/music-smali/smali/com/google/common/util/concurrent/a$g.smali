.class final Lcom/google/common/util/concurrent/a$g;
.super Lcom/google/common/util/concurrent/a$a;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$a;-><init>(Lcom/google/common/util/concurrent/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/a$1;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)V
    .locals 0

    .line 1311
    iput-object p2, p1, Lcom/google/common/util/concurrent/a$k;->c:Lcom/google/common/util/concurrent/a$k;

    return-void
.end method

.method a(Lcom/google/common/util/concurrent/a$k;Ljava/lang/Thread;)V
    .locals 0

    .line 1306
    iput-object p2, p1, Lcom/google/common/util/concurrent/a$k;->b:Ljava/lang/Thread;

    return-void
.end method

.method a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$d;Lcom/google/common/util/concurrent/a$d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$d;",
            "Lcom/google/common/util/concurrent/a$d;",
            ")Z"
        }
    .end annotation

    .line 1327
    monitor-enter p1

    .line 1328
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->d(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$d;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1329
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$d;)Lcom/google/common/util/concurrent/a$d;

    const/4 p2, 0x1

    .line 1330
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1332
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1333
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$k;Lcom/google/common/util/concurrent/a$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$k;",
            "Lcom/google/common/util/concurrent/a$k;",
            ")Z"
        }
    .end annotation

    .line 1316
    monitor-enter p1

    .line 1317
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->c(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$k;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1318
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$k;)Lcom/google/common/util/concurrent/a$k;

    const/4 p2, 0x1

    .line 1319
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1321
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1322
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1338
    monitor-enter p1

    .line 1339
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1340
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1341
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1343
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1344
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
