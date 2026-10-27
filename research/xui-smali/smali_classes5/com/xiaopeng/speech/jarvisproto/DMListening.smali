.class public Lcom/xiaopeng/speech/jarvisproto/DMListening;
.super Lcom/xiaopeng/speech/jarvisproto/Volume;
.source "DMListening.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.listening"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 27
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/jarvisproto/Volume;-><init>(II)V

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "volume"    # I
    .param p2, "soundArea"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/jarvisproto/Volume;-><init>(II)V

    .line 32
    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMListening;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/jarvisproto/DMListening;-><init>(I)V

    .line 17
    .local v0, "dmListening":Lcom/xiaopeng/speech/jarvisproto/DMListening;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->volume:I

    .line 19
    const-string v2, "soundArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->soundArea:I
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
.method public copy(Lcom/xiaopeng/speech/jarvisproto/Volume;)Lcom/xiaopeng/speech/jarvisproto/DMListening;
    .locals 1
    .param p1, "volume"    # Lcom/xiaopeng/speech/jarvisproto/Volume;

    .line 35
    iget v0, p1, Lcom/xiaopeng/speech/jarvisproto/Volume;->volume:I

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->volume:I

    .line 36
    return-object p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "jarvis.dm.listening"

    return-object v0
.end method
