.class Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->setView()V
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

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    invoke-virtual {v0, p1}, Lblw;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->access$200(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
