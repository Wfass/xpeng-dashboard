.class Lcom/xiaopeng/devtools/presenter/c/b$2;
.super Ljava/lang/Object;
.source "TboxNetworkPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/c/b;->cj(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yw:Lcom/xiaopeng/devtools/presenter/c/b;

.field final synthetic yx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/c/b;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/b$2;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/c/b$2;->yx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b$2;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/presenter/c/b;)Lcom/xiaopeng/devtools/view/modemui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/b$2;->yw:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->a(Lcom/xiaopeng/devtools/presenter/c/b;)Lcom/xiaopeng/devtools/view/modemui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/c/b$2;->yx:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/modemui/b;->cj(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
