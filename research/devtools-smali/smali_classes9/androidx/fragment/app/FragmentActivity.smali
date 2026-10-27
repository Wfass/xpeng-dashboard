.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$HostCallbacks;,
        Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroidx/fragment/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z

.field private mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 83
    new-instance v0, Landroidx/fragment/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Landroidx/fragment/app/FragmentController;->createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 109
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mReallyStopped:Z

    .line 982
    return-void
.end method

.method private allocateRequestIndex(Landroidx/fragment/app/Fragment;)I
    .locals 3

    .line 944
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 949
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    iget v2, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 950
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 954
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 955
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 956
    iget p1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 959
    return v0

    .line 945
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkForValidRequestCode(I)V
    .locals 1

    .line 830
    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    .line 833
    return-void

    .line 831
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 1076
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 1077
    if-nez v0, :cond_0

    .line 1078
    return-void
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 4

    .line 1081
    nop

    .line 1082
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 1083
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1084
    if-nez v1, :cond_0

    .line 1085
    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 1089
    const/4 v0, 0x1

    .line 1092
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1093
    if-eqz v1, :cond_2

    .line 1094
    invoke-static {v1, p1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1096
    :cond_2
    goto :goto_0

    .line 1097
    :cond_3
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method doReallyStop(Z)V
    .locals 1

    .line 715
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mReallyStopped:Z

    .line 717
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentActivity;->mRetaining:Z

    .line 718
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onReallyStop()V

    .line 721
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 700
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/app/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 701
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 710
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 669
    nop

    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 671
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 322
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 312
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 154
    shr-int/lit8 v0, p1, 0x10

    .line 155
    if-eqz v0, :cond_2

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 158
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 160
    if-nez v1, :cond_0

    .line 161
    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 165
    if-nez v0, :cond_1

    .line 166
    const-string p1, "FragmentActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_1
    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    :goto_0
    return-void

    .line 174
    :cond_2
    invoke-static {}, Landroidx/core/app/ActivityCompat;->getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    return-void

    .line 180
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 747
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 189
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    .line 191
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :cond_1
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onBackPressed()V

    .line 201
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 292
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 293
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 294
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentController;->attachHost(Landroidx/fragment/app/Fragment;)V

    .line 333
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 335
    nop

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    iget-object v2, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 340
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 341
    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 342
    iget-object v4, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    nop

    :cond_1
    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 345
    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    const-string v0, "android:support:next_request_index"

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 348
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 349
    const-string v1, "android:support:request_fragment_who"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 350
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 354
    :cond_2
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 355
    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 356
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    if-nez p1, :cond_5

    .line 363
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    .line 364
    iput v2, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 367
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentController;->dispatchCreate()V

    .line 368
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 375
    if-nez p1, :cond_0

    .line 376
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 377
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 378
    return p1

    .line 380
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 385
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/app/ComponentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 389
    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    .line 396
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 411
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onDestroy()V

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->doReallyStop(Z)V

    .line 415
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRetaining:Z

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 419
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchDestroy()V

    .line 420
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 427
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onLowMemory()V

    .line 428
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchLowMemory()V

    .line 429
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 436
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 p1, 0x1

    return p1

    .line 440
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 448
    const/4 p1, 0x0

    return p1

    .line 445
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 442
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 269
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 270
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 491
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 492
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 493
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 457
    if-eqz p1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 462
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 463
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 470
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onPause()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 472
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 476
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchPause()V

    .line 477
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 285
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 525
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onPostResume()V

    .line 526
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 528
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 529
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 546
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 547
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 548
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 549
    return p1

    .line 551
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method onReallyStop()V
    .locals 1

    .line 731
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchReallyStop()V

    .line 732
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 870
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 871
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 872
    if-eqz v0, :cond_2

    .line 873
    add-int/lit8 v0, v0, -0x1

    .line 875
    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 876
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 877
    if-nez v2, :cond_0

    .line 878
    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 882
    if-nez v0, :cond_1

    .line 883
    const-string p1, "FragmentActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_1
    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 888
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 514
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onResume()V

    .line 515
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 517
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 518
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 538
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchResume()V

    .line 539
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 660
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 569
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->doReallyStop(Z)V

    .line 573
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 575
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentController;->retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 577
    if-nez v1, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_1
    new-instance v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 582
    iput-object v0, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    iput-object v0, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 584
    iput-object v1, v2, Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 585
    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 593
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 594
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 595
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 603
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 604
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 605
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 606
    iget-object v3, p0, Landroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_1
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 609
    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 611
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 618
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onStart()V

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 621
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mReallyStopped:Z

    .line 622
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 625
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 626
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchActivityCreated()V

    .line 629
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 630
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 634
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStart()V

    .line 635
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 500
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 501
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 642
    invoke-super {p0}, Landroidx/core/app/ComponentActivity;->onStop()V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 645
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 646
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 648
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentController;->dispatchStop()V

    .line 649
    return-void
.end method

.method requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    .line 967
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 968
    invoke-static {p0, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 969
    return-void

    .line 971
    :cond_0
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 973
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 974
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    .line 975
    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 979
    nop

    .line 980
    return-void

    .line 978
    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw p1
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 0

    .line 225
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 226
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 0

    .line 238
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V

    .line 239
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 774
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 775
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 776
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 779
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 780
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 787
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 788
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 789
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 792
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 793
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 895
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 896
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 905
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 906
    :try_start_0
    invoke-static {p0, p2, v1, p4}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 907
    return-void

    .line 914
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 909
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 910
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    .line 911
    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    invoke-static {p0, p2, p1, p4}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 915
    nop

    .line 916
    return-void

    .line 914
    :goto_0
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 801
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 802
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 803
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 806
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 808
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 816
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 817
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 818
    invoke-static {p2}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 821
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/core/app/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 823
    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v9, p0

    move v0, p3

    .line 924
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 926
    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    .line 927
    move-object v1, v9

    move-object v2, p2

    move v3, v0

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 929
    return-void

    .line 937
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 931
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 932
    invoke-direct {v9, p1}, Landroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v2

    .line 933
    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, v9

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 938
    nop

    .line 939
    return-void

    .line 937
    :goto_0
    iput-boolean v10, v9, Landroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 213
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 214
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 686
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 246
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 247
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 254
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 255
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    .line 844
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 846
    invoke-static {p1}, Landroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 848
    :cond_0
    return-void
.end method
