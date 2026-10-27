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
    .locals 7

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "vuiFriendly is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p6, :cond_5

    .line 68
    array-length v0, p6

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ltz p2, :cond_4

    .line 73
    array-length v0, p6

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    goto/16 :goto_2

    .line 78
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    :try_start_0
    array-length v2, p6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 82
    :goto_0
    array-length v3, p6

    if-ge v2, v3, :cond_3

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aput-object v4, v6, v2

    .line 86
    aget-object v2, p6, v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v5

    goto :goto_0

    :cond_3
    const-string p6, "minValue"

    .line 89
    invoke-virtual {v0, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "maxValue"

    .line 90
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "interval"

    float-to-double p4, p5

    .line 91
    invoke-virtual {v0, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p3, "states"

    .line 92
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "curState"

    .line 93
    iget-object p4, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aget-object p2, p4, p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "e:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 74
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string p2, "currIndex \u8d85\u8fc7vuilabels\u6570\u7ec4\u8fb9\u754c"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "vuilabels  is empty"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public varargs setStatefulButtonData(Lcom/xiaopeng/vui/commons/IVuiElement;I[Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "vuiFriendly is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_5

    .line 22
    array-length v0, p3

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ltz p2, :cond_4

    .line 27
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 35
    :try_start_0
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 36
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aput-object v4, v6, v2

    .line 40
    aget-object v2, p3, v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v5

    goto :goto_0

    :cond_3
    const-string p3, "states"

    .line 43
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "curState"

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->stateNames:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-interface {p1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 28
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string p2, "currIndex \u8d85\u8fc7vuilabels\u6570\u7ec4\u8fb9\u754c"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/constructor/BaseStatefulButtonConstructor;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "vuilabels  is empty"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
