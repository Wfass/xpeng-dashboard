.class Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;
.source "AvrcpControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/avrcp/AvrcpControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvrcp13EventBatteryStatusChanged(B)V
    .locals 1
    .param p1, "statusId"    # B

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventBatteryStatusChanged(B)V

    .line 116
    return-void
.end method

.method public onAvrcp13EventPlaybackPosChanged(J)V
    .locals 1
    .param p1, "songPos"    # J

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventPlaybackPosChanged(J)V

    .line 111
    return-void
.end method

.method public onAvrcp13EventPlaybackStatusChanged(B)V
    .locals 1
    .param p1, "statusId"    # B

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventPlaybackStatusChanged(B)V

    .line 91
    return-void
.end method

.method public onAvrcp13EventPlayerSettingChanged([B[B)V
    .locals 1
    .param p1, "attributeIds"    # [B
    .param p2, "valueIds"    # [B

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventPlayerSettingChanged([B[B)V

    .line 126
    return-void
.end method

.method public onAvrcp13EventSystemStatusChanged(B)V
    .locals 1
    .param p1, "statusId"    # B

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventSystemStatusChanged(B)V

    .line 121
    return-void
.end method

.method public onAvrcp13EventTrackChanged(J)V
    .locals 1
    .param p1, "elementId"    # J

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventTrackChanged(J)V

    .line 96
    return-void
.end method

.method public onAvrcp13EventTrackReachedEnd()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventTrackReachedEnd()V

    .line 101
    return-void
.end method

.method public onAvrcp13EventTrackReachedStart()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13EventTrackReachedStart()V

    .line 106
    return-void
.end method

.method public onAvrcp13RegisterEventWatcherFail(B)V
    .locals 1
    .param p1, "eventId"    # B

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13RegisterEventWatcherFail(B)V

    .line 86
    return-void
.end method

.method public onAvrcp13RegisterEventWatcherSuccess(B)V
    .locals 1
    .param p1, "eventId"    # B

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp13RegisterEventWatcherSuccess(B)V

    .line 81
    return-void
.end method

.method public onAvrcp14EventAddressedPlayerChanged(II)V
    .locals 1
    .param p1, "playerId"    # I
    .param p2, "uidCounter"    # I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp14EventAddressedPlayerChanged(II)V

    .line 141
    return-void
.end method

.method public onAvrcp14EventAvailablePlayerChanged()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp14EventAvailablePlayerChanged()V

    .line 136
    return-void
.end method

.method public onAvrcp14EventNowPlayingContentChanged()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp14EventNowPlayingContentChanged()V

    .line 131
    return-void
.end method

.method public onAvrcp14EventUidsChanged(I)V
    .locals 1
    .param p1, "uidCounter"    # I

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp14EventUidsChanged(I)V

    .line 146
    return-void
.end method

.method public onAvrcp14EventVolumeChanged(B)V
    .locals 1
    .param p1, "volume"    # B

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcp14EventVolumeChanged(B)V

    .line 151
    return-void
.end method

.method public onAvrcpErrorResponse(IIB)V
    .locals 1
    .param p1, "opId"    # I
    .param p2, "reason"    # I
    .param p3, "eventId"    # B

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcpErrorResponse(IIB)V

    .line 206
    return-void
.end method

.method public onAvrcpServiceReady()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcpServiceReady()V

    .line 46
    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 51
    return-void
.end method

.method public retAvrcp13CapabilitiesSupportEvent([B)V
    .locals 1
    .param p1, "eventIds"    # [B

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13CapabilitiesSupportEvent([B)V

    .line 211
    return-void
.end method

.method public retAvrcp13ElementAttributesPlaying([I[Ljava/lang/String;)V
    .locals 1
    .param p1, "metadataAttributeIds"    # [I
    .param p2, "texts"    # [Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13ElementAttributesPlaying([I[Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public retAvrcp13PlayStatus(JJB)V
    .locals 7
    .param p1, "songLen"    # J
    .param p3, "songPos"    # J
    .param p5, "statusId"    # B

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13PlayStatus(JJB)V

    .line 76
    return-void
.end method

.method public retAvrcp13PlayerSettingAttributesList([B)V
    .locals 1
    .param p1, "attributeIds"    # [B

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13PlayerSettingAttributesList([B)V

    .line 216
    return-void
.end method

.method public retAvrcp13PlayerSettingCurrentValues([B[B)V
    .locals 1
    .param p1, "attributeIds"    # [B
    .param p2, "valueIds"    # [B

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13PlayerSettingCurrentValues([B[B)V

    .line 61
    return-void
.end method

.method public retAvrcp13PlayerSettingValuesList(B[B)V
    .locals 1
    .param p1, "attributeId"    # B
    .param p2, "valueIds"    # [B

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13PlayerSettingValuesList(B[B)V

    .line 56
    return-void
.end method

.method public retAvrcp13SetPlayerSettingValueSuccess()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp13SetPlayerSettingValueSuccess()V

    .line 66
    return-void
.end method

.method public retAvrcp14AddToNowPlayingSuccess()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14AddToNowPlayingSuccess()V

    .line 196
    return-void
.end method

.method public retAvrcp14ChangePathSuccess(J)V
    .locals 1
    .param p1, "itemCount"    # J

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14ChangePathSuccess(J)V

    .line 176
    return-void
.end method

.method public retAvrcp14FolderItems(IJ)V
    .locals 1
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14FolderItems(IJ)V

    .line 166
    return-void
.end method

.method public retAvrcp14ItemAttributes([I[Ljava/lang/String;)V
    .locals 1
    .param p1, "metadataAtrributeIds"    # [I
    .param p2, "texts"    # [Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14ItemAttributes([I[Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public retAvrcp14MediaItems(IJ)V
    .locals 1
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14MediaItems(IJ)V

    .line 171
    return-void
.end method

.method public retAvrcp14PlaySelectedItemSuccess()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14PlaySelectedItemSuccess()V

    .line 186
    return-void
.end method

.method public retAvrcp14SearchResult(IJ)V
    .locals 1
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14SearchResult(IJ)V

    .line 191
    return-void
.end method

.method public retAvrcp14SetAbsoluteVolumeSuccess(B)V
    .locals 1
    .param p1, "volume"    # B

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14SetAbsoluteVolumeSuccess(B)V

    .line 201
    return-void
.end method

.method public retAvrcp14SetAddressedPlayerSuccess()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14SetAddressedPlayerSuccess()V

    .line 156
    return-void
.end method

.method public retAvrcp14SetBrowsedPlayerSuccess([Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "path"    # [Ljava/lang/String;
    .param p2, "uidCounter"    # I
    .param p3, "itemCount"    # J

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcp14SetBrowsedPlayerSuccess([Ljava/lang/String;IJ)V

    .line 161
    return-void
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl$1;->this$0:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->access$000(Lcom/xiaopeng/btservice/avrcp/AvrcpControl;)Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method
