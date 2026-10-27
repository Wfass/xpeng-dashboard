.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sharedId"    # I

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$700(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$8;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method
