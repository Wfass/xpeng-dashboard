.class public Lcom/xiaopeng/speech/jarvisproto/DMListening;
.super Lcom/xiaopeng/speech/jarvisproto/Volume;
.source "DMListening.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.listening"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/jarvisproto/Volume;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/jarvisproto/Volume;-><init>(II)V

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMListening;
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/jarvisproto/DMListening;-><init>(I)V

    .line 17
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "volume"

    .line 18
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->volume:I

    const-string p0, "soundArea"

    .line 19
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->soundArea:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public copy(Lcom/xiaopeng/speech/jarvisproto/Volume;)Lcom/xiaopeng/speech/jarvisproto/DMListening;
    .locals 0

    .line 35
    iget p1, p1, Lcom/xiaopeng/speech/jarvisproto/Volume;->volume:I

    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/DMListening;->volume:I

    return-object p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.listening"

    return-object v0
.end method
