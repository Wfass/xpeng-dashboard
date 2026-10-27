.class Landroid/support/rastermill/LoaderAsyncTask$1;
.super Ljava/lang/Object;
.source "LoaderAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/LoaderAsyncTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/LoaderAsyncTask;

.field final synthetic val$loader:Landroid/support/rastermill/loader/ILoader;


# direct methods
.method constructor <init>(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;)V
    .locals 0

    .line 29
    iput-object p1, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    iput-object p2, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->val$loader:Landroid/support/rastermill/loader/ILoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 34
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-static {v1}, Landroid/support/rastermill/LoaderAsyncTask;->access$000(Landroid/support/rastermill/LoaderAsyncTask;)Landroid/support/rastermill/FrameSequenceController;

    move-result-object v1

    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->val$loader:Landroid/support/rastermill/loader/ILoader;

    invoke-virtual {v1, v2}, Landroid/support/rastermill/FrameSequenceController;->getFrameSequenceDrawable(Landroid/support/rastermill/loader/ILoader;)Landroid/support/rastermill/FrameSequenceDrawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->val$loader:Landroid/support/rastermill/loader/ILoader;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    .line 40
    :catchall_1
    iget-object v1, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-static {v1}, Landroid/support/rastermill/LoaderAsyncTask;->access$100(Landroid/support/rastermill/LoaderAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v1, v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$1;->val$loader:Landroid/support/rastermill/loader/ILoader;

    invoke-static {v0, v2, v1}, Landroid/support/rastermill/LoaderAsyncTask;->access$200(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V

    return-void
.end method
