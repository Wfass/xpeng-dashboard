.class Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;
.super Ljava/lang/Object;
.source "MsRadioPresenter.java"

# interfaces
.implements Lbim$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->h()V

    return-void
.end method
