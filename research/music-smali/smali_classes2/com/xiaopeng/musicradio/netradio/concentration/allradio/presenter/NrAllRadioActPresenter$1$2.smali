.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;
.super Lbkv;
.source "NrAllRadioActPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    .line 72
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getBizVal()I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;-><init>()V

    const/16 v0, -0x3e8

    .line 79
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setBizVal(I)V

    .line 80
    sget v0, Lbuc$g;->hongkong:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setName(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;-><init>()V

    const/16 v2, -0x7d0

    .line 82
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setBizVal(I)V

    .line 83
    sget v2, Lbuc$g;->macao:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setName(Ljava/lang/String;)V

    .line 84
    new-instance v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;-><init>()V

    const/16 v3, -0xbb8

    .line 85
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setBizVal(I)V

    .line 86
    sget v3, Lbuc$g;->taiwan:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->setName(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;->getData(Ljava/util/ArrayList;)V

    const-string p1, "SP_LOVE_NETRADIO_TAG"

    .line 92
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v1, "NETRADIO_ALL_SP"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_PROVINCE"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$2;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V

    return-void
.end method
