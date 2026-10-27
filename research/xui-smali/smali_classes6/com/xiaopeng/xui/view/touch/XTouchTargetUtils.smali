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
    .param p0, "x0"    # Ljava/lang/String;

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
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 199
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    move-object v0, p1

    .line 203
    .local v0, "ancestor":Landroid/view/ViewGroup;
    new-instance v1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$3;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void

    .line 200
    .end local v0    # "ancestor":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void
.end method

.method public static extendViewTouchTarget(Landroid/view/View;IIIII)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ancestorId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

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

    .line 71
    return-void
.end method

.method public static extendViewTouchTarget(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "nullableAncestor"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 97
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    move-object v7, p1

    .line 104
    .local v7, "ancestor":Landroid/view/View;
    new-instance v8, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$2;-><init>(Landroid/view/View;Landroid/view/View;IIII)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void

    .line 98
    .end local v7    # "ancestor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void
.end method

.method public static findViewAncestor(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ancestorId"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 325
    move-object v0, p0

    .line 326
    .local v0, "parent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_0

    .line 328
    const/4 v1, 0x0

    return-object v1

    .line 330
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 332
    :cond_1
    return-object v0
.end method

.method public static getOrCreateTouchDelegateGroup(Landroid/view/View;)Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    .locals 3
    .param p0, "ancestor"    # Landroid/view/View;

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 305
    .local v0, "existingTouchDelegate":Landroid/view/TouchDelegate;
    if-eqz v0, :cond_1

    .line 306
    instance-of v1, v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    if-eqz v1, :cond_0

    .line 307
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    .local v1, "touchDelegateGroup":Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    goto :goto_0

    .line 309
    .end local v1    # "touchDelegateGroup":Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;-><init>(Landroid/view/View;)V

    .line 310
    .restart local v1    # "touchDelegateGroup":Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    instance-of v2, v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    if-eqz v2, :cond_2

    .line 311
    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->addTouchDelegate(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;)V

    goto :goto_0

    .line 315
    .end local v1    # "touchDelegateGroup":Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    :cond_1
    new-instance v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;-><init>(Landroid/view/View;)V

    .line 317
    .restart local v1    # "touchDelegateGroup":Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 336
    return-void
.end method
