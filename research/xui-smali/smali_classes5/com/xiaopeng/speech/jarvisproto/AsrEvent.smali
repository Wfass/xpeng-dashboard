.class public Lcom/xiaopeng/speech/jarvisproto/AsrEvent;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "AsrEvent.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.asr.event"

.field public static final STATE_ASR_BEGIN:I = 0x1

.field public static final STATE_ASR_END:I = 0x2

.field public static final STATE_ASR_TEXT:I = 0x3

.field public static final STATE_START_LISTEN:I


# instance fields
.field public mEvent:I

.field public soundArea:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "event"    # I

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    .line 40
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "soundArea"    # I

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    .line 46
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AsrEvent;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    .line 67
    .local v0, "event":I
    const/4 v1, -0x1

    .line 69
    .local v1, "soundArea":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 71
    const-string v3, "event"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 72
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 76
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v2, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "jarvis.asr.event"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "event"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
