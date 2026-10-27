.class public Lcom/alibaba/sdk/android/httpdns/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/g$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/sdk/android/httpdns/a/a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-direct {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->update(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    :goto_0
    return-object p3

    :cond_3
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-direct {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    new-instance p3, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    invoke-direct {p3, p1}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p3, p2}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->update(Lcom/alibaba/sdk/android/httpdns/a/a;)V

    :cond_6
    :goto_2
    return-object p3
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V
    .locals 1

    if-eqz p3, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/g$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/g$a;->a:[I

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

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/j/g;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/httpdns/j/g;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/a/a;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/g$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez p1, :cond_2

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type should be v4 or b6"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/alibaba/sdk/android/httpdns/a/a;->a([Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/g$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez v0, :cond_2

    invoke-static/range {p1 .. p7}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type should be v4 or b6"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez v0, :cond_2

    invoke-static/range {p1 .. p7}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/a/a;->b(J)V

    invoke-virtual {v0, p6}, Lcom/alibaba/sdk/android/httpdns/a/a;->a([Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(I)V

    invoke-virtual {v0, p4}, Lcom/alibaba/sdk/android/httpdns/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Z)V

    :goto_1
    return-object v0
.end method

.method public a()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    :goto_2
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/httpdns/a/a;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
