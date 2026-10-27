.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;->f$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    iput p2, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;->f$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->lambda$initAnimator$0(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
