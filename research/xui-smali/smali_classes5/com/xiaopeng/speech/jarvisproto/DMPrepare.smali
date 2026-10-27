.class public Lcom/xiaopeng/speech/jarvisproto/DMPrepare;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMPrepare.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.prepare"


# instance fields
.field public isPreparing:Z

.field public screen:I

.field public soundArea:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "jarvis.dm.prepare"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "screen"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMPrepare;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMPrepare;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMPrepare;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v1, "isPreparing"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMPrepare;->isPreparing:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
