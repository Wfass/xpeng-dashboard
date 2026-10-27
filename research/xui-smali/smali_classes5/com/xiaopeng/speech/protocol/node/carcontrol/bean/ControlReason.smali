.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;
.super Ljava/lang/Object;
.source "ControlReason.java"


# static fields
.field public static final REASON_MEDITATION:I = 0x1

.field public static final REASON_NORMAL:I


# instance fields
.field private mControlReason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;-><init>()V

    .line 38
    .local v0, "controlReason":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->setControlReason(I)V

    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 42
    const-string v2, "reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->setControlReason(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getControlReason()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->mControlReason:I

    return v0
.end method

.method public setControlReason(I)V
    .locals 0
    .param p1, "controlReason"    # I

    .line 64
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->mControlReason:I

    .line 65
    return-void
.end method
