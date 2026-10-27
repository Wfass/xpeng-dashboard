.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;->onChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$sharedId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

    .line 361
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->val$sharedId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 364
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->val$sharedId:I

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    .line 366
    .local v0, "fromScreen":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v2

    aget-object v2, v2, v0

    .line 367
    .local v2, "fromController":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->val$sharedId:I

    aget-object v3, v3, v4

    .line 368
    .local v3, "toController":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getCurrentPackage()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "fromControllerPkg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->getCurrentAudioSession()I

    move-result v5

    .line 371
    .local v5, "fromControllerSessionId":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    invoke-virtual {v2, v5, v4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->vendorStopAudioSession(ILjava/lang/String;)V

    .line 373
    invoke-virtual {v3, v5, v1, v4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->vendorStartAudioSessionBySharedEvent(IILjava/lang/String;)V

    .line 377
    .end local v0    # "fromScreen":I
    .end local v2    # "fromController":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .end local v3    # "toController":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .end local v4    # "fromControllerPkg":Ljava/lang/String;
    .end local v5    # "fromControllerSessionId":I
    :cond_0
    return-void
.end method
