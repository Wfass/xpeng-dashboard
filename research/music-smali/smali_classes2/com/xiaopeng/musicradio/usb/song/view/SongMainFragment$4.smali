.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$202(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$302(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: currentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$400(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; first:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$400(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v1

    invoke-virtual {v1}, Lbrm;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v1

    invoke-virtual {v1}, Lbrm;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$302(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$600(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$700(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$702(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$602(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    .line 106
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbne;->a(Ljava/util/List;)V

    .line 107
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnf;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method
