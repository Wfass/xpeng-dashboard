.class public Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechVuiQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected canExecuteVuiEvent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "canExecuteVuiEvent"
    .end annotation

    .line 203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "soundArea"

    const-string v2, "LF"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "soundArea":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->canExecuteVuiEvent(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 206
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "soundArea":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.setvalue"
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "json":Lorg/json/JSONObject;
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
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 88
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xslider.setvalue"
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 57
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.checkbox.checked"
    .end annotation

    .line 133
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 139
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.scroll.state"
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "direction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "direction":Ljava/lang/String;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "elementId":Ljava/lang/String;
    const-string v1, "sceneId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "sceneId":Ljava/lang/String;
    const-string v1, "packageName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "packageName":Ljava/lang/String;
    const-string v1, "packageVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "packageVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 119
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v4    # "direction":Ljava/lang/String;
    .end local v5    # "elementId":Ljava/lang/String;
    .end local v6    # "sceneId":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.enabled"
    .end annotation

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 103
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.element.radiobutton.checked"
    .end annotation

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 154
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 157
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.statefulbutton.checked"
    .end annotation

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 73
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.switch.checked"
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elementId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "packageVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "packageVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v5, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 26
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementId":Ljava/lang/String;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return v0
.end method

.method protected isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.xtablayout.selecttab"
    .end annotation

    .line 35
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 37
    .local v4, "index":I
    const-string v2, "elementId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "elementId":Ljava/lang/String;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "sceneId":Ljava/lang/String;
    const-string v2, "packageName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "packageName":Ljava/lang/String;
    const-string v2, "packageVersion"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "packageVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isTableLayoutSelected(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 42
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "index":I
    .end local v5    # "elementId":Ljava/lang/String;
    .end local v6    # "sceneId":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    .end local v1    # "e":Lorg/json/JSONException;
    return v0
.end method

.method protected isViewVisibleByScrollView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.scrollview.childview.visible"
    .end annotation

    .line 163
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 165
    .local v1, "elementIds":Lorg/json/JSONArray;
    const-string v2, "sceneId"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "sceneId":Ljava/lang/String;
    const-string v3, "packageName"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "appVersion"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "packageVersion":Ljava/lang/String;
    const-string v5, "msgId"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "msgId":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "msgId"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v7, "sceneId"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v7, "elements"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v7, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v7, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3, v2, v8, v4}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isViewVisibleByScrollView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 174
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "elementIds":Lorg/json/JSONArray;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageVersion":Ljava/lang/String;
    .end local v5    # "msgId":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, ""

    return-object v0
.end method

.method protected isVuiSwitchOpened()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.switch_opened"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->isVuiSwitchOpened()Z

    move-result v0

    return v0
.end method

.method protected rebuildScene(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "vui.rebuild.scene"
    .end annotation

    .line 184
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "sceneIds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 186
    .local v2, "sceneIds":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 187
    .local v3, "arraySceneId":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v3, v4

    .line 189
    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 190
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;

    invoke-interface {v4, v3}, Lcom/xiaopeng/speech/protocol/query/speech/vui/ISpeechVuiQueryCaller;->reBuildScene([Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 194
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "sceneIds":Lorg/json/JSONArray;
    .end local v3    # "arraySceneId":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    .end local v1    # "e":Lorg/json/JSONException;
    return v0
.end method
