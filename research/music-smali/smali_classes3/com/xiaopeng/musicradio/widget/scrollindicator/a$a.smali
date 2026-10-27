.class Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

.field private b:I

.field private c:Landroid/widget/Scroller;

.field private final d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V
    .locals 2

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 282
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->b:I

    .line 285
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a$1;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d:Landroid/view/animation/Interpolator;

    .line 294
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {p1}, Lgj;->e(Landroid/view/View;)V

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lgj;->e(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
