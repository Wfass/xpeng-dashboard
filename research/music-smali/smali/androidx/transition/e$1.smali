.class Landroidx/transition/e$1;
.super Landroidx/transition/p;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Landroid/view/View;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/transition/e$1;->b:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/o;)V
    .locals 2

    .line 139
    iget-object v0, p0, Landroidx/transition/e$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/ae;->a(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Landroidx/transition/e$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/ae;->e(Landroid/view/View;)V

    .line 141
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method
