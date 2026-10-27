.class public Lcom/xiaopeng/devtools/presenter/b/c;
.super Ljava/lang/Object;
.source "TboxSettingsPresenter.java"


# instance fields
.field private yo:Lcom/xiaopeng/commonfunc/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/xiaopeng/commonfunc/b/a/e;

    const-string v1, "TboxSettingPresenter"

    invoke-direct {v0, v1}, Lcom/xiaopeng/commonfunc/b/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/c;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/commonfunc/b/a/a;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const v1, 0x21401056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    const v1, 0x21401055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/b/c;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/commonfunc/b/a/e;->b(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/c;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/a/e;->onDestroy()V

    .line 38
    return-void
.end method

.method public setRoutingForTbox(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/c;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/e;->setRoutingForTbox(I)V

    .line 23
    return-void
.end method

.method public setTboxModemCapture(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/b/c;->yo:Lcom/xiaopeng/commonfunc/b/a/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/e;->setTboxModemCapture(I)V

    .line 27
    return-void
.end method
