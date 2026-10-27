.class public Lcom/xiaopeng/xui/view/c/c;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/view/c/c$c;,
        Lcom/xiaopeng/xui/view/c/c$b;,
        Lcom/xiaopeng/xui/view/c/c$a;
    }
.end annotation


# static fields
.field private static final abB:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/view/c/c;->abB:Landroid/graphics/Rect;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    nop

    .line 104
    new-instance v7, Lcom/xiaopeng/xui/view/c/c$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xui/view/c/c$1;-><init>(Landroid/view/View;Landroid/view/View;IIII)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 199
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    nop

    .line 203
    new-instance v0, Lcom/xiaopeng/xui/view/c/c$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/view/c/c$2;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void

    .line 200
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic fl(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/view/c/c;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/view/View;)Lcom/xiaopeng/xui/view/c/b;
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_2

    .line 306
    instance-of v1, v0, Lcom/xiaopeng/xui/view/c/b;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Lcom/xiaopeng/xui/view/c/b;

    goto :goto_0

    .line 309
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/view/c/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/view/c/b;-><init>(Landroid/view/View;)V

    .line 310
    instance-of p0, v0, Lcom/xiaopeng/xui/view/c/a;

    if-eqz p0, :cond_1

    .line 311
    check-cast v0, Lcom/xiaopeng/xui/view/c/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/view/c/b;->a(Lcom/xiaopeng/xui/view/c/a;)V

    .line 317
    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 315
    :cond_2
    new-instance v0, Lcom/xiaopeng/xui/view/c/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/view/c/b;-><init>(Landroid/view/View;)V

    .line 317
    :goto_0
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    .line 336
    return-void
.end method

.method static synthetic qP()Landroid/graphics/Rect;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xui/view/c/c;->abB:Landroid/graphics/Rect;

    return-object v0
.end method
