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
    .param p1, "soundArea"    # I
    .param p2, "displayStatus"    # Z

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->soundArea:I

    .line 18
    iput-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->displayStatus:Z

    .line 19
    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0
    .param p1, "soundArea"    # I
    .param p2, "displayStatus"    # Z
    .param p3, "enableStatus"    # Z
    .param p4, "listeningStatus"    # Z
    .param p5, "waitAwakeListeningStatus"    # Z

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

    .line 28
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
    .locals 12
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "displayStatus":Z
    const/4 v1, 0x0

    .line 59
    .local v1, "enableStatus":Z
    const/4 v2, 0x0

    .line 60
    .local v2, "listeningStatus":Z
    const/4 v3, 0x0

    .line 61
    .local v3, "waitAwakeListeningStatus":Z
    const/4 v4, -0x1

    .line 63
    .local v4, "soundArea":I
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "displayStatus"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v0, v6

    .line 65
    const-string v6, "enableStatus"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v1, v6

    .line 66
    const-string v6, "listeningStatus"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v2, v6

    .line 67
    const-string v6, "waitAwakeListeningStatus"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v3, v6

    .line 69
    const-string v6, "soundArea"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 72
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 70
    :catch_0
    move-exception v5

    .line 71
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v5, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    move-object v6, v5

    move v7, v4

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZZZZ)V

    return-object v5
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "jarvis.sound.area.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "displayStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->displayStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    const-string v1, "enableStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->enableStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    const-string v1, "listeningStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->listeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    const-string v1, "waitAwakeListeningStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->waitAwakeListeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
