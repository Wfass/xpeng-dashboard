.class public abstract Lcom/xiaopeng/speech/jarvisproto/Volume;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "Volume.java"


# instance fields
.field public soundArea:I

.field public volume:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/Volume;->volume:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 22
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/Volume;->volume:I

    .line 23
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/Volume;->soundArea:I

    return-void
.end method


# virtual methods
.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "volume"

    .line 29
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/Volume;->volume:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 30
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/Volume;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
