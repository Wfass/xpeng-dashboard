.class public Lcom/xiaopeng/speech/jarvisproto/DMEnd;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMEnd.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.end"

.field public static final REASON_AI_PUSH:Ljava/lang/String; = "aiPush"

.field public static final REASON_AUTO_PARK:Ljava/lang/String; = "auto_park"

.field public static final REASON_DATA_AUTHORIZED:Ljava/lang/String; = "data.authorized"

.field public static final REASON_INTERRUPT:Ljava/lang/String; = "interrupt"

.field public static final REASON_MASK_CLICKED:Ljava/lang/String; = "mask.click"

.field public static final REASON_MICPHONE_MUTED:Ljava/lang/String; = "micphone.muted"

.field public static final REASON_NETWORK:Ljava/lang/String; = "network"

.field public static final REASON_NORMAL:Ljava/lang/String; = "normal"

.field public static final REASON_OTHER:Ljava/lang/String; = "other"

.field public static final REASON_THREE_INVAILD_REQUESTS:Ljava/lang/String; = "three_invalid_requests"

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final REASON_VOICE:Ljava/lang/String; = "voice"

.field public static final REASON_WHEEL:Ljava/lang/String; = "wheel"


# instance fields
.field public event:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const-string v0, "normal"

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/DMEnd;->reason:Ljava/lang/String;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/DMEnd;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.end"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "reason"

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMEnd;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    .line 46
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMEnd;->event:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionId"

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMEnd;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
