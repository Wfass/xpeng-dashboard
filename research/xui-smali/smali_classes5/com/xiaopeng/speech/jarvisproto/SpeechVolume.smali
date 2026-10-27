.class public Lcom/xiaopeng/speech/jarvisproto/SpeechVolume;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "SpeechVolume.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.speech.volume"


# instance fields
.field public volume:F


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

    .line 17
    const-string v0, "jarvis.speech.volume"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "volume"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechVolume;->volume:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
