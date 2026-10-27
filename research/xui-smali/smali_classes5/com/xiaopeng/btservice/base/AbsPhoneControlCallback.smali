.class public abstract Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;
.super Ljava/lang/Object;
.source "AbsPhoneControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpAudioStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 18
    return-void
.end method

.method public onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z

    .line 46
    return-void
.end method

.method public onHfpErrorResponse(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 26
    return-void
.end method

.method public onHfpRemoteBatteryIndicator(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "currentValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "minValue"    # I

    .line 38
    return-void
.end method

.method public onHfpRemoteRoamingStatus(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isRoamingOn"    # Z

    .line 34
    return-void
.end method

.method public onHfpRemoteSignalStrength(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "currentStrength"    # I
    .param p3, "maxStrength"    # I
    .param p4, "minStrength"    # I

    .line 42
    return-void
.end method

.method public onHfpRemoteTelecomService(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isTelecomServiceOn"    # Z

    .line 30
    return-void
.end method

.method public onHfpServiceReady()V
    .locals 0

    .line 10
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 14
    return-void
.end method

.method public onHfpVoiceDial(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isVoiceDialOn"    # Z

    .line 22
    return-void
.end method

.method public retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Z

    .line 50
    return-void
.end method
