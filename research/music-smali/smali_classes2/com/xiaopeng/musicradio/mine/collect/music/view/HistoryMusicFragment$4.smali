.class Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;
.super Ljava/lang/Object;
.source "HistoryMusicFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/datalist/d$b<",
        "Landroidx/databinding/ViewDataBinding;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 4

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "HistoryMusicFragment"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$300(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_2

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$700(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object p1

    .line 233
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$800(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laum;

    iget-object p2, p2, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, p4, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$900(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1000(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 236
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1100(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laum;

    iget-object p2, p2, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 237
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1200(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laum;

    iget-object p2, p2, Laum;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1300(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;Z)V

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$1400(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-ne p2, p4, :cond_3

    .line 223
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$400(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$500(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result p2

    if-gtz p2, :cond_3

    .line 225
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$600(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    .line 228
    :cond_3
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p2

    invoke-virtual {p2}, Lbdu;->d()I

    move-result p2

    invoke-static {p2}, Latt;->b(I)V

    .line 229
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object p2

    invoke-virtual {p2}, Lawo;->b()Ljava/util/List;

    move-result-object p2

    const/16 p4, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Laxu;->a(Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 216
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
