.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->setKaraokeVisualizerOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$6;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->setKaraokeVisualizerOn(Z)V

    .line 299
    return-void
.end method
