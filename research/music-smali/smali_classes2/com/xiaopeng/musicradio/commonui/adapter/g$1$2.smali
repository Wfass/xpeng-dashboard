.class Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;
.super Ljava/lang/Object;
.source "RvDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field final synthetic c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/g$1;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->b:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->b:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;->c:Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->a(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V

    return-void
.end method
