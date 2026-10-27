.class Lcom/alibaba/fastjson2/q;
.super Lcom/alibaba/fastjson2/g;
.source "JSONPathSingle.java"


# instance fields
.field final f:Lcom/alibaba/fastjson2/n;

.field final g:Z

.field final h:Z


# direct methods
.method varargs constructor <init>(Lcom/alibaba/fastjson2/n;Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V
    .locals 2

    .line 12
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/g;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    .line 14
    instance-of p2, p1, Lcom/alibaba/fastjson2/o;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    instance-of v1, p1, Lcom/alibaba/fastjson2/p;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p3

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/q;->g:Z

    .line 17
    instance-of v1, p1, Lcom/alibaba/fastjson2/n$d;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 19
    move-object p2, p1

    check-cast p2, Lcom/alibaba/fastjson2/o;

    iget p2, p2, Lcom/alibaba/fastjson2/o;->e:I

    if-gez p2, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    instance-of p2, p1, Lcom/alibaba/fastjson2/n$b;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/alibaba/fastjson2/n$b;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/n$b;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, p3

    .line 24
    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/q;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 8

    .line 91
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/q;->h:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V

    .line 98
    :goto_0
    iget-object p1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 56
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 57
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7, p2}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/q;->g:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 8

    .line 36
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 37
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->c(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 48
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 49
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 51
    iget-object p1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 8

    .line 29
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 30
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson2/q;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1
.end method
