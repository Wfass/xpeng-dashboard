.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;
.super Ljava/lang/Object;
.source "MsSingerSelectLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->hideAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$102(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$102(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Z)Z

    return-void
.end method
