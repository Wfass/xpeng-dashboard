.class public interface abstract Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;
.super Ljava/lang/Object;
.source "XPbapListener.java"


# virtual methods
.method public onDownloadProgress(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "totals"    # I
    .param p4, "downloadedCount"    # I
    .param p5, "moduleType"    # I

    .line 40
    return-void
.end method

.method public onNewCallLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "timestamp"    # Ljava/lang/String;
    .param p8, "totals"    # I
    .param p9, "downloadedCount"    # I
    .param p10, "moduleType"    # I

    .line 20
    return-void
.end method

.method public onNewContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "numbers"    # [Ljava/lang/String;
    .param p7, "totals"    # I
    .param p8, "downloadedCount"    # I
    .param p9, "moduleType"    # I

    .line 32
    return-void
.end method

.method public onPbapSyncFinish(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "moduleType"    # I

    .line 46
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 7
    return-void
.end method
