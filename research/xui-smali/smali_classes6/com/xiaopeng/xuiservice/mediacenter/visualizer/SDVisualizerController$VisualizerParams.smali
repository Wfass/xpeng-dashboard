.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;
.super Ljava/lang/Object;
.source "SDVisualizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisualizerParams"
.end annotation


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mSessionId:I

.field public mUsageType:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .param p2, "sessionId"    # I
    .param p3, "usageType"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mSessionId:I

    .line 455
    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mUsageType:I

    .line 456
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mPkgName:Ljava/lang/String;

    .line 457
    return-void
.end method
