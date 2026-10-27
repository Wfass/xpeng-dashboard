.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;
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

    .line 1057
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 0

    if-nez p1, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;[BI)V

    :cond_0
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 0

    if-nez p1, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;FF)V

    :cond_0
    return-void
.end method
