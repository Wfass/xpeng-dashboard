.class Lcom/xiaopeng/devtools/view/a$1;
.super Ljava/lang/Object;
.source "NewConfirmDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dw:Lcom/xiaopeng/devtools/view/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$1;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/view/a$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a$1$1;-><init>(Lcom/xiaopeng/devtools/view/a$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 64
    return-void
.end method
