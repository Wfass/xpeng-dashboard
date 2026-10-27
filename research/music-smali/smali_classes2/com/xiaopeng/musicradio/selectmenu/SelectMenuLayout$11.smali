.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->animateCollapse()V
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

    .line 483
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x2

    .line 486
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$600(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$700(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 488
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$2;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$1002(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Z)Z

    return-void
.end method
