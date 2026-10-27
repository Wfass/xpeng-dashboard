.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->access$100(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->access$200(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 168
    :cond_0
    sget v0, Lbez$g;->bt_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 170
    :cond_1
    sget v0, Lbez$g;->bt_continue_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    :cond_2
    :goto_0
    return-void
.end method
