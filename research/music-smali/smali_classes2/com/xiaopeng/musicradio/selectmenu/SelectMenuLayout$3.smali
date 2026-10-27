.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->animateExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "SelectMenuLayout"

    const-string v0, "onAnimationEnd: "

    .line 549
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$800(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    .line 551
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    sget v1, Lcom/xiaopeng/musicradio/main/a$f;->menu_up:I

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$900(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$1100(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 544
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$800(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    return-void
.end method
