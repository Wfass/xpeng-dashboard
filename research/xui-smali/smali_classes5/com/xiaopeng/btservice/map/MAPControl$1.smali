.class Lcom/xiaopeng/btservice/map/MAPControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackMap$Stub;
.source "MAPControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/map/MAPControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/map/MAPControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/map/MAPControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/map/MAPControl;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackMap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapDownloadNotify(Ljava/lang/String;III)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "totalMessages"    # I
    .param p4, "currentMessages"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapDownloadNotify(Ljava/lang/String;III)V

    .line 78
    :cond_0
    return-void
.end method

.method public onMapMemoryAvailableEvent(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "structure"    # I
    .param p3, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapMemoryAvailableEvent(Ljava/lang/String;IZ)V

    .line 127
    :cond_0
    return-void
.end method

.method public onMapMessageDeletedEvent(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "folder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapMessageDeletedEvent(Ljava/lang/String;Ljava/lang/String;II)V

    .line 155
    :cond_0
    return-void
.end method

.method public onMapMessageDeliverStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapMessageDeliverStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public onMapMessageSendingStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapMessageSendingStatusEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public onMapMessageShiftedEvent(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "newFolder"    # I
    .param p5, "oldFolder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapMessageShiftedEvent(Ljava/lang/String;Ljava/lang/String;III)V

    .line 148
    :cond_0
    return-void
.end method

.method public onMapNewMessageReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapNewMessageReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onMapServiceReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapServiceReady()V

    .line 50
    :cond_0
    return-void
.end method

.method public onMapStateChanged(Ljava/lang/String;III)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->onMapStateChanged(Ljava/lang/String;III)V

    .line 57
    :cond_0
    return-void
.end method

.method public retMapChangeReadStatusCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapChangeReadStatusCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    :cond_0
    return-void
.end method

.method public retMapCleanDatabaseCompleted(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapCleanDatabaseCompleted(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public retMapDatabaseAvailable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapDatabaseAvailable()V

    .line 85
    :cond_0
    return-void
.end method

.method public retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public retMapDeleteMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapDeleteMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    :cond_0
    return-void
.end method

.method public retMapDownloadedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 14
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 61
    iget-object v1, v0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v1}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, v0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v1}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapDownloadedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public retMapSendMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/btservice/map/MAPControl$1;->this$0:Lcom/xiaopeng/btservice/map/MAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/map/MAPControl;->access$000(Lcom/xiaopeng/btservice/map/MAPControl;)Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsMAPControlCallback;->retMapSendMessageCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method
