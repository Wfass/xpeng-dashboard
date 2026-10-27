.class public abstract Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;
.super Ljava/lang/Object;
.source "AbsMAPControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapDownloadNotify(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "totalMessages"    # I
    .param p4, "currentMessages"    # I

    .line 12
    return-void
.end method

.method public onMapMemoryAvailableEvent(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "structure"    # I
    .param p3, "available"    # Z

    .line 16
    return-void
.end method

.method public onMapMessageDeletedEvent(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "folder"    # I

    .line 20
    return-void
.end method

.method public onMapMessageDeliverStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z

    .line 24
    return-void
.end method

.method public onMapMessageSendingStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z

    .line 28
    return-void
.end method

.method public onMapMessageShiftedEvent(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "newFolder"    # I
    .param p5, "oldFolder"    # I

    .line 32
    return-void
.end method

.method public onMapNewMessageReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 36
    return-void
.end method

.method public onMapServiceReady()V
    .locals 0

    .line 40
    return-void
.end method

.method public onMapStateChanged(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "reason"    # I

    .line 44
    return-void
.end method

.method public retMapChangeReadStatusCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 48
    return-void
.end method

.method public retMapCleanDatabaseCompleted(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 52
    return-void
.end method

.method public retMapDatabaseAvailable()V
    .locals 0

    .line 56
    return-void
.end method

.method public retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .line 60
    return-void
.end method

.method public retMapDeleteMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 64
    return-void
.end method

.method public retMapDownloadedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "senderName"    # Ljava/lang/String;
    .param p4, "senderNumber"    # Ljava/lang/String;
    .param p5, "recipientNumber"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "folder"    # I
    .param p9, "isReadStatus"    # Z
    .param p10, "subject"    # Ljava/lang/String;
    .param p11, "message"    # Ljava/lang/String;

    .line 68
    return-void
.end method

.method public retMapSendMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 72
    return-void
.end method
