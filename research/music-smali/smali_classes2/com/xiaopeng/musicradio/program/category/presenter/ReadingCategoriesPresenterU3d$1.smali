.class Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;
.super Lbkv;
.source "ReadingCategoriesPresenterU3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a(Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;Ljava/util/List;)Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->showCategories(Ljava/util/List;)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    :cond_1
    :goto_0
    return-void
.end method
