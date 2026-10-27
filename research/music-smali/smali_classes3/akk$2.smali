.class Lakk$2;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lakp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakk;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lakk;


# direct methods
.method constructor <init>(Lakk;F)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lakk$2;->b:Lakk;

    iput p2, p0, Lakk$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lakf;)Lakf;
    .locals 2

    .line 1162
    instance-of v0, p1, Lakn;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lake;

    iget v1, p0, Lakk$2;->a:F

    invoke-direct {v0, v1, p1}, Lake;-><init>(FLakf;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
