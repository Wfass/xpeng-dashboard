.class Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;
.super Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener$Stub;
.source "AwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwarenessEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager$AwarenessEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->access$100(Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;II)V

    :cond_0
    return-void
.end method
