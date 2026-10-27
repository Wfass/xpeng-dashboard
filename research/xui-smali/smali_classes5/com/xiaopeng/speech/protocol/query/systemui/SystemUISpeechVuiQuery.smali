.class public Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SystemUISpeechVuiQuery.java"


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

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected getElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "element.get.com.xiaopeng.systemui"
    .end annotation

    .line 262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .local v3, "state":Ljava/lang/String;
    return-object v3

    .line 267
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 270
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.setvalue.com.xiaopeng.systemui"
    .end annotation

    .line 130
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, "value":Ljava/lang/String;
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
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

    .line 140
    :cond_0
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
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

    .line 143
    :cond_1
    :goto_0
    return-object v6

    .line 148
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method protected getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xslider.setvalue.com.xiaopeng.systemui"
    .end annotation

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "json":Lorg/json/JSONObject;
    nop

    .line 88
    const-wide/16 v5, 0x0

    .line 89
    .local v5, "value":D
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    .line 90
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

    .line 91
    :cond_0
    const-string v7, "values"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
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

    .line 94
    :cond_1
    :goto_0
    double-to-int v7, v5

    return v7

    .line 99
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "value":D
    :cond_2
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
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
        event = "vui.element.checkbox.checked.com.xiaopeng.systemui"
    .end annotation

    .line 212
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 219
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
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

    .line 221
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
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

    .line 230
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.scroll.state.com.xiaopeng.systemui"
    .end annotation

    .line 175
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "sceneId":Ljava/lang/String;
    const-string v4, "direction"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "direction":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v5, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "state":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 181
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    .local v6, "json":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 183
    .local v7, "props":Ljava/lang/String;
    nop

    .line 184
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

    .line 195
    :pswitch_0
    const-string v8, "canScrollDown"

    move-object v7, v8

    goto :goto_1

    .line 192
    :pswitch_1
    const-string v8, "canScrollRight"

    move-object v7, v8

    .line 193
    goto :goto_1

    .line 189
    :pswitch_2
    const-string v8, "canScrollUp"

    move-object v7, v8

    .line 190
    goto :goto_1

    .line 186
    :pswitch_3
    const-string v8, "canScrollLeft"

    move-object v7, v8

    .line 187
    nop

    .line 198
    :goto_1
    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 199
    .local v0, "value":Z
    return v0

    .line 204
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

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
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
        event = "vui.element.enabled.com.xiaopeng.systemui"
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "sceneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v3, v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v4, "json":Lorg/json/JSONObject;
    nop

    .line 162
    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v5, "value":Z
    return v5

    .line 168
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "value":Z
    :cond_0
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 169
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isRaduoButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.radiobutton.checked.com.xiaopeng.systemui"
    .end annotation

    .line 237
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 242
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 244
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
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

    .line 246
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
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

    .line 255
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.checked.com.xiaopeng.systemui"
    .end annotation

    .line 107
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, "json":Lorg/json/JSONObject;
    nop

    .line 114
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
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

    .line 116
    :cond_0
    const-string v6, "values"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
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

    .line 123
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v0
.end method

.method protected isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.switch.checked.com.xiaopeng.systemui"
    .end annotation

    .line 21
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "elementId":Ljava/lang/String;
    const-string v3, "sceneId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "sceneId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v4, v3, v2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 26
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v5, "stateJson":Lorg/json/JSONObject;
    nop

    .line 28
    const/4 v6, 0x0

    .line 29
    .local v6, "isChecked":Z
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 30
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

    .line 31
    :cond_0
    const-string v7, "values"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
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

    .line 34
    :cond_1
    :goto_0
    return v6

    .line 39
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "elementId":Ljava/lang/String;
    .end local v3    # "sceneId":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "stateJson":Lorg/json/JSONObject;
    .end local v6    # "isChecked":Z
    :cond_2
    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return v0
.end method

.method protected isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xtablayout.selecttab.com.xiaopeng.systemui"
    .end annotation

    .line 46
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "index":I
    const-string v3, "elementId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "elementId":Ljava/lang/String;
    const-string v4, "sceneId"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "sceneId":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;

    invoke-interface {v5, v4, v3}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiElementStateQueryCaller;->getVuiElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "state":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 52
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v6, "json":Lorg/json/JSONObject;
    nop

    .line 54
    const/4 v7, 0x0

    .line 55
    .local v7, "valueObj":Lorg/json/JSONObject;
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 56
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v7, v8

    goto :goto_0

    .line 57
    :cond_0
    const-string v8, "values"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    const-string v8, "values"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v7, v8

    .line 60
    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, "value":I
    const-string v9, "SetValue"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 63
    const-string v9, "SetValue"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    move v8, v9

    goto :goto_1

    .line 64
    :cond_2
    const-string v9, "SelectTab"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 65
    const-string v9, "SelectTab"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 67
    :cond_3
    :goto_1
    if-ne v8, v2, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    return v0

    .line 74
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

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return v0
.end method
