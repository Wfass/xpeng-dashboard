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
    .locals 2

    .line 37
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;-><init>()V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->setControlReason(I)V

    .line 41
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 42
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->setControlReason(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 64
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->mControlReason:I

    return-void
.end method
