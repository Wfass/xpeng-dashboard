.class public abstract Lcom/xiaopeng/speech/protocol/node/camera/AbsCameraListener;
.super Ljava/lang/Object;
.source "AbsCameraListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarcorderLock()V
    .locals 0

    .line 93
    return-void
.end method

.method public onCarcorderRecord()V
    .locals 0

    .line 98
    return-void
.end method

.method public onCarcorderTake()V
    .locals 0

    .line 88
    return-void
.end method

.method public onFrontOn()V
    .locals 0

    .line 78
    return-void
.end method

.method public onFrontRecord()V
    .locals 0

    .line 33
    return-void
.end method

.method public onFrontTake()V
    .locals 0

    .line 28
    return-void
.end method

.method public onLeftOn()V
    .locals 0

    .line 58
    return-void
.end method

.method public onLeftRecord()V
    .locals 0

    .line 43
    return-void
.end method

.method public onLeftTake()V
    .locals 0

    .line 38
    return-void
.end method

.method public onOverallOn(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 13
    return-void
.end method

.method public onRearOff()V
    .locals 0

    .line 83
    return-void
.end method

.method public onRearOn()V
    .locals 0

    .line 68
    return-void
.end method

.method public onRearOnNew()V
    .locals 0

    .line 73
    return-void
.end method

.method public onRearRecord(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 23
    return-void
.end method

.method public onRearTake(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 18
    return-void
.end method

.method public onRightOn()V
    .locals 0

    .line 63
    return-void
.end method

.method public onRightRecord()V
    .locals 0

    .line 53
    return-void
.end method

.method public onRightTake()V
    .locals 0

    .line 48
    return-void
.end method

.method public onTopOff(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 103
    return-void
.end method

.method public onTopOn(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 108
    return-void
.end method

.method public onTopRecord()V
    .locals 0

    .line 118
    return-void
.end method

.method public onTopRecordEnd()V
    .locals 0

    .line 123
    return-void
.end method

.method public onTopRotateFront(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 138
    return-void
.end method

.method public onTopRotateLeft(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .param p2, "isTTS"    # Z

    .line 128
    return-void
.end method

.method public onTopRotateRear(Z)V
    .locals 0
    .param p1, "isTTS"    # Z

    .line 143
    return-void
.end method

.method public onTopRotateRight(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .param p2, "isTTS"    # Z

    .line 133
    return-void
.end method

.method public onTopTake()V
    .locals 0

    .line 113
    return-void
.end method

.method public onTransparentChassisCMD(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 148
    return-void
.end method
