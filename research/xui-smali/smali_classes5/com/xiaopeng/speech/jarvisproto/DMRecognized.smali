.class public Lcom/xiaopeng/speech/jarvisproto/DMRecognized;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMRecognized.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.recognized"


# instance fields
.field public errorId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;->errorId:I

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMRecognized;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;-><init>()V

    .line 18
    .local v0, "dmRecognized":Lcom/xiaopeng/speech/jarvisproto/DMRecognized;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "errorId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;->errorId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 23
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "jarvis.dm.recognized"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "errorId"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMRecognized;->errorId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
