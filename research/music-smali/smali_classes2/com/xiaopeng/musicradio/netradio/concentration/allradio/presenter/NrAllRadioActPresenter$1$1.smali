.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$1;
.super Ljava/lang/Object;
.source "NrAllRadioActPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;->getData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
