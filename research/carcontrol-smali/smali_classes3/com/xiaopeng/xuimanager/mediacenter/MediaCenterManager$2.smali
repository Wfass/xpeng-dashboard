.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1042
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.xiaopeng.musicradio"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.android.bluetooth"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x10

    :cond_2
    if-eqz v0, :cond_3

    .line 1046
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;

    invoke-direct {p2, v0, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;-><init>(I[BI)V

    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;->OnFftDataCapture(Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerData;)V

    :cond_3
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 0

    return-void
.end method
