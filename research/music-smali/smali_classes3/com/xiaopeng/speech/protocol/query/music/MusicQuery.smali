.class public Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;
.super Lbuu;
.source "MusicQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/music/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->C()Z

    move-result p1

    return p1
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->D()Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 17
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->f()I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->h()Z

    move-result p1

    return p1
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->v()Z

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 79
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->a(I)Z

    move-result p1

    return p1
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->i()Z

    move-result p1

    return p1
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 96
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 97
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->b(I)Z

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->u()Z

    move-result p1

    return p1
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->j()Z

    move-result p1

    return p1
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->s()Z

    move-result p1

    return p1
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->t()I

    move-result p1

    return p1
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->w()Z

    move-result p1

    return p1
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->x()Z

    move-result p1

    return p1
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->y()Z

    move-result p1

    return p1
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->z()Z

    move-result p1

    return p1
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->A()Z

    move-result p1

    return p1
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/music/a;->B()D

    move-result-wide p1

    return-wide p1
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 178
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/music/a;

    int-to-double v0, p1

    invoke-interface {p2, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/a;->a(D)Z

    move-result p1

    return p1
.end method
