.class public Lakk;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Laks;
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakk$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "akk"

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private c:Lakk$a;

.field private final d:[Lakr$f;

.field private final e:[Lakr$f;

.field private final f:Ljava/util/BitSet;

.field private g:Z

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/Region;

.field private final n:Landroid/graphics/Region;

.field private o:Lakp;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Lakb;

.field private final s:Lakq$b;

.field private final t:Lakq;

.field private u:Landroid/graphics/PorterDuffColorFilter;

.field private v:Landroid/graphics/PorterDuffColorFilter;

.field private final w:Landroid/graphics/RectF;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lakk;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    new-instance v0, Lakp;

    invoke-direct {v0}, Lakp;-><init>()V

    invoke-direct {p0, v0}, Lakk;-><init>(Lakp;)V

    return-void
.end method

.method private constructor <init>(Lakk$a;)V
    .locals 3

    .line 205
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 114
    new-array v1, v0, [Lakr$f;

    iput-object v1, p0, Lakk;->d:[Lakr$f;

    .line 115
    new-array v0, v0, [Lakr$f;

    iput-object v0, p0, Lakk;->e:[Lakr$f;

    .line 116
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lakk;->f:Ljava/util/BitSet;

    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lakk;->h:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lakk;->i:Landroid/graphics/Path;

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lakk;->j:Landroid/graphics/Path;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lakk;->k:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lakk;->l:Landroid/graphics/RectF;

    .line 125
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lakk;->m:Landroid/graphics/Region;

    .line 126
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lakk;->n:Landroid/graphics/Region;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lakk;->p:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lakk;->q:Landroid/graphics/Paint;

    .line 132
    new-instance v0, Lakb;

    invoke-direct {v0}, Lakb;-><init>()V

    iput-object v0, p0, Lakk;->r:Lakb;

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 139
    invoke-static {}, Lakq;->a()Lakq;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lakq;

    invoke-direct {v0}, Lakq;-><init>()V

    :goto_0
    iput-object v0, p0, Lakk;->t:Lakq;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lakk;->w:Landroid/graphics/RectF;

    .line 147
    iput-boolean v1, p0, Lakk;->x:Z

    .line 206
    iput-object p1, p0, Lakk;->c:Lakk$a;

    .line 207
    iget-object p1, p0, Lakk;->q:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    iget-object p1, p0, Lakk;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    sget-object p1, Lakk;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    sget-object p1, Lakk;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 211
    invoke-direct {p0}, Lakk;->g()Z

    .line 212
    invoke-virtual {p0}, Lakk;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lakk;->a([I)Z

    .line 214
    new-instance p1, Lakk$1;

    invoke-direct {p1, p0}, Lakk$1;-><init>(Lakk;)V

    iput-object p1, p0, Lakk;->s:Lakq$b;

    return-void
.end method

.method synthetic constructor <init>(Lakk$a;Lakk$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lakk;-><init>(Lakk$a;)V

    return-void
.end method

.method public constructor <init>(Lakp;)V
    .locals 2

    .line 202
    new-instance v0, Lakk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lakk$a;-><init>(Lakp;Lajm;)V

    invoke-direct {p0, v0}, Lakk;-><init>(Lakk$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 189
    invoke-static {p1, p2, p3, p4}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lakp$a;

    move-result-object p1

    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    invoke-direct {p0, p1}, Lakk;-><init>(Lakp;)V

    return-void
.end method

.method private static a(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(Landroid/content/Context;F)Lakk;
    .locals 2

    .line 170
    sget v0, Laiv$b;->colorSurface:I

    const-class v1, Lakk;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {p0, v0, v1}, Lajj;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 173
    new-instance v1, Lakk;

    invoke-direct {v1}, Lakk;-><init>()V

    .line 174
    invoke-virtual {v1, p0}, Lakk;->a(Landroid/content/Context;)V

    .line 175
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 176
    invoke-virtual {v1, p1}, Lakk;->r(F)V

    return-object v1
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lakk;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    goto :goto_1

    .line 1244
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lakk;->a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1266
    invoke-virtual {p0}, Lakk;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Lakk;->D(I)I

    move-result p1

    .line 1270
    :cond_0
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3
.end method

.method private a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_0

    .line 1252
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1253
    invoke-virtual {p0, p1}, Lakk;->D(I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 1255
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lakk;)Ljava/util/BitSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lakk;->f:Ljava/util/BitSet;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 712
    invoke-virtual {p0}, Lakk;->X()F

    move-result v0

    .line 713
    iget-object v1, p0, Lakk;->c:Lakk$a;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lakk$a;->r:I

    .line 714
    iget-object v1, p0, Lakk;->c:Lakk$a;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lakk$a;->s:I

    .line 716
    invoke-direct {p0}, Lakk;->g()Z

    .line 717
    invoke-direct {p0}, Lakk;->b()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 971
    invoke-direct {p0}, Lakk;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 976
    invoke-direct {p0, p1}, Lakk;->d(Landroid/graphics/Canvas;)V

    .line 977
    iget-boolean v0, p0, Lakk;->x:Z

    if-nez v0, :cond_1

    .line 978
    invoke-direct {p0, p1}, Lakk;->e(Landroid/graphics/Canvas;)V

    .line 979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lakk;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 986
    iget-object v1, p0, Lakk;->w:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 995
    iget-object v2, p0, Lakk;->w:Landroid/graphics/RectF;

    .line 997
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget v3, v3, Lakk$a;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lakk;->w:Landroid/graphics/RectF;

    .line 998
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lakk;->c:Lakk$a;

    iget v4, v4, Lakk$a;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 996
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1000
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1004
    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lakk;->c:Lakk$a;

    iget v5, v5, Lakk$a;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 1005
    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lakk;->c:Lakk$a;

    iget v5, v5, Lakk$a;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    .line 1006
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1007
    invoke-direct {p0, v3}, Lakk;->e(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    .line 1008
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1011
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 989
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lakp;Landroid/graphics/RectF;)V
    .locals 1

    .line 1038
    invoke-virtual {p4, p5}, Lakp;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p4}, Lakp;->g()Lakf;

    move-result-object p3

    invoke-interface {p3, p5}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lakk;->c:Lakk$a;

    iget p4, p4, Lakk$a;->k:F

    mul-float/2addr p3, p4

    .line 1042
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lakk;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lakk;->g:Z

    return p1
.end method

.method private a([I)Z
    .locals 4

    .line 1296
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lakk;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1298
    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget-object v2, v2, Lakk$a;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1300
    iget-object v0, p0, Lakk;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1305
    :goto_0
    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget-object v2, v2, Lakk$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1306
    iget-object v2, p0, Lakk;->q:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1307
    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget-object v3, v3, Lakk$a;->e:Landroid/content/res/ColorStateList;

    .line 1308
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 1310
    iget-object v0, p0, Lakk;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    :cond_1
    return v0
.end method

.method private b()V
    .locals 0

    .line 863
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1049
    iget-object v2, p0, Lakk;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lakk;->i:Landroid/graphics/Path;

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v4, v0, Lakk$a;->a:Lakp;

    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lakk;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lakp;Landroid/graphics/RectF;)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 5

    .line 1201
    invoke-virtual {p0, p1, p2}, Lakk;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1203
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lakk;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1205
    iget-object v0, p0, Lakk;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lakk;->c:Lakk$a;

    iget v1, v1, Lakk$a;->j:F

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->j:F

    .line 1206
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    .line 1205
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1207
    iget-object p1, p0, Lakk;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1211
    :cond_0
    iget-object p1, p0, Lakk;->w:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static synthetic b(Lakk;)[Lakr$f;
    .locals 0

    .line 75
    iget-object p0, p0, Lakk;->d:[Lakr$f;

    return-object p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1053
    iget-object v2, p0, Lakk;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Lakk;->j:Landroid/graphics/Path;

    iget-object v4, p0, Lakk;->o:Lakp;

    .line 1054
    invoke-direct {p0}, Lakk;->i()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 1053
    invoke-direct/range {v0 .. v5}, Lakk;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lakp;Landroid/graphics/RectF;)V

    return-void
.end method

.method private c()Z
    .locals 3

    .line 916
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->r:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 918
    invoke-virtual {p0}, Lakk;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic c(Lakk;)[Lakr$f;
    .locals 0

    .line 75
    iget-object p0, p0, Lakk;->e:[Lakr$f;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1059
    invoke-virtual {p0}, Lakk;->aa()I

    move-result v0

    .line 1060
    invoke-virtual {p0}, Lakk;->ab()I

    move-result v1

    .line 1065
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lakk;->x:Z

    if-eqz v2, :cond_0

    .line 1068
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1069
    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget v3, v3, Lakk$a;->r:I

    neg-int v3, v3

    iget-object v4, p0, Lakk;->c:Lakk$a;

    iget v4, v4, Lakk$a;->r:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1070
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1071
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    .line 1076
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 923
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1087
    iget-object v0, p0, Lakk;->f:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 1088
    sget-object v0, Lakk;->a:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->s:I

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lakk;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lakk;->r:Lakb;

    invoke-virtual {v1}, Lakb;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1099
    iget-object v1, p0, Lakk;->d:[Lakr$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lakk;->r:Lakb;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget v3, v3, Lakk$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lakr$f;->a(Lakb;ILandroid/graphics/Canvas;)V

    .line 1100
    iget-object v1, p0, Lakk;->e:[Lakr$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lakk;->r:Lakb;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget v3, v3, Lakk$a;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lakr$f;->a(Lakb;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_2
    iget-boolean v0, p0, Lakk;->x:Z

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p0}, Lakk;->aa()I

    move-result v0

    .line 1105
    invoke-virtual {p0}, Lakk;->ab()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 1107
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1108
    iget-object v2, p0, Lakk;->i:Landroid/graphics/Path;

    sget-object v3, Lakk;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1109
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private e()Z
    .locals 2

    .line 929
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lakk;->q:Landroid/graphics/Paint;

    .line 931
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 5

    .line 1152
    invoke-direct {p0}, Lakk;->h()F

    move-result v0

    neg-float v0, v0

    .line 1154
    invoke-virtual {p0}, Lakk;->M()Lakp;

    move-result-object v1

    new-instance v2, Lakk$2;

    invoke-direct {v2, p0, v0}, Lakk$2;-><init>(Lakk;F)V

    .line 1155
    invoke-virtual {v1, v2}, Lakp;->a(Lakp$b;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lakk;->o:Lakp;

    .line 1168
    iget-object v0, p0, Lakk;->t:Lakq;

    iget-object v1, p0, Lakk;->o:Lakp;

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->k:F

    .line 1171
    invoke-direct {p0}, Lakk;->i()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lakk;->j:Landroid/graphics/Path;

    .line 1168
    invoke-virtual {v0, v1, v2, v3, v4}, Lakq;->a(Lakp;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private g()Z
    .locals 7

    .line 1215
    iget-object v0, p0, Lakk;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 1216
    iget-object v1, p0, Lakk;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 1217
    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget-object v2, v2, Lakk$a;->g:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget-object v3, v3, Lakk$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lakk;->p:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 1218
    invoke-direct {p0, v2, v3, v4, v5}, Lakk;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lakk;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 1223
    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget-object v2, v2, Lakk$a;->f:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget-object v3, v3, Lakk$a;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lakk;->q:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 1224
    invoke-direct {p0, v2, v3, v4, v6}, Lakk;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lakk;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 1229
    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget-boolean v2, v2, Lakk$a;->u:Z

    if-eqz v2, :cond_0

    .line 1230
    iget-object v2, p0, Lakk;->r:Lakb;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget-object v3, v3, Lakk$a;->g:Landroid/content/res/ColorStateList;

    .line 1231
    invoke-virtual {p0}, Lakk;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1230
    invoke-virtual {v2, v3}, Lakb;->a(I)V

    .line 1233
    :cond_0
    iget-object v2, p0, Lakk;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lakk;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 1234
    invoke-static {v1, v0}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private h()F
    .locals 2

    .line 1319
    invoke-direct {p0}, Lakk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lakk;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Landroid/graphics/RectF;
    .locals 2

    .line 1327
    iget-object v0, p0, Lakk;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1328
    invoke-direct {p0}, Lakk;->h()F

    move-result v0

    .line 1329
    iget-object v1, p0, Lakk;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 1330
    iget-object v0, p0, Lakk;->l:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method protected D(I)I
    .locals 2

    .line 606
    invoke-virtual {p0}, Lakk;->X()F

    move-result v0

    invoke-virtual {p0}, Lakk;->U()F

    move-result v1

    add-float/2addr v0, v1

    .line 607
    iget-object v1, p0, Lakk;->c:Lakk$a;

    iget-object v1, v1, Lakk$a;->b:Lajm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lakk;->c:Lakk$a;

    iget-object v1, v1, Lakk$a;->b:Lajm;

    .line 608
    invoke-virtual {v1, p1, v0}, Lajm;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public E(I)V
    .locals 1

    .line 796
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->t:I

    if-eq v0, p1, :cond_0

    .line 797
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->t:I

    .line 798
    invoke-direct {p0}, Lakk;->b()V

    :cond_0
    return-void
.end method

.method public F(I)V
    .locals 1

    .line 890
    iget-object v0, p0, Lakk;->r:Lakb;

    invoke-virtual {v0, p1}, Lakb;->a(I)V

    .line 891
    iget-object p1, p0, Lakk;->c:Lakk$a;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lakk$a;->u:Z

    .line 892
    invoke-direct {p0}, Lakk;->b()V

    return-void
.end method

.method public M()Lakp;
    .locals 1

    .line 271
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    return-object v0
.end method

.method public N()Landroid/content/res/ColorStateList;
    .locals 1

    .line 317
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public O()Landroid/content/res/ColorStateList;
    .locals 1

    .line 339
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public P()Landroid/content/res/ColorStateList;
    .locals 1

    .line 361
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public Q()F
    .locals 1

    .line 427
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->l:F

    return v0
.end method

.method protected R()Landroid/graphics/RectF;
    .locals 2

    .line 473
    iget-object v0, p0, Lakk;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 474
    iget-object v0, p0, Lakk;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public S()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->b:Lajm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->b:Lajm;

    .line 584
    invoke-virtual {v0}, Lajm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T()F
    .locals 1

    .line 620
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->k:F

    return v0
.end method

.method public U()F
    .locals 1

    .line 640
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->n:F

    return v0
.end method

.method public V()F
    .locals 1

    .line 657
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->o:F

    return v0
.end method

.method public W()F
    .locals 1

    .line 678
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->p:F

    return v0
.end method

.method public X()F
    .locals 2

    .line 699
    invoke-virtual {p0}, Lakk;->V()F

    move-result v0

    invoke-virtual {p0}, Lakk;->W()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public Y()I
    .locals 1

    .line 808
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->r:I

    return v0
.end method

.method public Z()Z
    .locals 2

    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 828
    invoke-virtual {p0}, Lakk;->ag()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(FI)V
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lakk;->n(F)V

    .line 407
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lakk;->n(F)V

    .line 418
    invoke-virtual {p0, p2}, Lakk;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 524
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lakk;->c:Lakk$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lakk$a;->i:Landroid/graphics/Rect;

    .line 528
    :cond_0
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 529
    invoke-virtual {p0}, Lakk;->invalidateSelf()V

    return-void
.end method

.method public a(Lakf;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    invoke-virtual {v0, p1}, Lakp;->a(Lakf;)Lakp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lakk;->c:Lakk$a;

    new-instance v1, Lajm;

    invoke-direct {v1, p1}, Lajm;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lakk$a;->b:Lajm;

    .line 600
    invoke-direct {p0}, Lakk;->a()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    .line 1028
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v5, v0, Lakk$a;->a:Lakp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lakk;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lakp;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1140
    iget-object v0, p0, Lakk;->t:Lakq;

    iget-object v1, p0, Lakk;->c:Lakk$a;

    iget-object v1, v1, Lakk$a;->a:Lakp;

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->k:F

    iget-object v4, p0, Lakk;->s:Lakq$b;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lakq;->a(Lakp;FLandroid/graphics/RectF;Lakq$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public aa()I
    .locals 4

    .line 1115
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->t:I

    int-to-double v2, v2

    .line 1117
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public ab()I
    .locals 4

    .line 1122
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->s:I

    int-to-double v0, v0

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->t:I

    int-to-double v2, v2

    .line 1124
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public ac()F
    .locals 2

    .line 1335
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    .line 1337
    invoke-virtual {v0}, Lakp;->f()Lakf;

    move-result-object v0

    .line 1338
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public ad()F
    .locals 2

    .line 1343
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    .line 1345
    invoke-virtual {v0}, Lakp;->g()Lakf;

    move-result-object v0

    .line 1346
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public ae()F
    .locals 2

    .line 1351
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    .line 1353
    invoke-virtual {v0}, Lakp;->i()Lakf;

    move-result-object v0

    .line 1354
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public af()F
    .locals 2

    .line 1359
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    .line 1361
    invoke-virtual {v0}, Lakp;->h()Lakf;

    move-result-object v0

    .line 1362
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public ag()Z
    .locals 2

    .line 1373
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakp;->a(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 942
    iget-object v0, p0, Lakk;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lakk;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 943
    iget-object v0, p0, Lakk;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 944
    iget-object v1, p0, Lakk;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->m:I

    invoke-static {v0, v2}, Lakk;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 946
    iget-object v1, p0, Lakk;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lakk;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 947
    iget-object v1, p0, Lakk;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Lakk;->c:Lakk$a;

    iget v2, v2, Lakk$a;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 949
    iget-object v1, p0, Lakk;->q:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 950
    iget-object v2, p0, Lakk;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Lakk;->c:Lakk$a;

    iget v3, v3, Lakk$a;->m:I

    invoke-static {v1, v3}, Lakk;->a(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 952
    iget-boolean v2, p0, Lakk;->g:Z

    if-eqz v2, :cond_0

    .line 953
    invoke-direct {p0}, Lakk;->f()V

    .line 954
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lakk;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    .line 955
    iput-boolean v2, p0, Lakk;->g:Z

    .line 958
    :cond_0
    invoke-direct {p0, p1}, Lakk;->a(Landroid/graphics/Canvas;)V

    .line 959
    invoke-direct {p0}, Lakk;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    invoke-direct {p0, p1}, Lakk;->b(Landroid/graphics/Canvas;)V

    .line 962
    :cond_1
    invoke-direct {p0}, Lakk;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-direct {p0, p1}, Lakk;->c(Landroid/graphics/Canvas;)V

    .line 966
    :cond_2
    iget-object p1, p0, Lakk;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 967
    iget-object p1, p0, Lakk;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    .line 306
    invoke-virtual {p0}, Lakk;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 754
    iput-boolean p1, p0, Lakk;->x:Z

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 234
    iget-object v0, p0, Lakk;->c:Lakk$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1178
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lakk;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Lakk;->ac()F

    move-result v0

    iget-object v1, p0, Lakk;->c:Lakk$a;

    iget v1, v1, Lakk$a;->k:F

    mul-float/2addr v0, v1

    .line 1185
    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1189
    :cond_1
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lakk;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1190
    iget-object v0, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 1192
    :cond_2
    :try_start_0
    iget-object v0, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 507
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 511
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 463
    invoke-virtual {p0}, Lakk;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lakk;->m:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 465
    invoke-virtual {p0}, Lakk;->R()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lakk;->i:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lakk;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 466
    iget-object v0, p0, Lakk;->n:Landroid/graphics/Region;

    iget-object v1, p0, Lakk;->i:Landroid/graphics/Path;

    iget-object v2, p0, Lakk;->m:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 467
    iget-object v0, p0, Lakk;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lakk;->n:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 468
    iget-object v0, p0, Lakk;->m:Landroid/graphics/Region;

    return-object v0
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 327
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->e:Landroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Lakk;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lakk;->g:Z

    .line 855
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1275
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->g:Landroid/content/res/ColorStateList;

    .line 1276
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->f:Landroid/content/res/ColorStateList;

    .line 1277
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->e:Landroid/content/res/ColorStateList;

    .line 1278
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->d:Landroid/content/res/ColorStateList;

    .line 1279
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 240
    new-instance v0, Lakk$a;

    iget-object v1, p0, Lakk;->c:Lakk$a;

    invoke-direct {v0, v1}, Lakk$a;-><init>(Lakk$a;)V

    .line 241
    iput-object v0, p0, Lakk;->c:Lakk$a;

    return-object p0
.end method

.method public n(F)V
    .locals 1

    .line 436
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->l:F

    .line 437
    invoke-virtual {p0}, Lakk;->invalidateSelf()V

    return-void
.end method

.method public o(F)V
    .locals 1

    .line 479
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->a:Lakp;

    invoke-virtual {v0, p1}, Lakp;->a(F)Lakp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lakk;->g:Z

    .line 937
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1284
    invoke-direct {p0, p1}, Lakk;->a([I)Z

    move-result p1

    .line 1285
    invoke-direct {p0}, Lakk;->g()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1288
    invoke-virtual {p0}, Lakk;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public p(F)V
    .locals 1

    .line 631
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->k:F

    const/4 p1, 0x1

    .line 633
    iput-boolean p1, p0, Lakk;->g:Z

    .line 634
    invoke-virtual {p0}, Lakk;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 1

    .line 645
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->n:F

    .line 647
    invoke-direct {p0}, Lakk;->a()V

    :cond_0
    return-void
.end method

.method public r(F)V
    .locals 1

    .line 666
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->o:F

    .line 668
    invoke-direct {p0}, Lakk;->a()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 449
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget v0, v0, Lakk$a;->m:I

    if-eq v0, p1, :cond_0

    .line 450
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput p1, v0, Lakk$a;->m:I

    .line 451
    invoke-direct {p0}, Lakk;->b()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->c:Landroid/graphics/ColorFilter;

    .line 458
    invoke-direct {p0}, Lakk;->b()V

    return-void
.end method

.method public setShapeAppearanceModel(Lakp;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->a:Lakp;

    .line 259
    invoke-virtual {p0}, Lakk;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 376
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lakk;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->g:Landroid/content/res/ColorStateList;

    .line 354
    invoke-direct {p0}, Lakk;->g()Z

    .line 355
    invoke-direct {p0}, Lakk;->b()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iget-object v0, v0, Lakk$a;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 345
    iget-object v0, p0, Lakk;->c:Lakk$a;

    iput-object p1, v0, Lakk$a;->h:Landroid/graphics/PorterDuff$Mode;

    .line 346
    invoke-direct {p0}, Lakk;->g()Z

    .line 347
    invoke-direct {p0}, Lakk;->b()V

    :cond_0
    return-void
.end method
