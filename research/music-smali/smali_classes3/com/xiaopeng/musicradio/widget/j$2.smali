.class Lcom/xiaopeng/musicradio/widget/j$2;
.super Ljava/lang/Object;
.source "RecyclerTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/j;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/j;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/j;I)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$2;->b:Lcom/xiaopeng/musicradio/widget/j;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$2;->b:Lcom/xiaopeng/musicradio/widget/j;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j$2;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/widget/j;->a(IFZ)V

    return-void
.end method
