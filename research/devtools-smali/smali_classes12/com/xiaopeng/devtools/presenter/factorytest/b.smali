.class public Lcom/xiaopeng/devtools/presenter/factorytest/b;
.super Ljava/lang/Object;
.source "LcdDebugPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/a;


# instance fields
.field private wq:Lcom/xiaopeng/devtools/view/factorytest/a;

.field private wr:Lcom/xiaopeng/devtools/model/c/d;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/a;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wq:Lcom/xiaopeng/devtools/view/factorytest/a;

    .line 17
    new-instance p1, Lcom/xiaopeng/devtools/model/c/d;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/model/c/d;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wr:Lcom/xiaopeng/devtools/model/c/d;

    .line 18
    return-void
.end method


# virtual methods
.method public bW(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wr:Lcom/xiaopeng/devtools/model/c/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/d;->bW(I)V

    .line 28
    return-void
.end method

.method public cl(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wq:Lcom/xiaopeng/devtools/view/factorytest/a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wq:Lcom/xiaopeng/devtools/view/factorytest/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/a;->cl(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public fI()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/b;->wr:Lcom/xiaopeng/devtools/model/c/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/d;->fI()V

    .line 23
    return-void
.end method
