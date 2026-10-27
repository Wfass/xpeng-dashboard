.class Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;
.super Ljava/lang/Object;
.source "XPbapNFManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "mHfpConnectedAddress is null or empty"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 195
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/utils/TimeOutUtil;->stopTimeout()V

    .line 199
    const-string v0, "download timeout,need interrupt"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$300(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Lcom/xiaopeng/btservice/pbap/PBAPControl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl$2;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;->access$300(Lcom/xiaopeng/lib_xpbt/pbap/XPbapNFManagerImpl;)Lcom/xiaopeng/btservice/pbap/PBAPControl;

    move-result-object v1

    const-string v2, "lib_xpbt"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/btservice/pbap/PBAPControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onPbapSyncFinish(Ljava/lang/String;II)V

    .line 202
    return-void
.end method
