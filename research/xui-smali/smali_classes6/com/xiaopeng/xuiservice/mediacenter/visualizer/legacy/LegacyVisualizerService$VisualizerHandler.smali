.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;
.super Landroid/os/Handler;
.source "LegacyVisualizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisualizerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 513
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 514
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 515
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V

    .line 525
    goto :goto_0

    .line 521
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$VisualizerHandler;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V

    .line 522
    nop

    .line 529
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
