.class public Lbdn;
.super Ljava/lang/Object;
.source "BaseUidOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 14
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->d()Lbel;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lben;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 18
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->e()Lbej;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lben;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->b()Lbeg;

    move-result-object p1

    check-cast p1, Lben;

    .line 23
    invoke-interface {p1}, Lben;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 39
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->g()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 43
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    invoke-virtual {v0}, Lbel;->g()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 47
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    invoke-virtual {v0}, Lbej;->g()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 51
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsj;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    .line 71
    invoke-interface {v0}, Lbsj;->isVip()Z

    move-result v0

    return v0
.end method
