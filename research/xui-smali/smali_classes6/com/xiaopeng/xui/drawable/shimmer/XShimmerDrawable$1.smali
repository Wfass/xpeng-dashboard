.class Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable$1;
.super Ljava/lang/Object;
.source "XShimmerDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->invalidateSelf()V

    .line 39
    return-void
.end method
