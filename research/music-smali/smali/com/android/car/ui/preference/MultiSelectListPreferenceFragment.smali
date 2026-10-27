.class public Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;
.super Landroidx/fragment/app/Fragment;
.source "MultiSelectListPreferenceFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

.field private mUseInstantPreferenceChangeCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getPreference()Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$a;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 204
    instance-of v1, v0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use MultiSelectListPreferenceFragment with a preference that is not of type CarUiMultiSelectListPreference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target fragment must be registered before displaying MultiSelectListPreference screen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MultiSelectListPreference key not found in Fragment arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;
    .locals 3

    .line 70
    new-instance v0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;

    invoke-direct {v0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 72
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updatePreference()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    iget-object v1, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    iget-object v1, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$MultiSelectListPreferenceFragment(Ljava/lang/String;Lcom/android/car/ui/recyclerview/a;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 140
    iget-object p2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 145
    :goto_0
    iget-boolean p1, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->updatePreference()V

    :cond_1
    return-void
.end method

.method public onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V
    .locals 5

    .line 215
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 216
    sget v1, Lcom/android/car/ui/e$e;->list:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 219
    sget v1, Lcom/android/car/ui/e$e;->car_ui_focus_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/android/car/ui/FocusArea;->a(IIII)V

    .line 222
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result p1

    invoke-virtual {v0, v4, v1, v4, p1}, Lcom/android/car/ui/FocusArea;->b(IIII)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget p3, Lcom/android/car/ui/e$g;->car_ui_list_preference:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 160
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/preference/PreferenceFragment;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-virtual {v0, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceInsets(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/baselayout/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 171
    iget-boolean v0, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->updatePreference()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    sget p2, Lcom/android/car/ui/e$e;->list:I

    invoke-static {p1, p2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 90
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/car/ui/e$b;->car_ui_preference_list_instant_change_callback:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/android/car/ui/preference/PreferenceFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-virtual {p2, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceToolbar(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/toolbar/c;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->getPreference()Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    const/4 v1, 0x0

    .line 98
    invoke-interface {p1, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setClipToPadding(Z)V

    if-eqz p2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-virtual {v2}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->y()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/car/ui/toolbar/c;->a(Ljava/lang/CharSequence;)V

    const-string v2, ""

    .line 101
    invoke-interface {p2, v2}, Lcom/android/car/ui/toolbar/c;->b(Ljava/lang/CharSequence;)V

    .line 102
    invoke-interface {p2}, Lcom/android/car/ui/toolbar/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    sget-object v2, Lcom/android/car/ui/toolbar/b$b;->SUBPAGE:Lcom/android/car/ui/toolbar/b$b;

    invoke-interface {p2, v2}, Lcom/android/car/ui/toolbar/c;->a(Lcom/android/car/ui/toolbar/b$b;)V

    goto :goto_1

    .line 105
    :cond_1
    sget-object v2, Lcom/android/car/ui/toolbar/a;->BACK:Lcom/android/car/ui/toolbar/a;

    invoke-interface {p2, v2}, Lcom/android/car/ui/toolbar/c;->a(Lcom/android/car/ui/toolbar/a;)V

    .line 107
    :goto_1
    invoke-interface {p2, v0}, Lcom/android/car/ui/toolbar/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-interface {p2, v0}, Lcom/android/car/ui/toolbar/c;->b(Ljava/util/List;)V

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/car/ui/toolbar/c;->a(Ljava/util/List;)V

    .line 112
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mNewValues:Ljava/util/Set;

    .line 113
    iget-object p2, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-virtual {p2}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object p2

    .line 114
    iget-object v0, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 122
    array-length v2, p2

    array-length v3, v0

    if-ne v2, v3, :cond_4

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v3, p0, Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;->mPreference:Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;

    invoke-virtual {v3}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->o()[Z

    move-result-object v3

    .line 131
    :goto_2
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 132
    aget-object v4, p2, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    new-instance v6, Lcom/android/car/ui/recyclerview/a;

    sget-object v7, Lcom/android/car/ui/recyclerview/a$a;->CHECK_BOX:Lcom/android/car/ui/recyclerview/a$a;

    invoke-direct {v6, v7}, Lcom/android/car/ui/recyclerview/a;-><init>(Lcom/android/car/ui/recyclerview/a$a;)V

    .line 136
    invoke-virtual {v6, v4}, Lcom/android/car/ui/recyclerview/a;->a(Ljava/lang/CharSequence;)V

    .line 137
    aget-boolean v4, v3, v1

    invoke-virtual {v6, v4}, Lcom/android/car/ui/recyclerview/a;->a(Z)V

    .line 138
    new-instance v4, Lcom/android/car/ui/preference/-$$Lambda$MultiSelectListPreferenceFragment$VNim7wWoZtUtNE0DEKyZ606MXto;

    invoke-direct {v4, p0, v5}, Lcom/android/car/ui/preference/-$$Lambda$MultiSelectListPreferenceFragment$VNim7wWoZtUtNE0DEKyZ606MXto;-><init>(Lcom/android/car/ui/preference/MultiSelectListPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/car/ui/recyclerview/a;->a(Lcom/android/car/ui/recyclerview/a$c;)V

    .line 150
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :cond_3
    new-instance p2, Lcom/android/car/ui/recyclerview/g;

    invoke-direct {p2, v2}, Lcom/android/car/ui/recyclerview/g;-><init>(Ljava/util/List;)V

    .line 154
    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 123
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MultiSelectListPreference entries array length does not match entryValues array length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
