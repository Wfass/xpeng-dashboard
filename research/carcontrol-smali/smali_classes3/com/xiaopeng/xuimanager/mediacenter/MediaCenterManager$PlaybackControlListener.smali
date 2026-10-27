.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;
.super Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackControlListener"
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

.field private final mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Stub;-><init>()V

    .line 363
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mManager:Ljava/lang/ref/WeakReference;

    .line 364
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OnPlaybackControl(II)I
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mPkgName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OnSetFavorite(ZLjava/lang/String;)I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mPkgName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$700(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OnSwitchSource(I)I
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;->mPkgName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$600(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
