.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;
.super Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDVisualizerListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 1

    .line 422
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;-><init>()V

    .line 423
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public OnFftDataCapture(ILjava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 431
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1000(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;[BI)V

    :cond_0
    return-void
.end method

.method public OnRatioData(ILjava/lang/String;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 440
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;FF)V

    :cond_0
    return-void
.end method
