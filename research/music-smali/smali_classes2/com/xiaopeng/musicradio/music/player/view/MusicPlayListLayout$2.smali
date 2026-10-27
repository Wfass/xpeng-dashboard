.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;
.super Ljava/lang/Object;
.source "MusicPlayListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$002(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$102(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v0

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$102(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/player/view/k;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    .line 170
    iget-object v3, v2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    .line 171
    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v2, Lbqr;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqr;

    .line 175
    invoke-interface {v0, v1}, Lbqr;->requestMusicInfos(Ljava/util/List;)V

    :cond_3
    return-void
.end method
