.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;
.super Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;
.source "NrAllRadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->b:Ljava/util/List;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALL_RADIO:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrAllRadioPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    sget v1, Lasf;->e:I

    invoke-virtual {v0, v1, p1}, Lbda;->a(II)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 5

    .line 90
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    const-string v1, ""

    const-string v2, "NrAllRadioPresenter"

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_5

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNrAllRadio response list size empty ==> state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lasf;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget p1, Lasf;->c:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(I)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 101
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 103
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->b:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    invoke-interface {p1, v3}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->getData(Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->f()V

    .line 115
    sget p1, Lasf;->b:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(I)V

    :cond_4
    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c:Z

    goto :goto_2

    .line 120
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNrAllRadio response bean or bean data is null ==> state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lasf;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget p1, Lasf;->c:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(I)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->a(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 62
    sget v0, Lasf;->a:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(I)V

    .line 63
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object v0

    invoke-virtual {v0}, Lbke;->b()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "NrAllRadioPresenter"

    const-string v1, "loadData: cache ========= "

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object v0

    invoke-virtual {v0}, Lbke;->b()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    .line 69
    new-instance v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;)V

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/netradio/logic/b;->b(IIILbkv;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->d()V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->g()V

    .line 143
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c:Z

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "NrAllRadioPresenter"

    const-string v1, "onCreateView"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 46
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c:Z

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->e()V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onEvent(Lasf$c;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "NrAllRadioPresenter"

    const-string v1, "onEvent: ======= LoadRadioData "

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Lasf$c;->a()I

    move-result p1

    sget v0, Lasf;->e:I

    if-ne p1, v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c()V

    :cond_0
    return-void
.end method
