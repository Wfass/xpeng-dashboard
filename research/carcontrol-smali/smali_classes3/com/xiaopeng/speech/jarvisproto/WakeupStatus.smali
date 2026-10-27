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

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    .line 40
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    .line 41
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;
    .locals 4

    const/4 v0, -0x1

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "status"

    .line 64
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "type"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "info"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_0

    :catch_1
    move-exception v1

    move p0, v0

    .line 69
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    move v3, v0

    move v0, p0

    move p0, v3

    .line 71
    :goto_1
    new-instance v2, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;-><init>(IILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.wakeup.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 48
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 49
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "info"

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/WakeupStatus;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
