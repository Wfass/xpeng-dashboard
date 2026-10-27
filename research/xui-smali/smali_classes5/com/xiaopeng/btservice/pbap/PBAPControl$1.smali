.class Lcom/xiaopeng/btservice/pbap/PBAPControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;
.source "PBAPControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/pbap/PBAPControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/pbap/PBAPControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/pbap/PBAPControl;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapDownloadNotify(Ljava/lang/String;III)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "totalContacts"    # I
    .param p4, "downloadedContacts"    # I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapDownloadNotify(Ljava/lang/String;III)V

    .line 82
    :cond_0
    return-void
.end method

.method public onPbapServiceReady()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapServiceReady()V

    .line 52
    :cond_0
    return-void
.end method

.method public onPbapStateChanged(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "reason"    # I
    .param p5, "counts"    # I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapStateChanged(Ljava/lang/String;IIII)V

    .line 59
    :cond_0
    return-void
.end method

.method public retPbapCleanDatabaseCompleted(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapCleanDatabaseCompleted(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public retPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Z

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public retPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "names"    # [Ljava/lang/String;
    .param p4, "numbers"    # [Ljava/lang/String;
    .param p5, "isSuccess"    # Z

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "timestamp"    # Ljava/lang/String;

    move-object v0, p0

    .line 71
    iget-object v1, v0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, v0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public retPbapDownloadedContact(Lcom/nforetek/bt/aidl/NfPbapContact;)V
    .locals 9
    .param p1, "contact"    # Lcom/nforetek/bt/aidl/NfPbapContact;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/btservice/pbap/PBAPControl$1;->this$0:Lcom/xiaopeng/btservice/pbap/PBAPControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->access$000(Lcom/xiaopeng/btservice/pbap/PBAPControl;)Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getNumberArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getPhotoType()I

    move-result v7

    invoke-virtual {p1}, Lcom/nforetek/bt/aidl/NfPbapContact;->getPhotoByteArray()[B

    move-result-object v8

    .line 64
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDownloadedContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I[B)V

    .line 67
    :cond_0
    return-void
.end method
