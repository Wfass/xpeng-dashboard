.class public Lakr$c;
.super Lakr$e;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final h:Landroid/graphics/RectF;


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 527
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lakr$c;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lakr$e;-><init>()V

    .line 561
    invoke-direct {p0, p1}, Lakr$c;->a(F)V

    .line 562
    invoke-direct {p0, p2}, Lakr$c;->b(F)V

    .line 563
    invoke-direct {p0, p3}, Lakr$c;->c(F)V

    .line 564
    invoke-direct {p0, p4}, Lakr$c;->d(F)V

    return-void
.end method

.method private a()F
    .locals 1

    .line 578
    iget v0, p0, Lakr$c;->a:F

    return v0
.end method

.method static synthetic a(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->e()F

    move-result p0

    return p0
.end method

.method private a(F)V
    .locals 0

    .line 594
    iput p1, p0, Lakr$c;->a:F

    return-void
.end method

.method static synthetic a(Lakr$c;F)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lakr$c;->e(F)V

    return-void
.end method

.method private b()F
    .locals 1

    .line 582
    iget v0, p0, Lakr$c;->b:F

    return v0
.end method

.method static synthetic b(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->f()F

    move-result p0

    return p0
.end method

.method private b(F)V
    .locals 0

    .line 598
    iput p1, p0, Lakr$c;->b:F

    return-void
.end method

.method static synthetic b(Lakr$c;F)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lakr$c;->f(F)V

    return-void
.end method

.method private c()F
    .locals 1

    .line 586
    iget v0, p0, Lakr$c;->c:F

    return v0
.end method

.method static synthetic c(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->a()F

    move-result p0

    return p0
.end method

.method private c(F)V
    .locals 0

    .line 602
    iput p1, p0, Lakr$c;->c:F

    return-void
.end method

.method private d()F
    .locals 1

    .line 590
    iget v0, p0, Lakr$c;->d:F

    return v0
.end method

.method static synthetic d(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->b()F

    move-result p0

    return p0
.end method

.method private d(F)V
    .locals 0

    .line 606
    iput p1, p0, Lakr$c;->d:F

    return-void
.end method

.method private e()F
    .locals 1

    .line 610
    iget v0, p0, Lakr$c;->e:F

    return v0
.end method

.method static synthetic e(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->c()F

    move-result p0

    return p0
.end method

.method private e(F)V
    .locals 0

    .line 618
    iput p1, p0, Lakr$c;->e:F

    return-void
.end method

.method private f()F
    .locals 1

    .line 614
    iget v0, p0, Lakr$c;->f:F

    return v0
.end method

.method static synthetic f(Lakr$c;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lakr$c;->d()F

    move-result p0

    return p0
.end method

.method private f(F)V
    .locals 0

    .line 622
    iput p1, p0, Lakr$c;->f:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 569
    iget-object v0, p0, Lakr$c;->g:Landroid/graphics/Matrix;

    .line 570
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 571
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 572
    sget-object v0, Lakr$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lakr$c;->a()F

    move-result v1

    invoke-direct {p0}, Lakr$c;->b()F

    move-result v2

    invoke-direct {p0}, Lakr$c;->c()F

    move-result v3

    invoke-direct {p0}, Lakr$c;->d()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 573
    sget-object v0, Lakr$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lakr$c;->e()F

    move-result v1

    invoke-direct {p0}, Lakr$c;->f()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 574
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
