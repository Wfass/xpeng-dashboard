.class Landroid/support/rastermill/LoaderAsyncTask;
.super Ljava/lang/Object;
.source "LoaderAsyncTask.java"


# instance fields
.field private mBackground:Ljava/lang/Runnable;

.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

.field private mRelease:Z


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequenceController;)V
    .locals 1
    .param p1, "frameSequenceController"    # Landroid/support/rastermill/FrameSequenceController;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    iput-object p1, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    .line 25
    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/LoaderAsyncTask;)Landroid/support/rastermill/FrameSequenceController;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/LoaderAsyncTask;

    .line 13
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/rastermill/LoaderAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/LoaderAsyncTask;

    .line 13
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/LoaderAsyncTask;
    .param p1, "x1"    # Landroid/support/rastermill/loader/ILoader;
    .param p2, "x2"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/rastermill/LoaderAsyncTask;->post(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/rastermill/LoaderAsyncTask;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/LoaderAsyncTask;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 13
    invoke-direct {p0, p1}, Landroid/support/rastermill/LoaderAsyncTask;->onCancelled(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/rastermill/LoaderAsyncTask;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/LoaderAsyncTask;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 13
    invoke-direct {p0, p1}, Landroid/support/rastermill/LoaderAsyncTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method private onCancelled(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/support/rastermill/loader/ILoader;",
            "Landroid/support/rastermill/FrameSequenceDrawable;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/rastermill/loader/ILoader;

    .line 82
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 86
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 87
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->removeTask(Landroid/widget/ImageView;)V

    .line 88
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 89
    .local v2, "drawable":Landroid/support/rastermill/FrameSequenceDrawable;
    if-eqz v2, :cond_1

    .line 90
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/support/rastermill/FrameSequenceDrawable;Ljava/lang/String;)V

    .line 92
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/rastermill/LoaderAsyncTask;->release(Landroid/support/rastermill/loader/ILoader;)V

    .line 93
    return-void
.end method

.method private onPostExecute(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/support/rastermill/loader/ILoader;",
            "Landroid/support/rastermill/FrameSequenceDrawable;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/rastermill/loader/ILoader;

    .line 104
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "key":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 108
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 109
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->removeTask(Landroid/widget/ImageView;)V

    .line 110
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 111
    .local v2, "drawable":Landroid/support/rastermill/FrameSequenceDrawable;
    iget-object v3, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/support/rastermill/FrameSequenceController;->applyInternal(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;Z)V

    .line 112
    invoke-direct {p0, v0}, Landroid/support/rastermill/LoaderAsyncTask;->release(Landroid/support/rastermill/loader/ILoader;)V

    .line 113
    return-void
.end method

.method private post(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .param p1, "loader"    # Landroid/support/rastermill/loader/ILoader;
    .param p2, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 66
    new-instance v0, Landroid/support/rastermill/LoaderAsyncTask$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/rastermill/LoaderAsyncTask$2;-><init>(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->postMain(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method private release(Landroid/support/rastermill/loader/ILoader;)V
    .locals 1
    .param p1, "loader"    # Landroid/support/rastermill/loader/ILoader;

    .line 96
    iget-boolean v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mRelease:Z

    if-nez v0, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->release()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mRelease:Z

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .line 49
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mBackground:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mBackground:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/support/rastermill/util/ThreadUtils;->removeWorker(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceController;->getLoader()Landroid/support/rastermill/loader/ILoader;

    move-result-object v0

    .line 54
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    invoke-direct {p0, v0}, Landroid/support/rastermill/LoaderAsyncTask;->release(Landroid/support/rastermill/loader/ILoader;)V

    .line 55
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 59
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final execute()V
    .locals 2

    .line 28
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mFrameSequenceController:Landroid/support/rastermill/FrameSequenceController;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceController;->getLoader()Landroid/support/rastermill/loader/ILoader;

    move-result-object v0

    .line 29
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    new-instance v1, Landroid/support/rastermill/LoaderAsyncTask$1;

    invoke-direct {v1, p0, v0}, Landroid/support/rastermill/LoaderAsyncTask$1;-><init>(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;)V

    iput-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask;->mBackground:Ljava/lang/Runnable;

    .line 45
    iget-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask;->mBackground:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/support/rastermill/util/ThreadUtils;->postWorker(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
