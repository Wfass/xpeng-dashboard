.class Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;
.super Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;
.source "KaraokeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KaraokeEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public MicDevChangeCallBack(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->access$300(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;I)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->access$200(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V

    :cond_0
    return-void
.end method

.method public volumeEffectCallBack(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->access$400(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V

    :cond_0
    return-void
.end method
