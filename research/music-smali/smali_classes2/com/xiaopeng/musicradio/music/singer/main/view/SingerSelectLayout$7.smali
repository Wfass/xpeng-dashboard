.class Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;
.super Ljava/lang/Object;
.source "SingerSelectLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->showAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Landroid/view/View;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$1102(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$1102(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Z)Z

    return-void
.end method
