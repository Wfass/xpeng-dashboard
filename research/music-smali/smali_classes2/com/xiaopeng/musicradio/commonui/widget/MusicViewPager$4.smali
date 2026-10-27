.class Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;
.super Ljava/lang/Object;
.source "MusicViewPager.java"

# interfaces
.implements Lgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lgr;)Lgr;
    .locals 5

    .line 446
    invoke-static {p1, p2}, Lgj;->a(Landroid/view/View;Lgr;)Lgr;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Lgr;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 459
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;->b:Landroid/graphics/Rect;

    .line 460
    invoke-virtual {p1}, Lgr;->a()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 461
    invoke-virtual {p1}, Lgr;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 462
    invoke-virtual {p1}, Lgr;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 463
    invoke-virtual {p1}, Lgr;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 466
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    .line 467
    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lgj;->b(Landroid/view/View;Lgr;)Lgr;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lgr;->a()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 472
    invoke-virtual {v2}, Lgr;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 474
    invoke-virtual {v2}, Lgr;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 476
    invoke-virtual {v2}, Lgr;->d()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lgr;->a(IIII)Lgr;

    move-result-object p1

    return-object p1
.end method
