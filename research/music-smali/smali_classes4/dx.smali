.class public Ldx;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldx$a;
    }
.end annotation


# static fields
.field private static final a:Led;

.field private static final b:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, Lec;

    invoke-direct {v0}, Lec;-><init>()V

    sput-object v0, Ldx;->a:Led;

    goto :goto_0

    .line 52
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 53
    new-instance v0, Leb;

    invoke-direct {v0}, Leb;-><init>()V

    sput-object v0, Ldx;->a:Led;

    goto :goto_0

    .line 54
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 55
    new-instance v0, Lea;

    invoke-direct {v0}, Lea;-><init>()V

    sput-object v0, Ldx;->a:Led;

    goto :goto_0

    .line 56
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 57
    invoke-static {}, Ldz;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    sput-object v0, Ldx;->a:Led;

    goto :goto_0

    .line 59
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 60
    new-instance v0, Ldy;

    invoke-direct {v0}, Ldy;-><init>()V

    sput-object v0, Ldx;->a:Led;

    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Led;

    invoke-direct {v0}, Led;-><init>()V

    sput-object v0, Ldx;->a:Led;

    .line 69
    :goto_0
    new-instance v0, Landroidx/collection/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/d;-><init>(I)V

    sput-object v0, Ldx;->b:Landroidx/collection/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 176
    sget-object v0, Ldx;->a:Led;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Led;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-static {p1, p2, p4}, Ldx;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 180
    sget-object p2, Ldx;->b:Landroidx/collection/d;

    invoke-virtual {p2, p1, p0}, Landroidx/collection/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p0, :cond_1

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 229
    invoke-static {p0, p1, p2}, Ldx;->b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 235
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Let$b;I)Landroid/graphics/Typeface;
    .locals 1

    .line 193
    sget-object v0, Ldx;->a:Led;

    invoke-virtual {v0, p0, p1, p2, p3}, Led;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Let$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ldp$a;Landroid/content/res/Resources;IILds$c;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 125
    instance-of v3, v0, Ldp$d;

    if-eqz v3, :cond_5

    .line 126
    check-cast v0, Ldp$d;

    .line 129
    invoke-virtual {v0}, Ldp$d;->d()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Ldx;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, v3, v2}, Lds$c;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_0
    return-object v3

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_2

    .line 138
    invoke-virtual {v0}, Ldp$d;->b()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    if-eqz p7, :cond_4

    .line 141
    invoke-virtual {v0}, Ldp$d;->c()I

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_2
    move v10, v3

    .line 144
    invoke-static/range {p6 .. p6}, Lds$c;->a(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v11

    .line 145
    new-instance v12, Ldx$a;

    invoke-direct {v12, v1}, Ldx$a;-><init>(Lds$c;)V

    .line 146
    invoke-virtual {v0}, Ldp$d;->a()Ler;

    move-result-object v7

    move-object v6, p0

    move/from16 v8, p4

    invoke-static/range {v6 .. v12}, Let;->a(Landroid/content/Context;Ler;IZILandroid/os/Handler;Let$c;)Landroid/graphics/Typeface;

    move-result-object v0

    move-object v5, p2

    move/from16 v6, p4

    goto :goto_3

    .line 149
    :cond_5
    sget-object v3, Ldx;->a:Led;

    check-cast v0, Ldp$b;

    move-object v4, p0

    move-object v5, p2

    move/from16 v6, p4

    invoke-virtual {v3, p0, v0, p2, v6}, Led;->a(Landroid/content/Context;Ldp$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {v1, v0, v2}, Lds$c;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_3

    :cond_6
    const/4 v3, -0x3

    .line 155
    invoke-virtual {v1, v3, v2}, Lds$c;->a(ILandroid/os/Handler;)V

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 162
    sget-object v1, Ldx;->b:Landroidx/collection/d;

    invoke-static/range {p2 .. p4}, Ldx;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/collection/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    .line 82
    sget-object v0, Ldx;->b:Landroidx/collection/d;

    invoke-static {p0, p1, p2}, Ldx;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 107
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    .line 202
    sget-object v0, Ldx;->a:Led;

    invoke-virtual {v0, p1}, Led;->a(Landroid/graphics/Typeface;)Ldp$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    sget-object v0, Ldx;->a:Led;

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    invoke-virtual {v0, p0, p1, v1, p2}, Led;->a(Landroid/content/Context;Ldp$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
