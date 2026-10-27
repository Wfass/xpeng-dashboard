.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;
.super Ljava/lang/Object;
.source "FactoryTestPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;


# instance fields
.field private wt:Lcom/xiaopeng/devtools/model/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;->wt:Lcom/xiaopeng/devtools/model/c/a/b;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;->wt:Lcom/xiaopeng/devtools/model/c/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/devtools/model/c/a/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 21
    return-void
.end method

.method public bv(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;->wt:Lcom/xiaopeng/devtools/model/c/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b;->bv(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;->wt:Lcom/xiaopeng/devtools/model/c/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/devtools/model/c/a/b;->d(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public fm()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;->wt:Lcom/xiaopeng/devtools/model/c/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b;->fm()V

    .line 39
    return-void
.end method

.method public iK()V
    .locals 0

    .line 29
    return-void
.end method

.method public iL()Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pg()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iM()V
    .locals 0

    .line 53
    return-void
.end method

.method public iN()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/c;->setDvTestReq(I)V

    .line 58
    return-void
.end method

.method public iO()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/c;->setDvTestReq(I)V

    .line 63
    return-void
.end method

.method public iP()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->setDvTestReq(I)V

    .line 68
    return-void
.end method

.method public iQ()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->setDvTestReq(I)V

    .line 73
    return-void
.end method
