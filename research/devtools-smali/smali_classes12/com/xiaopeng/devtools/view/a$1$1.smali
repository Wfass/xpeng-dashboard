.class Lcom/xiaopeng/devtools/view/a$1$1;
.super Ljava/lang/Object;
.source "NewConfirmDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/a$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dx:Lcom/xiaopeng/devtools/view/a$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/a$1;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a$1$1;->Dx:Lcom/xiaopeng/devtools/view/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a$1$1;->Dx:Lcom/xiaopeng/devtools/view/a$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a$1$1;->Dx:Lcom/xiaopeng/devtools/view/a$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/a;->c(Lcom/xiaopeng/devtools/view/a;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a$1$1;->Dx:Lcom/xiaopeng/devtools/view/a$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/a;->d(Lcom/xiaopeng/devtools/view/a;)V

    .line 77
    :goto_0
    return-void
.end method
