.class Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;
.super Landroid/bluetooth/BluetoothPbapClientCallback;
.source "XPbapManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "totals"    # I
    .param p4, "downloadedCount"    # I

    .line 144
    return-void
.end method

.method public onNewCallLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "timestamp"    # Ljava/lang/String;
    .param p8, "totals"    # I
    .param p9, "downloadedCount"    # I

    move-object v0, p0

    .line 130
    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onNewCallLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 131
    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v7, 0x0

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onDownloadProgress(Ljava/lang/String;IIII)V

    .line 132
    return-void
.end method

.method public onNewContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;II)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "middleName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "numbers"    # [Ljava/lang/String;
    .param p7, "totals"    # I
    .param p8, "downloadedCount"    # I

    move-object v0, p0

    .line 137
    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onNewContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;III)V

    .line 138
    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v7, 0x0

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onDownloadProgress(Ljava/lang/String;IIII)V

    .line 139
    return-void
.end method

.method public onPbapSyncFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    .line 150
    return-void
.end method
