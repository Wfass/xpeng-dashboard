.class public Lcom/xiaopeng/devtools/presenter/f/a;
.super Ljava/lang/Object;
.source "CanTestPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/f/c;


# instance fields
.field private zm:Lcom/xiaopeng/devtools/model/g/c;

.field private zn:Lcom/xiaopeng/devtools/view/smartdrive/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xiaopeng/devtools/model/g/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/g/a;-><init>(Lcom/xiaopeng/devtools/presenter/f/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a;->zm:Lcom/xiaopeng/devtools/model/g/c;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/f/a;->zn:Lcom/xiaopeng/devtools/view/smartdrive/a;

    .line 18
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;[I)V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a;->zm:Lcom/xiaopeng/devtools/model/g/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/devtools/model/g/c;->a(IIILjava/lang/String;[I)V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a;->zm:Lcom/xiaopeng/devtools/model/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/g/c;->onDestroy()V

    .line 23
    return-void
.end method
