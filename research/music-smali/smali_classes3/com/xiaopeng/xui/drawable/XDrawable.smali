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

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XDrawable;->isNeedAnimate:Z

    return-void
.end method


# virtual methods
.method public setNeedAnimate(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XDrawable;->isNeedAnimate:Z

    return-void
.end method
