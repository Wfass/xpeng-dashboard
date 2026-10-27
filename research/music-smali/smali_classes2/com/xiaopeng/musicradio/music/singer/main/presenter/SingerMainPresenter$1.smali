.class Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;
.super Lbkv;
.source "SingerMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string p2, "singerType"

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeCode()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setAreaDatas(Ljava/util/List;)V

    .line 69
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setTypeDatas(Ljava/util/List;)V

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setTypeListDatas(Ljava/util/List;Ljava/util/List;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iput-object v0, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    .line 73
    iput-object v1, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string v0, "singerType"

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;)V

    return-void
.end method
