.class public abstract Lcom/android/car/ui/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/preference/PreferenceFragment$a;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "com.android.car.ui.PreferenceFragment.DIALOG"

.field private static final TAG:Ljava/lang/String; = "CarUiPreferenceFragment"

.field private static final sPreferenceMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/preference/Preference;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/preference/Preference;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

.field private mLastFocusedAndSelectedPrefPosition:I

.field private mLastSelectedPrefKey:Ljava/lang/String;

.field private mRecyclerView:Landroid/view/ViewParent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    .line 368
    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/DropDownPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiDropDownPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/ListPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiListPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/MultiSelectListPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/EditTextPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiEditTextPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/SwitchPreference;

    const-class v3, Lcom/android/car/ui/preference/CarUiSwitchPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-class v2, Landroidx/preference/Preference;

    const-class v3, Lcom/android/car/ui/preference/CarUiPreference;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/preference/PreferenceFragment;->sPreferenceMapping:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/preference/PreferenceFragment;)Landroid/view/ViewParent;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mRecyclerView:Landroid/view/ViewParent;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/car/ui/preference/PreferenceFragment;Landroid/view/ViewParent;)Landroid/view/ViewParent;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mRecyclerView:Landroid/view/ViewParent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/car/ui/preference/PreferenceFragment;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/car/ui/preference/PreferenceFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mLastFocusedAndSelectedPrefPosition:I

    return p0
.end method

