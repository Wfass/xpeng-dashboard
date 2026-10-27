.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field private final a:Landroidx/lifecycle/g;


# direct methods
.method constructor <init>(Landroidx/lifecycle/g;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;)V
    .locals 3

    .line 31
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;ZLandroidx/lifecycle/q;)V

    .line 32
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/j$a;ZLandroidx/lifecycle/q;)V

    return-void
.end method
