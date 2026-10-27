.class Landroid/support/rastermill/LoaderAsyncTask$2;
.super Ljava/lang/Object;
.source "LoaderAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/LoaderAsyncTask;->post(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/LoaderAsyncTask;

.field final synthetic val$drawable:Landroid/support/rastermill/FrameSequenceDrawable;

.field final synthetic val$loader:Landroid/support/rastermill/loader/ILoader;


# direct methods
.method constructor <init>(Landroid/support/rastermill/LoaderAsyncTask;Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/rastermill/LoaderAsyncTask;

    .line 66
    iput-object p1, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    iput-object p2, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->val$loader:Landroid/support/rastermill/loader/ILoader;

    iput-object p3, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->val$drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    iget-object v0, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v0}, Landroid/support/rastermill/LoaderAsyncTask;->isCancelled()Z

    move-result v0

    .line 70
    .local v0, "isCancelled":Z
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->val$loader:Landroid/support/rastermill/loader/ILoader;

    iget-object v3, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->val$drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .local v1, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;>;"
    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-static {v2, v1}, Landroid/support/rastermill/LoaderAsyncTask;->access$300(Landroid/support/rastermill/LoaderAsyncTask;Landroid/util/Pair;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Landroid/support/rastermill/LoaderAsyncTask$2;->this$0:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-static {v2, v1}, Landroid/support/rastermill/LoaderAsyncTask;->access$400(Landroid/support/rastermill/LoaderAsyncTask;Landroid/util/Pair;)V

    .line 76
    :goto_0
    return-void
.end method
