.class public abstract Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;
.super Ljava/lang/Object;
.source "FictitiousElementsConstructor.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/view/speech/IFictitiousElementConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FictitiousElementsConstructor"

    .line 13
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs generateElementValueJSON(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/gson/JsonObject;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "value"
        }
    .end annotation

    .line 17
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1

    :cond_0
    if-eqz p2, :cond_5

    .line 20
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\\|"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 25
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1

    .line 27
    :cond_2
    array-length v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 28
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1

    .line 30
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 31
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 32
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "value"

    .line 33
    aget-object v5, p2, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1

    .line 21
    :cond_5
    :goto_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/speech/FictitiousElementsConstructor;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
