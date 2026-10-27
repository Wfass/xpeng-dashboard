.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;
.super Ljava/lang/Object;
.source "CustomDetailListActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 7

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$100(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CustomDetailListActivity"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$200(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$700(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$800(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Laua;

    iget-object p2, p2, Laua;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, p4, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$900(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;Z)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance p2, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$300(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->g()Ljava/util/List;

    move-result-object v1

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$400(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)I

    move-result v3

    const/16 v4, 0x32

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$500(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)I

    move-result v5

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$600(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Ljava/lang/String;

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

    .line 148
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
