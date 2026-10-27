.class public abstract Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;
.super Ljava/lang/Object;
.source "AbsAvrcpControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvrcp13EventBatteryStatusChanged(B)V
    .locals 0
    .param p1, "statusId"    # B

    .line 68
    return-void
.end method

.method public onAvrcp13EventPlaybackPosChanged(J)V
    .locals 0
    .param p1, "songPos"    # J

    .line 64
    return-void
.end method

.method public onAvrcp13EventPlaybackStatusChanged(B)V
    .locals 0
    .param p1, "statusId"    # B

    .line 48
    return-void
.end method

.method public onAvrcp13EventPlayerSettingChanged([B[B)V
    .locals 0
    .param p1, "attributeIds"    # [B
    .param p2, "valueIds"    # [B

    .line 76
    return-void
.end method

.method public onAvrcp13EventSystemStatusChanged(B)V
    .locals 0
    .param p1, "statusId"    # B

    .line 72
    return-void
.end method

.method public onAvrcp13EventTrackChanged(J)V
    .locals 0
    .param p1, "elementId"    # J

    .line 52
    return-void
.end method

.method public onAvrcp13EventTrackReachedEnd()V
    .locals 0

    .line 56
    return-void
.end method

.method public onAvrcp13EventTrackReachedStart()V
    .locals 0

    .line 60
    return-void
.end method

.method public onAvrcp13RegisterEventWatcherFail(B)V
    .locals 0
    .param p1, "eventId"    # B

    .line 44
    return-void
.end method

.method public onAvrcp13RegisterEventWatcherSuccess(B)V
    .locals 0
    .param p1, "eventId"    # B

    .line 40
    return-void
.end method

.method public onAvrcp14EventAddressedPlayerChanged(II)V
    .locals 0
    .param p1, "playerId"    # I
    .param p2, "uidCounter"    # I

    .line 88
    return-void
.end method

.method public onAvrcp14EventAvailablePlayerChanged()V
    .locals 0

    .line 84
    return-void
.end method

.method public onAvrcp14EventNowPlayingContentChanged()V
    .locals 0

    .line 80
    return-void
.end method

.method public onAvrcp14EventUidsChanged(I)V
    .locals 0
    .param p1, "uidCounter"    # I

    .line 92
    return-void
.end method

.method public onAvrcp14EventVolumeChanged(B)V
    .locals 0
    .param p1, "volume"    # B

    .line 96
    return-void
.end method

.method public onAvrcpErrorResponse(IIB)V
    .locals 0
    .param p1, "opId"    # I
    .param p2, "reason"    # I
    .param p3, "eventId"    # B

    .line 140
    return-void
.end method

.method public onAvrcpServiceReady()V
    .locals 0

    .line 6
    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 9
    return-void
.end method

.method public retAvrcp13CapabilitiesSupportEvent([B)V
    .locals 0
    .param p1, "eventIds"    # [B

    .line 12
    return-void
.end method

.method public retAvrcp13ElementAttributesPlaying([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "metadataAttributeIds"    # [I
    .param p2, "texts"    # [Ljava/lang/String;

    .line 32
    return-void
.end method

.method public retAvrcp13PlayStatus(JJB)V
    .locals 0
    .param p1, "songLen"    # J
    .param p3, "songPos"    # J
    .param p5, "statusId"    # B

    .line 36
    return-void
.end method

.method public retAvrcp13PlayerSettingAttributesList([B)V
    .locals 0
    .param p1, "attributeIds"    # [B

    .line 16
    return-void
.end method

.method public retAvrcp13PlayerSettingCurrentValues([B[B)V
    .locals 0
    .param p1, "attributeIds"    # [B
    .param p2, "valueIds"    # [B

    .line 24
    return-void
.end method

.method public retAvrcp13PlayerSettingValuesList(B[B)V
    .locals 0
    .param p1, "attributeId"    # B
    .param p2, "valueIds"    # [B

    .line 20
    return-void
.end method

.method public retAvrcp13SetPlayerSettingValueSuccess()V
    .locals 0

    .line 28
    return-void
.end method

.method public retAvrcp14AddToNowPlayingSuccess()V
    .locals 0

    .line 132
    return-void
.end method

.method public retAvrcp14ChangePathSuccess(J)V
    .locals 0
    .param p1, "itemCount"    # J

    .line 116
    return-void
.end method

.method public retAvrcp14FolderItems(IJ)V
    .locals 0
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 108
    return-void
.end method

.method public retAvrcp14ItemAttributes([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "metadataAtrributeIds"    # [I
    .param p2, "texts"    # [Ljava/lang/String;

    .line 120
    return-void
.end method

.method public retAvrcp14MediaItems(IJ)V
    .locals 0
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 112
    return-void
.end method

.method public retAvrcp14PlaySelectedItemSuccess()V
    .locals 0

    .line 124
    return-void
.end method

.method public retAvrcp14SearchResult(IJ)V
    .locals 0
    .param p1, "uidCounter"    # I
    .param p2, "itemCount"    # J

    .line 128
    return-void
.end method

.method public retAvrcp14SetAbsoluteVolumeSuccess(B)V
    .locals 0
    .param p1, "volume"    # B

    .line 136
    return-void
.end method

.method public retAvrcp14SetAddressedPlayerSuccess()V
    .locals 0

    .line 100
    return-void
.end method

.method public retAvrcp14SetBrowsedPlayerSuccess([Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "path"    # [Ljava/lang/String;
    .param p2, "uidCounter"    # I
    .param p3, "itemCount"    # J

    .line 104
    return-void
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .line 143
    return-void
.end method
