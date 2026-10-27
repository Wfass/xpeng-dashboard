.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SelectMenuLayout"

    const-string v0, "onAnimationEnd: "

    .line 506
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$800(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    .line 508
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->menu_more:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$900(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 501
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$800(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    return-void
.end method
