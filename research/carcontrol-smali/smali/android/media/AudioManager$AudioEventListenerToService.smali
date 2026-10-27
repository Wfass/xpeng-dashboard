.class Landroid/media/AudioManager$AudioEventListenerToService;
.super Landroid/media/IAudioEventListener$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 1

    .line 9626
    invoke-direct {p0}, Landroid/media/IAudioEventListener$Stub;-><init>()V

    .line 9627
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/AudioManager$AudioEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public AudioEventChangeCallBack(II)V
    .locals 1

    .line 9640
    iget-object v0, p0, Landroid/media/AudioManager$AudioEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 9642
    invoke-static {v0, p1, p2}, Landroid/media/AudioManager;->access$3400(Landroid/media/AudioManager;II)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 9632
    iget-object v0, p0, Landroid/media/AudioManager$AudioEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 9634
    invoke-static {v0, p1, p2}, Landroid/media/AudioManager;->access$3300(Landroid/media/AudioManager;II)V

    :cond_0
    return-void
.end method