.method private static copyPreference(Landroidx/preference/Preference;Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 3

    .line 461
    invoke-virtual {p0}, Landroidx/preference/Preference;->y()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->f(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {p0}, Landroidx/preference/Preference;->O()Landroidx/preference/Preference$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$c;)V

    .line 463
    invoke-virtual {p0}, Landroidx/preference/Preference;->N()Landroidx/preference/Preference$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    .line 464
    invoke-virtual {p0}, Landroidx/preference/Preference;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 465
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->c(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroid/content/Intent;)V

    .line 467
    invoke-virtual {p0}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->d(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroidx/preference/Preference;->x()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->f(I)V

    .line 469
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Z)V

    .line 470
    invoke-virtual {p0}, Landroidx/preference/Preference;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->d(Z)V

    .line 471
    invoke-virtual {p0}, Landroidx/preference/Preference;->K()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->f(Z)V

    .line 472
    invoke-virtual {p0}, Landroidx/preference/Preference;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->e(I)V

    .line 473
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/b;)V

    .line 474
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->e(Z)V

    .line 475
    invoke-virtual {p0}, Landroidx/preference/Preference;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->c(Z)V

    .line 476
    invoke-virtual {p0}, Landroidx/preference/Preference;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->d(I)V

    .line 477
    invoke-virtual {p0}, Landroidx/preference/Preference;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->g(Z)V

    .line 479
    instance-of v0, p1, Lcom/android/car/ui/preference/c;

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroidx/preference/Preference;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->b(Z)V

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Landroidx/preference/Preference$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Landroidx/preference/Preference$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$e;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->e(Ljava/lang/CharSequence;)V

    .line 489
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->u()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p1}, Landroidx/preference/Preference;->t()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->u()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 493
    :cond_2
    instance-of v0, p0, Landroidx/preference/DialogPreference;

    if-eqz v0, :cond_3

    .line 494
    move-object v0, p0

    check-cast v0, Landroidx/preference/DialogPreference;

    .line 495
    move-object v1, p1

    check-cast v1, Landroidx/preference/DialogPreference;

    .line 496
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->a(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 498
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->b(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->c(I)V

    .line 500
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->d(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/DialogPreference;->c(Ljava/lang/CharSequence;)V

    .line 506
    :cond_3
    instance-of v0, p0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 507
    check-cast p0, Landroidx/preference/ListPreference;

    .line 508
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 509
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->a([Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->b([Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_4
    instance-of v0, p0, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_5

    .line 513
    check-cast p0, Landroidx/preference/EditTextPreference;

    .line 514
    move-object v0, p1

    check-cast v0, Landroidx/preference/EditTextPreference;

    .line 515
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/EditTextPreference;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 516
    :cond_5
    instance-of v0, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 517
    check-cast p0, Landroidx/preference/MultiSelectListPreference;

    .line 518
    move-object v0, p1

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    .line 519
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/MultiSelectListPreference;->a([Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/MultiSelectListPreference;->b([Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {p0}, Landroidx/preference/MultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/MultiSelectListPreference;->a(Ljava/util/Set;)V

    goto :goto_1

    .line 522
    :cond_6
    instance-of v0, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_7

    .line 523
    move-object v0, p0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 524
    move-object v1, p1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    .line 525
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->c(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->d(Ljava/lang/CharSequence;)V

    .line 528
    instance-of v0, p0, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 529
    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 530
    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 531
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->a(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->c()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->b(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-object p1
.end method

.method private static getReplacementFor(Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 5

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/android/car/ui/preference/PreferenceFragment;->sPreferenceMapping:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 389
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    .line 390
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    .line 391
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 394
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    invoke-virtual {p0}, Landroidx/preference/Preference;->Q()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 394
    invoke-static {p0, v0}, Lcom/android/car/ui/preference/PreferenceFragment;->copyPreference(Landroidx/preference/Preference;Landroidx/preference/Preference;)Landroidx/preference/Preference;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-eq v0, v2, :cond_3

    .line 400
    const-class v0, Landroidx/preference/Preference;

    if-ne v3, v0, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was used, preventing us from substituting it with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarUiPreferenceFragment"

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCarUiRecyclerView()Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-object v0
.end method

.method protected getPreferenceInsets(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/baselayout/a;
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/core/b;->b(Landroid/app/Activity;)Lcom/android/car/ui/baselayout/a;

    move-result-object p1

    return-object p1
.end method

.method protected getPreferenceToolbar(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/toolbar/c;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/core/b;->a(Landroid/app/Activity;)Lcom/android/car/ui/toolbar/c;

    move-result-object p1

    return-object p1
.end method

.method public onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 179
    sget v1, Lcom/android/car/ui/e$e;->car_ui_focus_area:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/FocusArea;

    .line 180
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/car/ui/FocusArea;->a(IIII)V

    .line 181
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/car/ui/FocusArea;->b(IIII)V

    .line 182
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getCarUiRecyclerView()Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v3

    invoke-interface {v1, v4, v2, v4, v3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setPadding(IIII)V

    .line 183
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->b()I

    move-result p1

    invoke-virtual {v0, v1, v4, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onCreateCarUiRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
    .locals 0

    .line 356
    sget p1, Lcom/android/car/ui/e$e;->recycler_view:I

    invoke-static {p2, p1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-object p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/ui/preference/PreferenceFragment;->onCreateCarUiRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 420
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    instance-of v1, v0, Lcom/android/car/ui/preference/PreferenceFragment$a;

    if-eqz v1, :cond_0

    .line 421
    check-cast v0, Lcom/android/car/ui/preference/PreferenceFragment$a;

    invoke-interface {v0}, Lcom/android/car/ui/preference/PreferenceFragment$a;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 424
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    if-eqz p1, :cond_2

    .line 429
    new-instance p2, Lcom/android/car/ui/preference/PreferenceFragment$1;

    invoke-direct {p2, p0}, Lcom/android/car/ui/preference/PreferenceFragment$1;-><init>(Lcom/android/car/ui/preference/PreferenceFragment;)V

    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    :cond_2
    return-object v0
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 6

    .line 199
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$b;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$b;

    .line 201
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$b;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "com.android.car.ui.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 211
    :cond_1
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p1}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 213
    :cond_2
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p1}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/preference/ListPreferenceFragment;->newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/ListPreferenceFragment;

    move-result-object p1

    goto :goto_0

    .line 215
    :cond_3
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p1}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_4
    instance-of v0, p1, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;

    if-eqz v0, :cond_8

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 229
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_5

    .line 230
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 237
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v1

    const v2, 0x10102e5

    .line 245
    invoke-static {v0, v2}, Laiq;->a(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x10102e6

    .line 247
    invoke-static {v0, v3}, Laiq;->a(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x10102e7

    .line 249
    invoke-static {v0, v4}, Laiq;->a(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x10102e8

    .line 251
    invoke-static {v0, v5}, Laiq;->a(Landroid/content/Context;I)I

    move-result v0

    .line 244
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/fragment/app/p;->a(IIII)Landroidx/fragment/app/p;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object p1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p1, v0}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroidx/fragment/app/p;->b()I

    :goto_1
    return-void

    .line 238
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference fragment must have a layout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference fragment is not attached to an Activity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 269
    invoke-virtual {p1}, Landroidx/preference/Preference;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mLastSelectedPrefKey:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mRecyclerView:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mRecyclerView:Landroid/view/ViewParent;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    .line 281
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_1

    .line 284
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mCarUiRecyclerView:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 291
    invoke-interface {v1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mLastFocusedAndSelectedPrefPosition:I

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastFocusedAndSelectedPrefPosition is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mLastFocusedAndSelectedPrefPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarUiPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 261
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 262
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceFragment;->mLastSelectedPrefKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/PreferenceFragment;->scrollToPreference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 170
    invoke-virtual {p0, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceInsets(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/baselayout/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/PreferenceFragment;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceToolbar(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/toolbar/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/PreferenceFragment;->setupToolbar(Lcom/android/car/ui/toolbar/c;)V

    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 313
    invoke-interface {v2, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 315
    :cond_0
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 318
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 319
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 321
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 322
    :goto_0
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->c()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 323
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->b(I)Landroidx/preference/Preference;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->d()V

    .line 328
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    .line 329
    invoke-static {v5}, Lcom/android/car/ui/preference/PreferenceFragment;->getReplacementFor(Landroidx/preference/Preference;)Landroidx/preference/Preference;

    move-result-object v6

    .line 331
    invoke-virtual {v5}, Landroidx/preference/Preference;->X()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceGroup;->c(Landroidx/preference/Preference;)Z

    .line 333
    invoke-interface {v2, v6}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 338
    :cond_2
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected setupToolbar(Lcom/android/car/ui/toolbar/c;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/android/car/ui/toolbar/b$a;->BACK:Lcom/android/car/ui/toolbar/b$a;

    invoke-interface {p1, v0}, Lcom/android/car/ui/toolbar/c;->a(Lcom/android/car/ui/toolbar/b$a;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->y()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/car/ui/toolbar/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 132
    invoke-interface {p1, v0}, Lcom/android/car/ui/toolbar/c;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
