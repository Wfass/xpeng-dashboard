.class public Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;
.super Lbuu;
.source "SystemQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/system/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->a()I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->b()I

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->c()I

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->d()I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->e()I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->f()I

    move-result p1

    return p1
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, "3"

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 53
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 55
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->a(I)I

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, "3"

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 65
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 67
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->b(I)I

    move-result p1

    return p1
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, "3"

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 77
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 79
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, p1

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-static {p2}, Lbwq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->c(I)I

    move-result p1

    return p1
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->g()I

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/system/b;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->h()I

    move-result p1

    return p1
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->i()I

    move-result p1

    return p1
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 108
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 109
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x2

    .line 113
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->d(I)I

    move-result p1

    return p1
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 120
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "style"

    .line 121
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 125
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->e(I)I

    move-result p1

    return p1
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->l()I

    move-result p1

    return p1
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 137
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "scene"

    .line 138
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->f(I)I

    move-result p1

    return p1
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->n()I

    move-result p1

    return p1
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->m()I

    move-result p1

    return p1
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->k()I

    move-result p1

    return p1
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 164
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "direction"

    .line 165
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    .line 169
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->g(I)I

    move-result p1

    return p1
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->o()I

    move-result p1

    return p1
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->p()I

    move-result p1

    return p1
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->j()I

    move-result p1

    return p1
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/system/SystemQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/system/b;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/system/b;->q()I

    move-result p1

    return p1
.end method
