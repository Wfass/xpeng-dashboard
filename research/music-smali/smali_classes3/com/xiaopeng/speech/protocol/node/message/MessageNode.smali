.class public Lcom/xiaopeng/speech/protocol/node/message/MessageNode;
.super Lbut;
.source "MessageNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/message/a;",
        ">;"
    }
.end annotation


# direct methods
.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isReady"

    .line 134
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 28
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 29
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 37
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 40
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/message/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 61
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 62
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/message/a;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/message/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 82
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 83
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 92
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 93
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 102
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 103
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 112
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 113
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/message/a;->f()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 120
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->a(Ljava/lang/String;)Z

    move-result p1

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 124
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/message/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/message/a;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
