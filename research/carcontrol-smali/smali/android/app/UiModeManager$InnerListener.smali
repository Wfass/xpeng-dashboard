.class Landroid/app/UiModeManager$InnerListener;
.super Landroid/app/IOnProjectionStateChangedListener$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field private final mResourceManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V
    .locals 0

    .line 904
    invoke-direct {p0}, Landroid/app/IOnProjectionStateChangedListener$Stub;-><init>()V

    .line 905
    invoke-virtual {p3, p0, p1, p2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    .line 906
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager$1;)V
    .locals 0

    .line 898
    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V

    return-void
.end method


# virtual methods
.method public onProjectionStateChanged(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    .line 913
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const-string v1, "UiModeManager"

    if-nez v0, :cond_0

    const-string p1, "Can\'t execute onProjectionStateChanged, resource manager is gone."

    .line 915
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 919
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    move-result-object v2

    .line 920
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 926
    :cond_1
    sget-object v1, Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;->INSTANCE:Landroid/app/-$$Lambda$35DijS3cNH0GcJvE3gDpA8zn5BY;

    .line 929
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 926
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 930
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 926
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Can\'t execute onProjectionStatechanged, references are null."

    .line 922
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
