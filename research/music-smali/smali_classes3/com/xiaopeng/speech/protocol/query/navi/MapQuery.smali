.class public Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;
.super Lbuu;
.source "MapQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/navi/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->a()Z

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->b()Z

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->c()Z

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 35
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/a;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->a(Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->e()Z

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->f()Z

    move-result p1

    return p1
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->g()Z

    move-result p1

    return p1
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->h()I

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->i()I

    move-result p1

    return p1
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->j()I

    move-result p1

    return p1
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->k()I

    move-result p1

    return p1
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->l()I

    move-result p1

    return p1
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->m()I

    move-result p1

    return p1
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->n()Z

    move-result p1

    return p1
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->o()I

    move-result p1

    return p1
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->p()I

    move-result p1

    return p1
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->q()I

    move-result p1

    return p1
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->r()Z

    move-result p1

    return p1
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->s()Z

    move-result p1

    return p1
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->t()Z

    move-result p1

    return p1
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->u()I

    move-result p1

    return p1
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/a;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
