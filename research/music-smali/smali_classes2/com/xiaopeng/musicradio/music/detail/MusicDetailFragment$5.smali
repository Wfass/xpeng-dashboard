.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 300
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbgs;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v1

    .line 307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lbez$g;->common_mediasource_error_hint:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    return-void

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$600(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    const/4 v3, 0x0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget v5, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_0

    .line 318
    :cond_2
    sget v0, Lbez$g;->bt_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 320
    :cond_3
    sget v0, Lbez$g;->bt_continue_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 321
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    .line 323
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->recordItem()V

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$700(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    goto :goto_1

    .line 329
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lbjl;->q(ILjava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lbjl;->m(ILjava/lang/String;)V

    .line 332
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$800(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->access$900(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    return-void
.end method
