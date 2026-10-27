.class public Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "WakeupStatus.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.wakeup.status"

.field public static final WAKEUP_DISABLED:I = 0x1

.field public static final WAKEUP_ENABLED:I = 0x0

.field public static final WAKEUP_STATUS_NOTIFY_TYPE_INFOFLOW:I = 0x1

.field public static final WAKEUP_STATUS_NOTIFY_TYPE_NONE:I = 0x0

.field public static final WAKEUP_STATUS_NOTIFY_TYPE_TOAST:I = 0x2

.field public static final WAKEUP_STATUS_NOTIFY_TYPE_TTS:I = 0x4

.field public static final WAKEUP_TYPE_ALL:I = 0x1

.field public static final WAKEUP_TYPE_INTERRUPT_WAKEUP_WORD:I = 0x8

.field public static final WAKEUP_TYPE_MAIN_WAKEUP_WORD:I = 0x2

.field public static final WAKEUP_TYPE_WHEEL_WAKEUP:I = 0x4


# instance fields
.field public mInfo:Ljava/lang/String;

.field public mStatus:I

.field public mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "type"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    .line 40
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    .line 41
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    .line 59
    .local v0, "status":I
    const/4 v1, -0x1

    .line 60
    .local v1, "type":I
    const/4 v2, 0x0

    .line 62
    .local v2, "info":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 64
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 65
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 66
    const-string v4, "info"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 70
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v3, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;

    invoke-direct {v3, v0, v1, v2}, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;-><init>(IILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "jarvis.wakeup.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "status"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string v1, "type"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string v1, "info"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
