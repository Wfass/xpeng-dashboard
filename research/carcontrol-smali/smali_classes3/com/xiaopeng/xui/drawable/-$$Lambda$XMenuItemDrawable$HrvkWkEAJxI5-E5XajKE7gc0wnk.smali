.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$HrvkWkEAJxI5-E5XajKE7gc0wnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$HrvkWkEAJxI5-E5XajKE7gc0wnk;->f$0:Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XMenuItemDrawable$HrvkWkEAJxI5-E5XajKE7gc0wnk;->f$0:Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XMenuItemDrawable;->lambda$pressDown$0$XMenuItemDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
