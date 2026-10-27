.class public Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;,
        Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener2;,
        Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$LayoutAttachStateChangeListener;
    }
.end annotation


# static fields
.field private static final HIT_RECT:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "xpui-touch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->HIT_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/graphics/Rect;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->HIT_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$3;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static extendViewTouchTarget(Landroid/view/View;IIIII)V
    .locals 8

    .line 63
    new-instance v7, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$1;-><init>(Landroid/view/View;IIIII)V

    invoke-virtual {p0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v7, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;-><init>(Landroid/view/View;Landroid/view/View;IIII)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static findViewAncestor(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getOrCreateTouchDelegateGroup(Landroid/view/View;)Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    instance-of v1, v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    goto :goto_0

    .line 309
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;-><init>(Landroid/view/View;)V

    .line 310
    instance-of p0, v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    if-eqz p0, :cond_1

    .line 311
    check-cast v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->addTouchDelegate(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
