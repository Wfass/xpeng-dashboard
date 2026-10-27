.class public Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;
.super Lbuu;
.source "SpeechSensorQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/speech/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->a()I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 32
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 34
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 46
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pkg"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 53
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected e()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->j()I

    move-result v0

    return v0
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->b()Z

    move-result p1

    return p1
.end method

.method protected f()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->k()I

    move-result v0

    return v0
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->c()Z

    move-result p1

    return p1
.end method

.method protected g()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->l()I

    move-result v0

    return v0
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->d()I

    move-result p1

    return p1
.end method

.method protected h()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->m()I

    move-result v0

    return v0
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->f()I

    move-result p1

    return p1
.end method

.method protected i()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->n()Z

    move-result v0

    return v0
.end method

.method protected j()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->o()I

    move-result v0

    return v0
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->g()I

    move-result p1

    return p1
.end method

.method protected k()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->p()I

    move-result v0

    return v0
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->h()I

    move-result p1

    return p1
.end method

.method protected l()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->q()I

    move-result v0

    return v0
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter appIsInstalled , event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechUiQuery"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "packageName"

    const-string v0, ""

    .line 98
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->c(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected m()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->r()I

    move-result v0

    return v0
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->i()Z

    move-result p1

    return p1
.end method

.method protected n()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->t()Z

    move-result v0

    return v0
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, -0x1

    .line 117
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 119
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 122
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->a(I)Z

    move-result p1

    return p1
.end method

.method protected o()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->u()I

    move-result v0

    return v0
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, -0x1

    .line 131
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 133
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 136
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->b(I)Z

    move-result p1

    return p1
.end method

.method protected p()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->v()I

    move-result v0

    return v0
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, -0x1

    .line 145
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 147
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 150
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->c(I)Z

    move-result p1

    return p1
.end method

.method protected q()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/a;->w()I

    move-result v0

    return v0
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 208
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 210
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 213
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->d(I)I

    move-result p1

    return p1
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 221
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 223
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 226
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->e(I)I

    move-result p1

    return p1
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 234
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 236
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 239
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->f(I)I

    move-result p1

    return p1
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 248
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 250
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 253
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 255
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->g(I)I

    move-result p1

    return p1
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->s()[I

    move-result-object p1

    return-object p1
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 282
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 284
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 287
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->h(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 297
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 299
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 302
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 304
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->i(I)Z

    move-result p1

    return p1
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/a;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/a;->x()Z

    move-result p1

    return p1
.end method
