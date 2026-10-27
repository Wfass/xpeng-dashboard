.class public abstract Lcom/xiaopeng/xui/drawable/XDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XDrawable.java"


# instance fields
.field isNeedAnimate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XDrawable;->isNeedAnimate:Z

    return-void
.end method


# virtual methods
.method public setNeedAnimate(Z)V
    .locals 0
    .param p1, "needAnimate"    # Z

    .line 9
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XDrawable;->isNeedAnimate:Z

    .line 10
    return-void
.end method
