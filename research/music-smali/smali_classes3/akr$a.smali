.class Lakr$a;
.super Lakr$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lakr$c;


# direct methods
.method public constructor <init>(Lakr$c;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lakr$f;-><init>()V

    .line 416
    iput-object p1, p0, Lakr$a;->a:Lakr$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lakb;ILandroid/graphics/Canvas;)V
    .locals 8

    .line 425
    iget-object v0, p0, Lakr$a;->a:Lakr$c;

    invoke-static {v0}, Lakr$c;->a(Lakr$c;)F

    move-result v6

    .line 426
    iget-object v0, p0, Lakr$a;->a:Lakr$c;

    invoke-static {v0}, Lakr$c;->b(Lakr$c;)F

    move-result v7

    .line 427
    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lakr$a;->a:Lakr$c;

    .line 429
    invoke-static {v0}, Lakr$c;->c(Lakr$c;)F

    move-result v0

    iget-object v1, p0, Lakr$a;->a:Lakr$c;

    invoke-static {v1}, Lakr$c;->d(Lakr$c;)F

    move-result v1

    iget-object v2, p0, Lakr$a;->a:Lakr$c;

    invoke-static {v2}, Lakr$c;->e(Lakr$c;)F

    move-result v2

    iget-object v3, p0, Lakr$a;->a:Lakr$c;

    invoke-static {v3}, Lakr$c;->f(Lakr$c;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    .line 430
    invoke-virtual/range {v1 .. v7}, Lakb;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
