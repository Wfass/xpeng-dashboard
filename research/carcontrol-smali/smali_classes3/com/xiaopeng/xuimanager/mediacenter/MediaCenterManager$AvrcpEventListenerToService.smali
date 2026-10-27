.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;
.super Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvrcpEventListenerToService"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 1

    .line 2356
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;-><init>()V

    .line 2352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaCenterManager"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->TAG:Ljava/lang/String;

    .line 2357
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onConnectedChanged(II)V
    .locals 1

    .line 2362
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2364
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2400(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    :cond_0
    return-void
.end method

.method public onMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V
    .locals 1

    .line 2386
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2388
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2700(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V

    :cond_0
    return-void
.end method

.method public onPlaybackChanged(I)V
    .locals 1

    .line 2370
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2372
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;I)V

    :cond_0
    return-void
.end method

.method public onPositionChanged(JJ)V
    .locals 1

    .line 2378
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2380
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2600(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;JJ)V

    :cond_0
    return-void
.end method
