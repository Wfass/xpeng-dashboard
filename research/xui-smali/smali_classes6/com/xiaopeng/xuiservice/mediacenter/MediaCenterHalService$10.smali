.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 745
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 749
    .local v0, "primaryInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 750
    .local v1, "secondScreenId":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    .line 751
    .local v2, "secondInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isBluetoothMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v3

    .line 752
    .local v3, "isPrimaryBtMedia":Z
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isBluetoothMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v4

    .line 753
    .local v4, "isSecondBtMedia":Z
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 754
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$1200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->pauseBtMediaByNeed()V

    .line 756
    :cond_1
    return-void
.end method
