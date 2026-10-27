.class Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;
.super Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;
.source "MusicRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicRecognizeEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/musicrecognize/IMusicRecognizeEventListener$Stub;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->access$400(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;II)V

    :cond_0
    return-void
.end method

.method public onFindCoverEvent(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->access$300(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager$MusicRecognizeEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->handleRecognizeEvent(Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeEvent;)V

    :cond_0
    return-void
.end method
