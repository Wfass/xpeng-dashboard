.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 489
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 492
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$600(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 494
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 495
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11$1;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$600(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
