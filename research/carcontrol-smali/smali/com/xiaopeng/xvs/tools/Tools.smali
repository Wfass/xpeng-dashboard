.class public Lcom/xiaopeng/xvs/tools/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncTransferTools()Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;
    .locals 1

    .line 8
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    move-result-object v0

    return-object v0
.end method
