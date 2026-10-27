.class Lajq$a;
.super Landroid/view/ViewOutlineProvider;
.source "ShapeableImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lajq;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lajq;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lajq$a;->a:Lajq;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 580
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lajq$a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 584
    iget-object p1, p0, Lajq$a;->a:Lajq;

    invoke-static {p1}, Lajq;->a(Lajq;)Lakp;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object p1, p0, Lajq$a;->a:Lajq;

    invoke-static {p1}, Lajq;->b(Lajq;)Lakk;

    move-result-object p1

    if-nez p1, :cond_1

    .line 589
    iget-object p1, p0, Lajq$a;->a:Lajq;

    new-instance v0, Lakk;

    invoke-static {p1}, Lajq;->a(Lajq;)Lakp;

    move-result-object v1

    invoke-direct {v0, v1}, Lakk;-><init>(Lakp;)V

    invoke-static {p1, v0}, Lajq;->a(Lajq;Lakk;)Lakk;

    .line 592
    :cond_1
    iget-object p1, p0, Lajq$a;->a:Lajq;

    invoke-static {p1}, Lajq;->c(Lajq;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lajq$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 593
    iget-object p1, p0, Lajq$a;->a:Lajq;

    invoke-static {p1}, Lajq;->b(Lajq;)Lakk;

    move-result-object p1

    iget-object v0, p0, Lajq$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lakk;->setBounds(Landroid/graphics/Rect;)V

    .line 594
    iget-object p1, p0, Lajq$a;->a:Lajq;

    invoke-static {p1}, Lajq;->b(Lajq;)Lakk;

    move-result-object p1

    invoke-virtual {p1, p2}, Lakk;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
