.class public Landroidx/transition/b;
.super Landroidx/transition/s;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/transition/s;-><init>()V

    .line 40
    invoke-direct {p0}, Landroidx/transition/b;->s()V

    return-void
.end method

.method private s()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroidx/transition/b;->a(I)Landroidx/transition/s;

    .line 50
    new-instance v1, Landroidx/transition/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/e;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/b;->a(Landroidx/transition/o;)Landroidx/transition/s;

    move-result-object v1

    new-instance v2, Landroidx/transition/d;

    invoke-direct {v2}, Landroidx/transition/d;-><init>()V

    .line 51
    invoke-virtual {v1, v2}, Landroidx/transition/s;->a(Landroidx/transition/o;)Landroidx/transition/s;

    move-result-object v1

    new-instance v2, Landroidx/transition/e;

    invoke-direct {v2, v0}, Landroidx/transition/e;-><init>(I)V

    .line 52
    invoke-virtual {v1, v2}, Landroidx/transition/s;->a(Landroidx/transition/o;)Landroidx/transition/s;

    return-void
.end method
