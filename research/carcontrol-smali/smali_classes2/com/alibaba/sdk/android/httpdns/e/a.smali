.class public Lcom/alibaba/sdk/android/httpdns/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/e/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/a$b;

.field private final a:Ljava/lang/Object;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/e/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/lang/Object;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/a$b;-><init>(Lcom/alibaba/sdk/android/httpdns/e/a$a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Lcom/alibaba/sdk/android/httpdns/e/a$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/e/a$b;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/e/a$b;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/e/a$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;-><init>(Lcom/alibaba/sdk/android/httpdns/e/a$a;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/a;->a:Lcom/alibaba/sdk/android/httpdns/e/a$b;

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/e/a$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/e/a$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    invoke-direct {p0, p3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/e/a$b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/e/a$b;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
