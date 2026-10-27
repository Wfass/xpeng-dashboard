.class public abstract Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;
.super Ljava/lang/Object;
.source "BaseStatefulButtonConstructor.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/constructor/IStatefulButtonConstructor;


# instance fields
.field private TAG:Ljava/lang/String;

.field private stateNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs setStatefulButtonData(Lcom/xiaopeng/vui/commons/IVuiElement;IIIF[Ljava/lang/String;)V
    .locals 6
    .param p1, "vuiFriendly"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p2, "currIndex"    # I
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I
    .param p5, "interval"    # F
    .param p6, "vuilabels"    # [Ljava/lang/String;

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "vuiFriendly is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-void

    .line 68
    :cond_0
    if-eqz p6, :cond_5

    array-length v0, p6

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 73
    :cond_1
    if-ltz p2, :cond_4

    array-length v0, p6

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    goto/16 :goto_2

    .line 78
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v0, "props":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v1, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v2, p6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_3

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v3, "state":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "stateName":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 86
    aget-object v5, p6, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    .end local v3    # "state":Lorg/json/JSONObject;
    .end local v4    # "stateName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_3
    const-string v2, "minValue"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v2, "maxValue"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v2, "interval"

    float-to-double v3, p5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 92
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "curState"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 74
    .end local v0    # "props":Lorg/json/JSONObject;
    .end local v1    # "states":Lorg/json/JSONArray;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "currIndex \u8d85\u8fc7vuilabels\u6570\u7ec4\u8fb9\u754c"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void

    .line 69
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "vuilabels  is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public varargs setStatefulButtonData(Lcom/xiaopeng/vui/commons/IVuiElement;I[Ljava/lang/String;)V
    .locals 6
    .param p1, "vuiFriendly"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p2, "currIndex"    # I
    .param p3, "vuilabels"    # [Ljava/lang/String;

    .line 18
    if-nez p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "vuiFriendly is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-void

    .line 22
    :cond_0
    if-eqz p3, :cond_5

    array-length v0, p3

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 27
    :cond_1
    if-ltz p2, :cond_4

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "props":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 35
    .local v1, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v3, "state":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "stateName":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 40
    aget-object v5, p3, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    .end local v3    # "state":Lorg/json/JSONObject;
    .end local v4    # "stateName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_3
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "curState"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 28
    .end local v0    # "props":Lorg/json/JSONObject;
    .end local v1    # "states":Lorg/json/JSONArray;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "currIndex \u8d85\u8fc7vuilabels\u6570\u7ec4\u8fb9\u754c"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-void

    .line 23
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string v1, "vuilabels  is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-void
.end method
