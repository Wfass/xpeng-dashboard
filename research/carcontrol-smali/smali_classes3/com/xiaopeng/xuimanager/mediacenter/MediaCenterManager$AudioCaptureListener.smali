.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;
.super Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioCaptureListener"
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

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;-><init>()V

    .line 399
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 406
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;[BI)V

    :cond_0
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 414
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;FF)V

    :cond_0
    return-void
.end method
