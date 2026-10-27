.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XLoadingDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$0:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    iput p2, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$1:I

    iput p3, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$0:Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$1:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->lambda$makeAnimations$0(Lcom/xiaopeng/xui/drawable/XLoadingDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
