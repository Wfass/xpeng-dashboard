.class public Lcom/xiaopeng/devtools/presenter/f/b;
.super Ljava/lang/Object;
.source "ControlPanelPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/f/d;


# instance fields
.field private zo:Lcom/xiaopeng/devtools/model/g/d;

.field private zp:Lcom/xiaopeng/devtools/view/smartdrive/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/b;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xiaopeng/devtools/model/g/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/g/b;-><init>(Lcom/xiaopeng/devtools/presenter/f/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/b;->zo:Lcom/xiaopeng/devtools/model/g/d;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/f/b;->zp:Lcom/xiaopeng/devtools/view/smartdrive/b;

    .line 18
    return-void
.end method


# virtual methods
.method public cl(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/b;->zp:Lcom/xiaopeng/devtools/view/smartdrive/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/b;->cl(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public hD()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/b;->zo:Lcom/xiaopeng/devtools/model/g/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/g/d;->hD()V

    .line 23
    return-void
.end method
