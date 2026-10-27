.class Landroidx/lifecycle/LifecycleRegistry$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/j$b;

.field b:Landroidx/lifecycle/l;


# direct methods
.method constructor <init>(Landroidx/lifecycle/m;Landroidx/lifecycle/j$b;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroidx/lifecycle/o;->a(Ljava/lang/Object;)Landroidx/lifecycle/l;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry$a;->b:Landroidx/lifecycle/l;

    .line 348
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V
    .locals 2

    .line 352
    invoke-virtual {p2}, Landroidx/lifecycle/j$a;->a()Landroidx/lifecycle/j$b;

    move-result-object v0

    .line 353
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/j$b;Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    .line 354
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$a;->b:Landroidx/lifecycle/l;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/l;->onStateChanged(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V

    .line 355
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    return-void
.end method
