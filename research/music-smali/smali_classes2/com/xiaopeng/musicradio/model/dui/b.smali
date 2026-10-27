.class public Lcom/xiaopeng/musicradio/model/dui/b;
.super Ljava/lang/Object;
.source "DuiFmMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 131
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Layv;->a()Layv;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Layv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/b$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/b;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/b;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/b;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
