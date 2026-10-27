.class public abstract Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;
.source "BaseSearchResultListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/search/result/view/b;",
        ">",
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter<",
        "TUIInterface;>;"
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;-><init>()V

    .line 43
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Ljava/lang/String;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 6

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "song"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "read"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x6

    goto :goto_2

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_4
        0x35f515 -> :sswitch_3
        0x5897e6f -> :sswitch_2
        0x67413fb -> :sswitch_1
        0x3897612a -> :sswitch_0
    .end sparse-switch
.end method

.method private a(ILjava/lang/String;I)V
    .locals 6

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateU3Dloading searchType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",, mCurrentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSearchPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "collect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "album"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "song"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_1

    :sswitch_4
    const-string v0, "read"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_2

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p2, v5, p1, p3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showRadioLoading(ZII)V

    goto :goto_2

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p2, v5, p1, p3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showReadLoading(ZII)V

    goto :goto_2

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p2, v5, p1, p3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showAlbumLoading(ZII)V

    goto :goto_2

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p2, v5, p1, p3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showCollectLoading(ZII)V

    goto :goto_2

    .line 234
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p2, v5, p1, p3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showMusicLoading(ZII)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_4
        0x35f515 -> :sswitch_3
        0x5897e6f -> :sswitch_2
        0x67413fb -> :sswitch_1
        0x3897612a -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;ILjava/lang/String;)V
    .locals 5

    .line 210
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(ILjava/lang/String;I)V

    .line 211
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "collect"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "radio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "album"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "song"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "read"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    if-eqz p3, :cond_5

    if-eq p3, v4, :cond_4

    if-eq p3, v3, :cond_3

    if-eq p3, v2, :cond_2

    if-eq p3, v1, :cond_1

    goto/16 :goto_2

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateRadioData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    goto :goto_2

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateReadData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateAlbumData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateCollectData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    goto :goto_2

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateMusicData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_4
        0x35f515 -> :sswitch_3
        0x5897e6f -> :sswitch_2
        0x67413fb -> :sswitch_1
        0x3897612a -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;ILjava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(IIZLjava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {v2}, Lcom/xiaopeng/musicradio/search/result/view/b;->resetData()V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {v2, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoading(ZII)V

    .line 125
    :cond_0
    new-instance v2, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {v2, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 126
    new-instance v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p4

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;-><init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Ljava/lang/String;IIZ)V

    if-ne p2, v1, :cond_1

    const/16 v0, 0x384

    :cond_1
    int-to-long p1, v0

    invoke-static {v2, p1, p2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;I)V
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .line 256
    iget v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    const/4 v3, 0x1

    if-gt v1, v2, :cond_1

    if-nez p1, :cond_0

    add-int/2addr v0, v3

    .line 258
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(IIZLjava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/b;

    const/4 p2, 0x0

    iget v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    iget v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoading(ZII)V

    .line 267
    :cond_2
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v3}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 114
    iget v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d:I

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(IIZLjava/lang/String;)V

    return-void
.end method

.method protected abstract d()I
.end method

.method public d(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d:I

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->refreshData()V

    .line 319
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public dealLoveState(Lasj$r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    if-eqz v0, :cond_1

    .line 306
    instance-of v1, v0, Lcom/xiaopeng/musicradio/search/result/view/d;

    if-eqz v1, :cond_0

    .line 307
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/search/result/view/d;

    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/search/result/view/d;->updateMusicLove(Lasj$r;)V

    .line 309
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/view/b;->refreshData()V

    .line 311
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/view/b;->refreshData()V

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 298
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2}, Lbnz;->e()I

    move-result v2

    invoke-interface {v0, v1, v1, v2}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoading(ZII)V

    .line 58
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;)V

    const-wide/16 v2, 0x384

    invoke-static {v0, v2, v3}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/view/b;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lbnz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/search/result/view/b;->refreshData()V

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    .line 68
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lbnz;->a(I)V

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 91
    :cond_5
    invoke-static {}, Lbom;->f()V

    goto :goto_2

    .line 88
    :cond_6
    invoke-static {}, Lbom;->e()V

    goto :goto_2

    .line 82
    :cond_7
    invoke-static {}, Lbom;->d()V

    goto :goto_2

    .line 85
    :cond_8
    invoke-static {}, Lbom;->c()V

    goto :goto_2

    .line 79
    :cond_9
    invoke-static {}, Lbom;->b()V

    :goto_2
    return-void
.end method

.method protected f()Z
    .locals 4

    .line 97
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 99
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->g()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 102
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->g()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 108
    :cond_3
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v3

    if-ne v0, v3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d:I

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 50
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewSearchKeyword(Lbnw$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(I)V

    .line 289
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lbnz;->a(I)V

    return-void
.end method

.method public onNewVoiceSearchRsult(Lasi$d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 324
    invoke-virtual {p1}, Lasi$d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 326
    invoke-virtual {p1}, Lasi$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lasi$d;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    instance-of v0, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1}, Lasi$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lasi$d;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    instance-of v0, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {p1}, Lasi$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lasi$d;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/view/b;->refreshData()V

    :cond_0
    return-void
.end method
