.class public Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "DemoSpeechVuiQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected getElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "element.get.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 263
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .local v3, "state":Ljava/lang/String;
    return-object v3

    .line 268
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.setvalue.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 131
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 136
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 138
    const/4 v6, 0x0

    .line 139
    .local v6, "value":Ljava/lang/String;
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "SetValue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_0

    .line 141
    :cond_0
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "SetValue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 144
    :cond_1
    :goto_0
    return-object v6

    .line 149
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method protected getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xslider.setvalue.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "json":Lorg/json/JSONObject;
    nop

    .line 89
    const-wide/16 v5, 0x0

    .line 90
    .local v5, "value":D
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    .line 91
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "SetValue"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "value"

    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide v5, v7

    goto :goto_0

    .line 92
    :cond_0
    const-string v7, "values"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    const-string v7, "values"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "SetValue"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "value"

    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v7

    .line 95
    :cond_1
    :goto_0
    double-to-int v7, v5

    return v7

    .line 100
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "value":D
    :cond_2
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.checkbox.checked.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 213
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 220
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6

    .line 222
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 231
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.scroll.state.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 176
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "sceneId":Ljava/lang/String;
    const-string v4, "direction"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "direction":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v5, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "state":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 182
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v6, "json":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 184
    .local v7, "props":Ljava/lang/String;
    nop

    .line 185
    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0xe9b

    const/4 v11, 0x1

    if-eq v9, v10, :cond_3

    const v10, 0x2f24a2

    if-eq v9, v10, :cond_2

    const v10, 0x32a007

    if-eq v9, v10, :cond_1

    const v10, 0x677c21c

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v9, "right"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    const-string v9, "left"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v0

    goto :goto_0

    :cond_2
    const-string v9, "down"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x3

    goto :goto_0

    :cond_3
    const-string v9, "up"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v11

    :cond_4
    :goto_0
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 196
    :pswitch_0
    const-string v8, "canScrollDown"

    move-object v7, v8

    goto :goto_1

    .line 193
    :pswitch_1
    const-string v8, "canScrollRight"

    move-object v7, v8

    .line 194
    goto :goto_1

    .line 190
    :pswitch_2
    const-string v8, "canScrollUp"

    move-object v7, v8

    .line 191
    goto :goto_1

    .line 187
    :pswitch_3
    const-string v8, "canScrollLeft"

    move-object v7, v8

    .line 188
    nop

    .line 199
    :goto_1
    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 200
    .local v0, "value":Z
    return v0

    .line 205
    .end local v0    # "value":Z
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "direction":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "props":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 206
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.enabled.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 156
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "json":Lorg/json/JSONObject;
    nop

    .line 163
    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v5, "value":Z
    return v5

    .line 169
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "value":Z
    :cond_0
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.radiobutton.checked.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 238
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 243
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 245
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6

    .line 247
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 256
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.checked.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 108
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 115
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6

    .line 117
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetCheck"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 124
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.switch.checked.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 22
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 27
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v5, "stateJson":Lorg/json/JSONObject;
    nop

    .line 29
    const/4 v6, 0x0

    .line 30
    .local v6, "isChecked":Z
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 31
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "SetCheck"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move v6, v7

    goto :goto_0

    .line 32
    :cond_0
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 33
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "SetCheck"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 35
    :cond_1
    :goto_0
    return v6

    .line 40
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "stateJson":Lorg/json/JSONObject;
    .end local v6    # "isChecked":Z
    :cond_2
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return v0
.end method

.method protected isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xtablayout.selecttab.com.xiaopeng.speech.scenedemo"
    .end annotation

    .line 47
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "index":I
    const-string v3, "elementId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "elementId":Ljava/lang/String;
    const-string v4, "sceneId"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "sceneId":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v5, v4, v3}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "state":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 53
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, "json":Lorg/json/JSONObject;
    nop

    .line 55
    const/4 v7, 0x0

    .line 56
    .local v7, "valueObj":Lorg/json/JSONObject;
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v7, v8

    goto :goto_0

    .line 58
    :cond_0
    const-string v8, "values"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 59
    const-string v8, "values"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v7, v8

    .line 61
    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    .line 62
    const/4 v8, 0x0

    .line 63
    .local v8, "value":I
    const-string v9, "SetValue"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 64
    const-string v9, "SetValue"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    move v8, v9

    goto :goto_1

    .line 65
    :cond_2
    const-string v9, "SelectTab"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    const-string v9, "SelectTab"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 68
    :cond_3
    :goto_1
    if-ne v8, v2, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    return v0

    .line 75
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "index":I
    .end local v3    # "elementId":Ljava/lang/String;
    .end local v4    # "sceneId":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "valueObj":Lorg/json/JSONObject;
    .end local v8    # "value":I
    :cond_5
    goto :goto_2

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return v0
.end method
