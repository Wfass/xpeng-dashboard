.class public Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "NrConcentrationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    .line 28
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    return-void
.end method

.method private d()V
    .locals 3

    .line 52
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    sget v1, Lasf;->b:I

    const-string v2, "NrConcentrationPresenter"

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    sget v1, Lasf;->b:I

    if-ne v0, v1, :cond_0

    const-string v0, "handleLoadState: showData ========= "

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;->showData()V

    goto :goto_1

    .line 57
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    sget v1, Lasf;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    sget v1, Lasf;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    sget v1, Lasf;->a:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    sget v1, Lasf;->a:I

    if-ne v0, v1, :cond_4

    :cond_2
    const-string v0, "handleLoadState: showLoading ========= "

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;->showLoadingView()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "handleLoadState: showError ========= "

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "NrConcentrationPresenter"

    const-string v1, "loadData: ========= "

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    sget v1, Lasf;->b:I

    if-eq v0, v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;->showLoadingView()V

    .line 76
    :cond_0
    sget v0, Lasf;->a:I

    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    .line 77
    new-instance v0, Lasf$c;

    sget v1, Lasf;->d:I

    invoke-direct {v0, v1}, Lasf$c;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    .line 79
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    sget v1, Lasf;->b:I

    if-eq v0, v1, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;->showLoadingView()V

    .line 83
    :cond_2
    sget v0, Lasf;->a:I

    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    .line 84
    new-instance v0, Lasf$c;

    sget v1, Lasf;->e:I

    invoke-direct {v0, v1}, Lasf$c;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public dealNetRadioState(Lasf$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRadioState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasf$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasf$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrConcentrationPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lasf$a;->b()I

    move-result v0

    sget v1, Lasf;->d:I

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lasf$a;->a()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lasf$a;->b()I

    move-result v0

    sget v1, Lasf;->e:I

    if-ne v0, v1, :cond_1

    .line 46
    invoke-virtual {p1}, Lasf$a;->a()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    .line 48
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->d()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NrConcentrationPresenter"

    const-string v0, "onCreateView"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object p1

    sget v0, Lasf;->d:I

    invoke-virtual {p1, v0}, Lbda;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->b:I

    .line 36
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object p1

    sget v0, Lasf;->e:I

    invoke-virtual {p1, v0}, Lbda;->a(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c:I

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->d()V

    return-void
.end method
