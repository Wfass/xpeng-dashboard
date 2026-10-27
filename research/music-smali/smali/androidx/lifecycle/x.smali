.class public Landroidx/lifecycle/x;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/x$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleRegistry;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/x$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/n;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/LifecycleRegistry;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/x;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroidx/lifecycle/j$a;)V
    .locals 2

    .line 44
    iget-object v0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/x$a;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroidx/lifecycle/x$a;->run()V

    .line 47
    :cond_0
    new-instance v0, Landroidx/lifecycle/x$a;

    iget-object v1, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/x$a;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/j$a;)V

    iput-object v0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/x$a;

    .line 48
    iget-object p1, p0, Landroidx/lifecycle/x;->b:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/x$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 55
    sget-object v0, Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 63
    sget-object v0, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 72
    sget-object v0, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 80
    sget-object v0, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/j$a;)V

    .line 81
    sget-object v0, Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public e()Landroidx/lifecycle/j;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method
