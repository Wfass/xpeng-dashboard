.class Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;
.super Ljava/lang/Object;
.source "CategoryListFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_reading_category_album:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    invoke-virtual {v0, p2}, Lblw;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const-string p1, "classification"

    .line 55
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "/program/fragment/sub/detail"

    const-string v1, "CATEGORY"

    const-string v2, ""

    invoke-static {p2, v0, p1, v1, v2}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->access$000(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 70
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getCategoryName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
