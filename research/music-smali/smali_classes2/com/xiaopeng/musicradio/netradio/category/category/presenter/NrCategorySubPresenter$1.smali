.class Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;
.super Lbkv;
.source "NrCategorySubPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method
