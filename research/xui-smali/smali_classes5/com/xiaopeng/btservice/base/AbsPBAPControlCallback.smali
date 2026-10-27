.class public abstract Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;
.super Ljava/lang/Object;
.source "AbsPBAPControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapDownloadNotify(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "totalContacts"    # I
    .param p4, "downloadedContacts"    # I

    .line 26
    return-void
.end method

.method public onPbapServiceReady()V
    .locals 0

    .line 10
    return-void
.end method

.method public onPbapStateChanged(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "reason"    # I
    .param p5, "counts"    # I

    .line 14
    return-void
.end method

.method public retPbapCleanDatabaseCompleted(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 46
    return-void
.end method

.method public retPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public retPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSuccess"    # Z

    .line 30
    return-void
.end method

.method public retPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "names"    # [Ljava/lang/String;
    .param p4, "numbers"    # [Ljava/lang/String;
    .param p5, "isSuccess"    # Z

    .line 34
    return-void
.end method

.method public retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .line 42
    return-void
.end method

.method public retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "timestamp"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public retPbapDownloadedContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "numbers"    # [Ljava/lang/String;
    .param p6, "photoType"    # I
    .param p7, "photoBytes"    # [B

    .line 18
    return-void
.end method
