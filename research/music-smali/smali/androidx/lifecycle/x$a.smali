.class Landroidx/lifecycle/x$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j$a;

.field private final b:Landroidx/lifecycle/LifecycleRegistry;

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Landroidx/lifecycle/x$a;->c:Z

    .line 98
    iput-object p1, p0, Landroidx/lifecycle/x$a;->b:Landroidx/lifecycle/LifecycleRegistry;

    .line 99
    iput-object p2, p0, Landroidx/lifecycle/x$a;->a:Landroidx/lifecycle/j$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Landroidx/lifecycle/x$a;->c:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/lifecycle/x$a;->b:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/lifecycle/x$a;->a:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Landroidx/lifecycle/x$a;->c:Z

    :cond_0
    return-void
.end method
