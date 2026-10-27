.class public Lcom/xiaopeng/xui/widget/blurview/EmptyBlurImpl;
.super Ljava/lang/Object;
.source "EmptyBlurImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method

.method public prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buffer"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # F

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .line 16
    return-void
.end method
