.class public Lcom/alibaba/sdk/android/httpdns/j/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/g$a;


# instance fields
.field private a:J

.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/s;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/b;->c()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:J

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/sdk/android/httpdns/b/c;->b(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/sdk/android/httpdns/b/c;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p1}, Lcom/alibaba/sdk/android/httpdns/j/s;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:J

    sub-long/2addr v0, v2

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/httpdns/j/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->b()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object p2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/httpdns/b/c;->e(Ljava/lang/String;I)Z

    move-result p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/i/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/httpdns/b/c;->c(Ljava/lang/String;I)Z

    move-result p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/i/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/c;->a()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/i/d;->a(I)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/d;->a()V

    :cond_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/p;->a:Lcom/alibaba/sdk/android/httpdns/j/s;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/alibaba/sdk/android/httpdns/j/s;->a()V

    :cond_3
    return-void
.end method
