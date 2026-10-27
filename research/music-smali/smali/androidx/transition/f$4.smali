.class Landroidx/transition/f$4;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lek$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/f;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lek;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/o;

.field final synthetic b:Landroidx/transition/f;


# direct methods
.method constructor <init>(Landroidx/transition/f;Landroidx/transition/o;)V
    .locals 0

    .line 268
    iput-object p1, p0, Landroidx/transition/f$4;->b:Landroidx/transition/f;

    iput-object p2, p0, Landroidx/transition/f$4;->a:Landroidx/transition/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/transition/f$4;->a:Landroidx/transition/o;

    invoke-virtual {v0}, Landroidx/transition/o;->l()V

    return-void
.end method
