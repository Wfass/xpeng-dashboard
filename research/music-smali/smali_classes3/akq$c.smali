.class final Lakq$c;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lakp;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lakq$b;

.field public final e:F


# direct methods
.method constructor <init>(Lakp;FLandroid/graphics/RectF;Lakq$b;Landroid/graphics/Path;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p4, p0, Lakq$c;->d:Lakq$b;

    .line 350
    iput-object p1, p0, Lakq$c;->a:Lakp;

    .line 351
    iput p2, p0, Lakq$c;->e:F

    .line 352
    iput-object p3, p0, Lakq$c;->c:Landroid/graphics/RectF;

    .line 353
    iput-object p5, p0, Lakq$c;->b:Landroid/graphics/Path;

    return-void
.end method
