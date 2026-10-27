.class public Lcom/xiaopeng/speech/jarvisproto/DMStart;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMStart.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.start"

.field public static final REASON_API_START:Ljava/lang/String; = "api.start"

.field public static final REASON_BOSS_START:Ljava/lang/String; = "boss.start"

.field public static final REASON_CLICK_START:Ljava/lang/String; = "click.start"

.field public static final REASON_MUSIC_SEARCH:Ljava/lang/String; = "music"

.field public static final REASON_REAR_BOSS_START:Ljava/lang/String; = "rear.boss.start"

.field public static final REASON_SEND_TEXT:Ljava/lang/String; = "api.sendText"

.field public static final REASON_WAITING:Ljava/lang/String; = "waiting"

.field public static final REASON_WAKEUP_CMD:Ljava/lang/String; = "wakeup.command"

.field public static final REASON_WAKEUP_MAJOR:Ljava/lang/String; = "wakeup.major"

.field public static final REASON_WHEEL_START:Ljava/lang/String; = "wheel.start"


# instance fields
.field public reason:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public soundArea:I

.field public wakeupResult:Lcom/xiaopeng/speech/jarvisproto/WakeupResult;


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

    .line 32
    const-string v0, "jarvis.dm.start"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMStart;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMStart;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/speech/jarvisproto/DMStart;->wakeupResult:Lcom/xiaopeng/speech/jarvisproto/WakeupResult;

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "wakeupResult"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMStart;->wakeupResult:Lcom/xiaopeng/speech/jarvisproto/WakeupResult;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/jarvisproto/WakeupResult;->getJsonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "wakeupResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :goto_0
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMStart;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
