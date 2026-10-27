.class Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;
.super Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;
.source "XPbapNFManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

.field final synthetic val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapDownloadNotify(Ljava/lang/String;III)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "totalContacts"    # I
    .param p4, "downloadedContacts"    # I

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapDownloadNotify(Ljava/lang/String;III)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onDownloadProgress(Ljava/lang/String;IIII)V

    .line 81
    return-void
.end method

.method public onPbapServiceReady()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapServiceReady()V

    .line 40
    const-string v0, "onPbapServiceReady"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onReady()V

    .line 42
    return-void
.end method

.method public onPbapStateChanged(Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "reason"    # I
    .param p5, "counts"    # I

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->onPbapStateChanged(Ljava/lang/String;IIII)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPbapStateChanged reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 49
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->stopTimeout()V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Z

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "sync all finish"

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-interface {v1, p1, p4, v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    goto :goto_0

    .line 57
    :cond_1
    if-lez p4, :cond_2

    .line 58
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->stopTimeout()V

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-interface {v1, p1, p4, v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "timestamp"    # Ljava/lang/String;

    .line 73
    invoke-super/range {p0 .. p7}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDownloadedCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    move-object v0, p0

    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v11}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onNewCallLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 75
    return-void
.end method

.method public retPbapDownloadedContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I[B)V
    .locals 11
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "numbers"    # [Ljava/lang/String;
    .param p6, "photoType"    # I
    .param p7, "photoBytes"    # [B

    .line 67
    invoke-super/range {p0 .. p7}, Lcom/xiaopeng/btservice/base/AbsPBAPControlCallback;->retPbapDownloadedContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I[B)V

    .line 68
    move-object v0, p0

    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onNewContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;III)V

    .line 69
    return-void
.end method
