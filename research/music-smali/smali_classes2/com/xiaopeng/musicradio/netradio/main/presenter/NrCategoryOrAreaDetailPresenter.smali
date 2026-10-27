.class public Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NrCategoryOrAreaDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:Z

.field protected d:J

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const-string v0, "1"

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->j:Z

    const/16 v0, 0x1f4

    .line 43
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->e:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
    .locals 4

    .line 153
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->c:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->d:J

    sub-long/2addr v0, v2

    .line 156
    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v2, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$3;-><init>(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    iget p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b:I

    int-to-long p1, p1

    sub-long/2addr p1, v0

    invoke-static {v2, p1, p2}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
    .locals 5

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 178
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "getCategoryNetRadio"

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ",,,,"

    if-eqz v0, :cond_3

    .line 189
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 190
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetCategoryDataSize: \u5206\u7c7b\u5e7f\u64ad\u6570\u91cf: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NrCategoryOrAreaDetailPresenter"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCategoryData: \u5206\u7c7b\u5e7f\u64ad\u4fe1\u606f: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "getAreasNetRadio"

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 194
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 195
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5730\u57df\u5e7f\u64ad\u4fe1\u606f: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GetAreaData Factory"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {p2, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->a(Ljava/util/List;)V

    .line 200
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object p2

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    invoke-virtual {p2, v0, p1}, Lbjw;->a(ILjava/util/List;)V

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->e()V

    :cond_5
    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->j:Z

    goto :goto_3

    .line 205
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->showNoDataView(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v0}, Lbjw;->a(ILjava/util/List;)V

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->showLoadingView()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->d:J

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->c:Z

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrCategoryOrAreaDetailPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 102
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h()V

    goto :goto_0

    :cond_1
    const-string v0, "2"

    .line 104
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i()V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 111
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;)V

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/musicradio/netradio/logic/b;->b(IIILbkv;)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 137
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;-><init>(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;)V

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-static {v0, v2, v3, v1}, Lcom/xiaopeng/musicradio/netradio/logic/b;->a(IIILbkv;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->g:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 3

    .line 71
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    const-string v1, ""

    const/16 v2, -0x3e8

    if-eq v0, v2, :cond_4

    const/16 v2, -0x7d0

    if-eq v0, v2, :cond_4

    const/16 v2, -0xbb8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    invoke-virtual {v0, v2}, Lbjw;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_3

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->showNoDataView(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCategoryData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrCategoryOrAreaDetailPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->showNoDataView(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public d()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->e()V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->d()V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 254
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 232
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 235
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v2

    invoke-virtual {v2}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 240
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    goto :goto_0

    .line 244
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    goto :goto_0

    .line 247
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->h:I

    return v0
.end method

.method public g()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 216
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->j:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->d()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NrCategoryOrAreaDetailPresenter"

    const-string v0, "onCreateView"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->j:Z

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->f()V

    :cond_0
    return-void
.end method
