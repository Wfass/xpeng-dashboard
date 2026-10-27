.class public Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;
.super Lbut;
.source "BugReportNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/bugreport/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 24
    invoke-static {p2}, Lbwc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "from"

    const-string v1, ""

    .line 27
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 29
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 33
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v1}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->a()V

    goto :goto_2

    .line 37
    :cond_1
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->a(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 46
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/a;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/bugreport/a;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 49
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->a(Lcom/xiaopeng/speech/protocol/node/bugreport/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->c()V

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
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 80
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->b:Lcom/xiaopeng/speech/common/util/e;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/bugreport/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/b;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
