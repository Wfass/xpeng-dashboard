.class Landroidx/transition/s$1;
.super Landroidx/transition/p;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/s;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/o;

.field final synthetic b:Landroidx/transition/s;


# direct methods
.method constructor <init>(Landroidx/transition/s;Landroidx/transition/o;)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroidx/transition/s$1;->b:Landroidx/transition/s;

    iput-object p2, p0, Landroidx/transition/s$1;->a:Landroidx/transition/o;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/o;)V
    .locals 1

    .line 506
    iget-object v0, p0, Landroidx/transition/s$1;->a:Landroidx/transition/o;

    invoke-virtual {v0}, Landroidx/transition/o;->e()V

    .line 507
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method
