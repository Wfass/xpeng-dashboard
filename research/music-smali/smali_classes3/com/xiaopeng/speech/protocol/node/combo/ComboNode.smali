.class public Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;
.super Lbut;
.source "ComboNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/combo/a;",
        ">;"
    }
.end annotation


# direct methods
.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "extra"

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 277
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mode"

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 293
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 39
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 40
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 49
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 50
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 59
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 60
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 69
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 70
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 79
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 80
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 89
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 90
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 99
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 100
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 109
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 110
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 119
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 120
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->i()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 129
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 130
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 139
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 140
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->k()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 149
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 150
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->l()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 159
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 160
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->m()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 169
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 170
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->n()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 179
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 180
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->o()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 189
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 190
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->p()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 199
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 200
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->q()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 209
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/combo/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/xiaopeng/speech/protocol/node/combo/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 225
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/combo/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 235
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 238
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 239
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 254
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 255
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->s()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 265
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 266
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/combo/a;->t()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
