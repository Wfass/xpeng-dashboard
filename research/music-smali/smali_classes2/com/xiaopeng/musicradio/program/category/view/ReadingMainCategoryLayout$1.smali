.class Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;
.super Ljava/lang/Object;
.source "ReadingMainCategoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->access$000(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result p1

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)Lblx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getId()I

    move-result v1

    const-string v2, "/program/fragment/sub/category"

    invoke-static {v0, v2, p2, v1}, Lbmz;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
