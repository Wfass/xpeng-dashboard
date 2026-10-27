.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;
.super Ljava/lang/Object;
.source "CollectMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 7

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CollectMusicActivity"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$800(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$900(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laty;

    iget-object p2, p2, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, p4, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 191
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laty;

    iget-object p2, p2, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitleBtnEnable(Z)V

    goto/16 :goto_0

    .line 192
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 193
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laty;

    iget-object p2, p2, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 194
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1400(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laty;

    iget-object p2, p2, Laty;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$1500(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;Z)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-ne p2, p4, :cond_3

    .line 180
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 181
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result p2

    if-gtz p2, :cond_3

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$400(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    .line 185
    :cond_3
    new-instance p2, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$500(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->g()Ljava/util/List;

    move-result-object v1

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$600(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I

    move-result v3

    const/16 v4, 0x32

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$700(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I

    move-result v5

    const/16 p4, 0x32

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;-><init>(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IIILjava/lang/String;)V

    invoke-static {p1, p2}, Laxu;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 173
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
