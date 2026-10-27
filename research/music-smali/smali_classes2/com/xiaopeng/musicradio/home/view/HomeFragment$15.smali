.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$15;
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
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$15;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$15;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$900(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    return-void
.end method
