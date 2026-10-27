.class public Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;
.super Lbut;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/scene/a;",
        ">;"
    }
.end annotation


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/scene/a;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string v0, "_"

    const-string v1, "-"

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "sceneId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v5

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v5

    .line 41
    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "jarvis.dm.start"

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "jarvis.dm.end"

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "enable.vui.feature"

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const-string p1, "disable.vui.feature"

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/scene/SceneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
