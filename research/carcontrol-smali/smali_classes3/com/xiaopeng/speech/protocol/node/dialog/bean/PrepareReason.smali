.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;
.super Ljava/lang/Object;
.source "PrepareReason.java"


# static fields
.field public static final TYPE_DRIVER_HEAD_FACE:Ljava/lang/String; = "driverHeadFace"

.field public static final TYPE_SHALLOW_WAKEUP:Ljava/lang/String; = "shallowWakeup"


# instance fields
.field public isPreparing:Z

.field public screen:I

.field public soundArea:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->screen:I

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->type:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->soundArea:I

    .line 29
    iput-boolean p4, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->isPreparing:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->screen:I

    .line 22
    iput-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->isPreparing:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->isPreparing:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "screen"

    .line 45
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "type"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "soundArea"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "isPreparing"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move v4, v1

    move v1, p0

    move p0, v4

    goto :goto_0

    :catch_1
    move-exception v2

    move p0, v1

    .line 50
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x1

    move v4, v1

    move v1, p0

    move p0, v4

    .line 52
    :goto_1
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;-><init>(ILjava/lang/String;IZ)V

    return-object v3
.end method
