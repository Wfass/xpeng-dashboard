.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;
.super Ljava/lang/Object;
.source "ShowReportPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;


# instance fields
.field private wA:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;

.field private wz:Lcom/xiaopeng/devtools/model/c/a/f;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/h;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/h;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;->wz:Lcom/xiaopeng/devtools/model/c/a/f;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;->wA:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;

    .line 18
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;->wA:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;->d(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public fV()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;->wz:Lcom/xiaopeng/devtools/model/c/a/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/f;->fV()V

    .line 23
    return-void
.end method
