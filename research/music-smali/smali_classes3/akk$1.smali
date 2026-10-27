.class Lakk$1;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lakq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakk;-><init>(Lakk$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakk;


# direct methods
.method constructor <init>(Lakk;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lakk$1;->a:Lakk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lakr;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 219
    iget-object v0, p0, Lakk$1;->a:Lakk;

    invoke-static {v0}, Lakk;->a(Lakk;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lakr;->a()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 220
    iget-object v0, p0, Lakk$1;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)[Lakr$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lakr;->a(Landroid/graphics/Matrix;)Lakr$f;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lakr;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 225
    iget-object v0, p0, Lakk$1;->a:Lakk;

    invoke-static {v0}, Lakk;->a(Lakk;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lakr;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 226
    iget-object v0, p0, Lakk$1;->a:Lakk;

    invoke-static {v0}, Lakk;->c(Lakk;)[Lakr$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lakr;->a(Landroid/graphics/Matrix;)Lakr$f;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
