.class public final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "NavBackStackEntry.java"

# interfaces
.implements Landroidx/lifecycle/ad;
.implements Landroidx/lifecycle/i;
.implements Landroidx/lifecycle/n;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntry$b;,
        Landroidx/navigation/NavBackStackEntry$a;
    }
.end annotation


# instance fields
.field private mArgs:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mDefaultFactory:Landroidx/lifecycle/aa$b;

.field private final mDestination:Landroidx/navigation/i;

.field private mHostLifecycle:Landroidx/lifecycle/j$b;

.field final mId:Ljava/util/UUID;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private mMaxLifecycle:Landroidx/lifecycle/j$b;

.field private mNavControllerViewModel:Landroidx/navigation/f;

.field private mSavedStateHandle:Landroidx/lifecycle/v;

.field private final mSavedStateRegistryController:Landroidx/savedstate/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;)V
    .locals 8

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 73
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/navigation/i;Landroid/os/Bundle;Landroidx/lifecycle/n;Landroidx/navigation/f;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 58
    invoke-static {p0}, Landroidx/savedstate/c;->a(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateRegistryController:Landroidx/savedstate/c;

    .line 63
    sget-object v0, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mHostLifecycle:Landroidx/lifecycle/j$b;

    .line 64
    sget-object v0, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mMaxLifecycle:Landroidx/lifecycle/j$b;

    .line 83
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mContext:Landroid/content/Context;

    .line 84
    iput-object p6, p0, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    .line 85
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/i;

    .line 86
    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    .line 87
    iput-object p5, p0, Landroidx/navigation/NavBackStackEntry;->mNavControllerViewModel:Landroidx/navigation/f;

    .line 88
    iget-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {p1, p7}, Landroidx/savedstate/c;->a(Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    .line 90
    invoke-interface {p4}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mHostLifecycle:Landroidx/lifecycle/j$b;

    :cond_0
    return-void
.end method

.method private static getStateAfter(Landroidx/lifecycle/j$a;)Landroidx/lifecycle/j$b;
    .locals 3

    .line 211
    sget-object v0, Landroidx/navigation/NavBackStackEntry$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/j$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    sget-object p0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    return-object p0

    .line 219
    :pswitch_1
    sget-object p0, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    return-object p0

    .line 217
    :pswitch_2
    sget-object p0, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    return-object p0

    .line 214
    :pswitch_3
    sget-object p0, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/aa$b;
    .locals 3

    .line 174
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroidx/lifecycle/w;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/w;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDefaultFactory:Landroidx/lifecycle/aa$b;

    return-object v0
.end method

.method public getDestination()Landroidx/navigation/i;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/i;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method getMaxLifecycle()Landroidx/lifecycle/j$b;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mMaxLifecycle:Landroidx/lifecycle/j$b;

    return-object v0
.end method

.method public getSavedStateHandle()Landroidx/lifecycle/v;
    .locals 3

    .line 200
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateHandle:Landroidx/lifecycle/v;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroidx/lifecycle/aa;

    new-instance v1, Landroidx/navigation/NavBackStackEntry$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/navigation/NavBackStackEntry$a;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/aa;-><init>(Landroidx/lifecycle/ad;Landroidx/lifecycle/aa$b;)V

    const-class v1, Landroidx/navigation/NavBackStackEntry$b;

    .line 203
    invoke-virtual {v0, v1}, Landroidx/lifecycle/aa;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry$b;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry$b;->b()Landroidx/lifecycle/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateHandle:Landroidx/lifecycle/v;

    .line 205
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateHandle:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/b;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {v0}, Landroidx/savedstate/c;->a()Landroidx/savedstate/b;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ac;
    .locals 2

    .line 163
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mNavControllerViewModel:Landroidx/navigation/f;

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroidx/navigation/f;->b(Ljava/util/UUID;)Landroidx/lifecycle/ac;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleLifecycleEvent(Landroidx/lifecycle/j$a;)V
    .locals 0

    .line 139
    invoke-static {p1}, Landroidx/navigation/NavBackStackEntry;->getStateAfter(Landroidx/lifecycle/j$a;)Landroidx/lifecycle/j$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mHostLifecycle:Landroidx/lifecycle/j$b;

    .line 140
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    return-void
.end method

.method replaceArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mSavedStateRegistryController:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method setMaxLifecycle(Landroidx/lifecycle/j$b;)V
    .locals 0

    .line 129
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mMaxLifecycle:Landroidx/lifecycle/j$b;

    .line 130
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    return-void
.end method

.method updateState()V
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mHostLifecycle:Landroidx/lifecycle/j$b;

    invoke-virtual {v0}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mMaxLifecycle:Landroidx/lifecycle/j$b;

    invoke-virtual {v1}, Landroidx/lifecycle/j$b;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mHostLifecycle:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/j$b;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mMaxLifecycle:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/j$b;)V

    :goto_0
    return-void
.end method
