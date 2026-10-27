.class public Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;
.super Lbut;
.source "SpeechDialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/speech/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 310
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 311
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->p(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 318
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 320
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 321
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->q(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 328
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 330
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 331
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->r(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 338
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 340
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 341
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->s(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 348
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 350
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 351
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->t(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 358
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 360
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 361
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->u(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 25
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 35
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 45
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 55
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 66
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 67
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 77
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 78
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 100
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 101
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-static {p2}, Lbwc;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 114
    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string p2, "state"

    .line 115
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 121
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 122
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v2, v0, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 131
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 132
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 144
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 146
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 149
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 151
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 152
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 163
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "widget"

    .line 165
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 168
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 170
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 171
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->e(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 181
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 182
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 190
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 191
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->f(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 200
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 201
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 210
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 211
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->h(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 220
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 221
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 230
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 231
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->j(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 241
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->k(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 250
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 251
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->l(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 260
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->m(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 270
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 271
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->n(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 280
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 281
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/a;->o(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 290
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 291
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 300
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 301
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
