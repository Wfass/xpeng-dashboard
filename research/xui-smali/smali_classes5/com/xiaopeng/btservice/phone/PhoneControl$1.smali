.class Lcom/xiaopeng/btservice/phone/PhoneControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;
.source "PhoneControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/phone/PhoneControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/phone/PhoneControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/phone/PhoneControl;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpAudioStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpAudioStateChanged(Ljava/lang/String;II)V

    .line 69
    :cond_0
    return-void
.end method

.method public onHfpCallChanged(Ljava/lang/String;Lcom/nforetek/bt/aidl/NfHfpClientCall;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/nforetek/bt/aidl/NfHfpClientCall;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getState()I

    move-result v4

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->isMultiParty()Z

    move-result v6

    invoke-virtual {p2}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->isOutgoing()Z

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 118
    :cond_0
    return-void
.end method

.method public onHfpErrorResponse(Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpErrorResponse(Ljava/lang/String;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public onHfpRemoteBatteryIndicator(Ljava/lang/String;III)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "currentValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "minValue"    # I

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpRemoteBatteryIndicator(Ljava/lang/String;III)V

    .line 104
    :cond_0
    return-void
.end method

.method public onHfpRemoteRoamingStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isRoamingOn"    # Z

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpRemoteRoamingStatus(Ljava/lang/String;Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public onHfpRemoteSignalStrength(Ljava/lang/String;III)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "currentStrength"    # I
    .param p3, "maxStrength"    # I
    .param p4, "minStrength"    # I

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpRemoteSignalStrength(Ljava/lang/String;III)V

    .line 111
    :cond_0
    return-void
.end method

.method public onHfpRemoteTelecomService(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isTelecomServiceOn"    # Z

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpRemoteTelecomService(Ljava/lang/String;Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public onHfpServiceReady()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpServiceReady()V

    .line 55
    :cond_0
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 62
    :cond_0
    return-void
.end method

.method public onHfpVoiceDial(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isVoiceDialOn"    # Z

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->onHfpVoiceDial(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Z

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/btservice/phone/PhoneControl$1;->this$0:Lcom/xiaopeng/btservice/phone/PhoneControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/phone/PhoneControl;->access$000(Lcom/xiaopeng/btservice/phone/PhoneControl;)Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;->retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    :cond_0
    return-void
.end method
