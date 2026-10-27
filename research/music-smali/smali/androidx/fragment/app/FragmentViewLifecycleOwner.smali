.class Landroidx/fragment/app/FragmentViewLifecycleOwner;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/ad;
.implements Landroidx/lifecycle/i;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# instance fields
.field private mDefaultFactory:Landroidx/lifecycle/aa$b;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mSavedStateRegistryController:Landroidx/savedstate/c;

.field private final mViewModelStore:Landroidx/lifecycle/ac;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ac;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 45
    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/c;

    .line 48
    iput-object p1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    .line 49
    iput-object p2, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ac;

    return-void
.end method


# virtual methods
.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/aa$b;
    .locals 3

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/aa$b;

    move-result-object v0

    .line 104
    iget-object v1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 113
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 114
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    .line 117
    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    new-instance v1, Landroidx/lifecycle/w;

    iget-object v2, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    .line 123
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/w;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    .line 126
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 80
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/b;
    .locals 1

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 133
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {v0}, Landroidx/savedstate/c;->a()Landroidx/savedstate/b;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ac;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 56
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ac;

    return-object v0
.end method

.method handleLifecycleEvent(Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method initialize()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 65
    invoke-static {p0}, Landroidx/savedstate/c;->a(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/c;

    :cond_0
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method performRestore(Landroid/os/Bundle;)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method performSave(Landroid/os/Bundle;)V
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method setCurrentState(Landroidx/lifecycle/j$b;)V
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/j$b;)V

    return-void
.end method
