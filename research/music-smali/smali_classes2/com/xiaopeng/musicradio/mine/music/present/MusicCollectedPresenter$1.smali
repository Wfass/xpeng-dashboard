.class Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;
.super Ljava/lang/Object;
.source "MusicCollectedPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
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
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    .line 58
    invoke-static {}, Latc;->a()Latc;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v1, v2}, Latc;->a(Ljava/util/List;)V

    if-eqz v0, :cond_3

    .line 60
    iget-object v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->d(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;)V

    .line 62
    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->onDataListLoaded(Ljava/util/List;I)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 64
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->b(Ljava/util/List;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Laxa;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;->a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
