.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    if-gez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbgs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    if-le p1, v0, :cond_2

    goto :goto_1

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$1000(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget v6, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->recordItem()V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$700(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    goto :goto_0

    .line 359
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lbjl;->r(ILjava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lbjl;->n(ILjava/lang/String;)V

    .line 362
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$800(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$900(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    :cond_5
    :goto_1
    return-void
.end method
