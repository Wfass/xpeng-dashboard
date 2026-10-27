.class Lakr$1;
.super Lakr$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakr;->a(Landroid/graphics/Matrix;)Lakr$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Lakr;


# direct methods
.method constructor <init>(Lakr;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lakr$1;->c:Lakr;

    iput-object p2, p0, Lakr$1;->a:Ljava/util/List;

    iput-object p3, p0, Lakr$1;->b:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lakr$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lakb;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 262
    iget-object p1, p0, Lakr$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakr$f;

    .line 263
    iget-object v1, p0, Lakr$1;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Lakr$f;->a(Landroid/graphics/Matrix;Lakb;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
