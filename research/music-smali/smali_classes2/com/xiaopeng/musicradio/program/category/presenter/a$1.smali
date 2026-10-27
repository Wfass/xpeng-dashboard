.class Lcom/xiaopeng/musicradio/program/category/presenter/a$1;
.super Lbkv;
.source "ReadingCategoriesPresenterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/presenter/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/a;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->a(Lcom/xiaopeng/musicradio/program/category/presenter/a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->a(Lcom/xiaopeng/musicradio/program/category/presenter/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->a(Lcom/xiaopeng/musicradio/program/category/presenter/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->a(Lcom/xiaopeng/musicradio/program/category/presenter/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->a(Lcom/xiaopeng/musicradio/program/category/presenter/a;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->showCategories(Ljava/util/List;)V

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    goto :goto_3

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    :cond_5
    :goto_3
    return-void
.end method
