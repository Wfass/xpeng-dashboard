.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/util/ParserUtil;
.super Ljava/lang/Object;
.source "ParserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseKeyConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
    .locals 12
    .param p0, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;-><init>()V

    .line 19
    .local v0, "eventMap":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "touchRect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 23
    .local v2, "rectJsonObject":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/Rect;

    const-string v4, "left"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "top"

    .line 24
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "right"

    .line 25
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "bottom"

    .line 26
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    .local v3, "naviRect":Landroid/graphics/Rect;
    const-string v4, "keyMap"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 28
    .local v4, "keyMapArray":Lorg/json/JSONArray;
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .local v5, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    const/4 v6, 0x0

    .line 29
    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 30
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 31
    .local v7, "keyValue":Lorg/json/JSONObject;
    const-string v8, "keycode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 32
    .local v8, "keycode":I
    const-string/jumbo v9, "x"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 33
    .local v9, "x":I
    const-string/jumbo v10, "y"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 34
    .local v10, "y":I
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .end local v7    # "keyValue":Lorg/json/JSONObject;
    .end local v8    # "keycode":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 36
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->setNaviTouchArea(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/EventMap;->setSelectKeyMap(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "rectJsonObject":Lorg/json/JSONObject;
    .end local v3    # "naviRect":Landroid/graphics/Rect;
    .end local v4    # "keyMapArray":Lorg/json/JSONArray;
    .end local v5    # "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-object v0
.end method
