.class public Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;
.super Lbuu;
.source "SpeechVuiQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/speech/vui/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 21
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 22
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 23
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 24
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    const/4 v0, 0x0

    .line 35
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "index"

    .line 36
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string p2, "elementId"

    .line 37
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "sceneId"

    .line 38
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "packageName"

    .line 39
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "packageVersion"

    .line 40
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 52
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 53
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 54
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 55
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected e()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a()Z

    move-result v0

    return v0
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 68
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 69
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 70
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 71
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 83
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 84
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 85
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 86
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 98
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 99
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 100
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 101
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "direction"

    .line 113
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "elementId"

    .line 114
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "sceneId"

    .line 115
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "packageName"

    .line 116
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "packageVersion"

    .line 117
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 133
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 134
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 135
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 136
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 137
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, ""

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "elementId"

    .line 149
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sceneId"

    .line 150
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    .line 151
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageVersion"

    .line 152
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const-string p1, "msgId"

    const-string v0, "sceneId"

    const-string v1, "elements"

    const-string v2, ""

    .line 163
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 165
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    .line 166
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appVersion"

    .line 167
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 170
    invoke-virtual {v7, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v7, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, v4, p2, v6}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 184
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "sceneIds"

    .line 185
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, p1

    .line 189
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {p2, v0}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a([Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 195
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    return p1
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

    .line 203
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "soundArea"

    const-string v0, "LF"

    .line 204
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->b:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/b;->a(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
