.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;
.super Ljava/lang/Object;
.source "CustomDetailListPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Lcom/xiaopeng/musicradio/datalist/g<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:Landroidx/lifecycle/LiveData;

.field final synthetic c:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->b:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v0, v0, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->b:Landroidx/lifecycle/LiveData;

    invoke-static {v0, p0}, Laxr;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    iget v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->f:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;I)I

    .line 85
    iget-object v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 88
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    goto :goto_1

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->c:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->a(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
