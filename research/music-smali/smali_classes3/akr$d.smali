.class public Lakr$d;
.super Lakr$e;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lakr$e;-><init>()V

    return-void
.end method

.method static synthetic a(Lakr$d;)F
    .locals 0

    .line 446
    iget p0, p0, Lakr$d;->b:F

    return p0
.end method

.method static synthetic a(Lakr$d;F)F
    .locals 0

    .line 446
    iput p1, p0, Lakr$d;->a:F

    return p1
.end method

.method static synthetic b(Lakr$d;)F
    .locals 0

    .line 446
    iget p0, p0, Lakr$d;->a:F

    return p0
.end method

.method static synthetic b(Lakr$d;F)F
    .locals 0

    .line 446
    iput p1, p0, Lakr$d;->b:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lakr$d;->g:Landroid/graphics/Matrix;

    .line 453
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 454
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 455
    iget v0, p0, Lakr$d;->a:F

    iget v1, p0, Lakr$d;->b:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
