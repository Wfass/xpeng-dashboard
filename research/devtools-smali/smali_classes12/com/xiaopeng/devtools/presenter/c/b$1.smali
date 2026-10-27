.class Lcom/xiaopeng/devtools/presenter/c/b$1;
.super Ljava/lang/Object;
.source "TboxNetworkPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yv:Lcom/xiaopeng/devtools/bean/car/TboxApn;

.field final synthetic yw:Lcom/xiaopeng/devtools/presenter/c/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/c/b;Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b$1;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/c/b$1;->yv:Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b$1;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/presenter/c/b;)Lcom/xiaopeng/devtools/view/modemui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b$1;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/presenter/c/b;)Lcom/xiaopeng/devtools/view/modemui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/c/b$1;->yv:Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/modemui/b;->a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    .line 105
    :cond_0
    return-void
.end method
