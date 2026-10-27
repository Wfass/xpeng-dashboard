.class public Lcom/xiaopeng/devtools/presenter/factorytest/a/b;
.super Ljava/lang/Object;
.source "NavTestPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/a/a;


# instance fields
.field private yd:Lcom/xiaopeng/devtools/model/c/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/xiaopeng/devtools/model/c/b/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/b/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;->yd:Lcom/xiaopeng/devtools/model/c/b/a;

    .line 16
    return-void
.end method


# virtual methods
.method public gU()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;->yd:Lcom/xiaopeng/devtools/model/c/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/b/a;->gU()Z

    move-result v0

    return v0
.end method

.method public gV()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;->yd:Lcom/xiaopeng/devtools/model/c/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/b/a;->gV()V

    .line 26
    return-void
.end method

.method public gW()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;->yd:Lcom/xiaopeng/devtools/model/c/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/b/a;->gW()V

    .line 31
    return-void
.end method

.method public gX()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;->yd:Lcom/xiaopeng/devtools/model/c/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/b/a;->gX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
