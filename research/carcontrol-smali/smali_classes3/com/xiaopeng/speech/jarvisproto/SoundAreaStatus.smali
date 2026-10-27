.class public Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "SoundAreaStatus.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.sound.area.status"


# instance fields
.field public displayStatus:Z

.field public enableStatus:Z

.field public listeningStatus:Z

.field public soundArea:I

.field public waitAwakeListeningStatus:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->soundArea:I

    .line 18
    iput-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->displayStatus:Z

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->soundArea:I

    .line 24
    iput-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->displayStatus:Z

    .line 25
    iput-boolean p3, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->enableStatus:Z

    .line 26
    iput-boolean p4, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->listeningStatus:Z

    .line 27
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->waitAwakeListeningStatus:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "displayStatus"

    .line 64
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string p0, "enableStatus"

    .line 65
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "listeningStatus"

    .line 66
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v4, "waitAwakeListeningStatus"

    .line 67
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "soundArea"

    .line 69
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, p0

    move v6, v0

    move v9, v1

    goto :goto_1

    :catch_0
    move-exception v2

    move v10, v1

    move v1, p0

    move p0, v10

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v1

    move v1, p0

    move p0, v3

    goto :goto_0

    :catch_2
    move-exception v2

    move p0, v1

    move v3, p0

    .line 71
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, -0x1

    move v9, p0

    move v6, v0

    move v7, v1

    :goto_1
    move v5, v2

    move v8, v3

    .line 73
    new-instance p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZZZZ)V

    return-object p0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.sound.area.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "soundArea"

    .line 39
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "displayStatus"

    .line 40
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->displayStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "enableStatus"

    .line 41
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->enableStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "listeningStatus"

    .line 42
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->listeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "waitAwakeListeningStatus"

    .line 43
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->waitAwakeListeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
