.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;
.super Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaybackInfoListener"
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

    .line 448
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;-><init>()V

    .line 449
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$OnMediaInfoNotify$4(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0

    .line 477
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1300(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method

.method static synthetic lambda$OnMediaInfoNotify$5(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 1

    .line 476
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    const-string p0, "OnMediaInfoNotify"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->monitor(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$OnPlaybackChanged$0(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    .line 457
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    return-void
.end method

.method static synthetic lambda$OnPlaybackChanged$1(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 1

    .line 456
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$IpR9rjc61f97Sa-6KTF4IhYoq3Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$IpR9rjc61f97Sa-6KTF4IhYoq3Y;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    const-string p0, "OnPlaybackChanged"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->monitor(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$OnUpdatePosition$2(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V
    .locals 0

    .line 467
    invoke-static/range {p0 .. p5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1400(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V

    return-void
.end method

.method static synthetic lambda$OnUpdatePosition$3(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V
    .locals 8

    .line 466
    new-instance v7, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$_vOqGmKuGzkMz8QYWacfo8pgwQI;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$_vOqGmKuGzkMz8QYWacfo8pgwQI;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V

    const-string p0, "OnUpdatePosition"

    invoke-static {v7, p0}, Lcom/xiaopeng/xuimanager/utils/ApiWrapper;->monitor(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$s02Ub-08FZjwr89vf_uqgau-DSc;

    invoke-direct {v2, v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$s02Ub-08FZjwr89vf_uqgau-DSc;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public OnPlaybackChanged(II)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;

    invoke-direct {v2, v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public OnUpdatePosition(IJJ)V
    .locals 9

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v2, :cond_0

    .line 466
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1200()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
