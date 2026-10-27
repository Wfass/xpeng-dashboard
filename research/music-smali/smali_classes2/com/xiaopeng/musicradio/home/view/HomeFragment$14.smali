.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->hideSelectMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;IZ)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->c:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->a:I

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 587
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->c:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$700(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 588
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->c:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$800(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIsVisible(Z)V

    .line 589
    iget p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->a:I

    if-ltz p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->b:Z

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;->c:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectChange(I)V

    :cond_0
    return-void
.end method
