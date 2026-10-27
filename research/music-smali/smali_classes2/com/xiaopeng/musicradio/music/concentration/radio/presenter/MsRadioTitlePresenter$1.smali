.class Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;
.super Ljava/lang/Object;
.source "MsRadioTitlePresenter.java"

# interfaces
.implements Lbim$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;->showErrorView(Ljava/lang/String;)V

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

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->h()V

    return-void
.end method
