.class Landroidx/transition/q$a$1;
.super Landroidx/transition/p;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/q$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/collection/a;

.field final synthetic b:Landroidx/transition/q$a;


# direct methods
.method constructor <init>(Landroidx/transition/q$a;Landroidx/collection/a;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/transition/q$a$1;->b:Landroidx/transition/q$a;

    iput-object p2, p0, Landroidx/transition/q$a$1;->a:Landroidx/collection/a;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/o;)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/transition/q$a$1;->a:Landroidx/collection/a;

    iget-object v1, p0, Landroidx/transition/q$a$1;->b:Landroidx/transition/q$a;

    iget-object v1, v1, Landroidx/transition/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method
