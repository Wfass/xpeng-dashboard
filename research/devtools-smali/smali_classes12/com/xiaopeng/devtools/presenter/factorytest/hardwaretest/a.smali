.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;
.super Ljava/lang/Object;
.source "BrightnessPresenter.java"


# instance fields
.field private ws:Lcom/xiaopeng/devtools/model/c/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->ws:Lcom/xiaopeng/devtools/model/c/a/a;

    .line 19
    return-void
.end method


# virtual methods
.method public bZ(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->ws:Lcom/xiaopeng/devtools/model/c/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/a;->bZ(I)V

    .line 35
    return-void
.end method

.method public fL()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->ws:Lcom/xiaopeng/devtools/model/c/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/a;->fL()I

    move-result v0

    return v0
.end method

.method public fM()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->ws:Lcom/xiaopeng/devtools/model/c/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/a;->fM()I

    move-result v0

    return v0
.end method

.method public fN()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->ws:Lcom/xiaopeng/devtools/model/c/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/a;->fN()I

    move-result v0

    return v0
.end method
