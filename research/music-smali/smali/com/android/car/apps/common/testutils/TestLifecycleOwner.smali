.class public Lcom/android/car/apps/common/testutils/TestLifecycleOwner;
.super Lche;
.source "TestLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field private final mRegistry:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lche;-><init>()V

    .line 34
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Lcom/android/car/apps/common/testutils/TestLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method protected after()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/car/apps/common/testutils/TestLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/j$b;)V

    .line 51
    invoke-super {p0}, Lche;->after()V

    return-void
.end method

.method protected before()V
    .locals 2

    .line 44
    invoke-super {p0}, Lche;->before()V

    .line 45
    iget-object v0, p0, Lcom/android/car/apps/common/testutils/TestLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/car/apps/common/testutils/TestLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public markState(Landroidx/lifecycle/j$b;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/car/apps/common/testutils/TestLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/j$b;)V

    return-void
.end method
