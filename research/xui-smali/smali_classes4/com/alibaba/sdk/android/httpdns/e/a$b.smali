.class Lcom/alibaba/sdk/android/httpdns/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/e/a$b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/e/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashMap;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Z
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->c:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    monitor-exit v0

    return v2

    :cond_4
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    :cond_6
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    monitor-exit p2

    return v2

    :cond_7
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    monitor-exit p2

    return v1

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_8
    return v2
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4, p5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
