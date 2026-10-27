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
    .param p1, "screen"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "soundArea"    # I
    .param p4, "isPreparing"    # Z

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

    .line 30
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "screen"    # I
    .param p2, "isPreparing"    # Z

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->screen:I

    .line 22
    iput-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->isPreparing:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isPreparing"    # Z

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;->isPreparing:Z

    .line 18
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;
    .locals 6
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "screen":I
    const/4 v1, 0x1

    .line 41
    .local v1, "isPreparing":Z
    const-string v2, ""

    .line 42
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 44
    .local v3, "soundArea":I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "screen"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 46
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 47
    const-string v5, "soundArea"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 48
    const-string v5, "isPreparing"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 51
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v4

    .line 50
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v4, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/PrepareReason;-><init>(ILjava/lang/String;IZ)V

    return-object v4
.end method
