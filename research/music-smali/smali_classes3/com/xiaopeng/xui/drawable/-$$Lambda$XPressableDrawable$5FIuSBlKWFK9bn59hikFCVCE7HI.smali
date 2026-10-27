.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/drawable/XPressableDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XPressableDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;->f$0:Lcom/xiaopeng/xui/drawable/XPressableDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;->f$0:Lcom/xiaopeng/xui/drawable/XPressableDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->lambda$startAnimation$0$XPressableDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
