.class Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;
.super Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Stub;
.source "CarAutoWakeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/wake/CarAutoWakeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarAutoWakeSceneListenerToService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/ai/wake/CarAutoWakeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Stub;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$onAutoWakeSceneChanged$0(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;Landroid/car/xpeng/ai/scene/CarScene;)V
    .locals 2

    .line 131
    invoke-static {p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->access$100(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoWakeSceneChanged: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->access$100(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarAutoWakeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->access$100(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;->onAutoWakeSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onAutoWakeSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V
    .locals 3

    const-string v0, "CarAutoWakeManager"

    const-string v1, "onAutoWakeSceneChanged: "

    .line 127
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->access$000(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;

    invoke-direct {v2, v0, p1}, Landroid/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeManager$CarAutoWakeSceneListenerToService$DSlHFHJ1ish7HPoNkdgLMGqmEAo;-><init>(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;Landroid/car/xpeng/ai/scene/CarScene;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
