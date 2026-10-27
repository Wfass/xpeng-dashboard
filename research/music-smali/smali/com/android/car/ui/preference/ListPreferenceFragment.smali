.class public Lcom/android/car/ui/preference/ListPreferenceFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListPreferenceFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private mPreference:Landroidx/preference/ListPreference;

.field private mSelectedIndex:I

.field private mSelectedItem:Lcom/android/car/ui/recyclerview/a;

.field private mUseInstantPreferenceChangeCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    return-void
.end method

.method private getListPreference()Landroidx/preference/ListPreference;
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$a;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 221
    instance-of v1, v0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Landroidx/preference/ListPreference;

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use ListPreferenceFragment with a preference that is not of type ListPreference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target fragment must be registered before displaying ListPreference screen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference key not found in Fragment arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/ListPreferenceFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/android/car/ui/preference/ListPreferenceFragment;

    invoke-direct {v0}, Lcom/android/car/ui/preference/ListPreferenceFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/ListPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updatePreference()V
    .locals 2

    .line 194
    iget v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewCreated$0$ListPreferenceFragment(Lcom/android/car/ui/recyclerview/g;Ljava/util/List;Lcom/android/car/ui/recyclerview/a;Z)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p4, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedItem:Lcom/android/car/ui/recyclerview/a;

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p4, v0}, Lcom/android/car/ui/recyclerview/a;->a(Z)V

    .line 148
    iget-object p4, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedItem:Lcom/android/car/ui/recyclerview/a;

    invoke-interface {p2, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/android/car/ui/recyclerview/g;->notifyItemChanged(I)V

    .line 150
    :cond_1
    iput-object p3, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedItem:Lcom/android/car/ui/recyclerview/a;

    .line 151
    iget-object p1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedItem:Lcom/android/car/ui/recyclerview/a;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    .line 153
    iget-boolean p1, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    if-eqz p1, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->updatePreference()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$ListPreferenceFragment(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    .line 166
    invoke-interface {p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 233
    sget v1, Lcom/android/car/ui/e$e;->list:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 236
    sget v1, Lcom/android/car/ui/e$e;->car_ui_focus_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/a;->d()I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/android/car/ui/FocusArea;->a(IIII)V

    .line 239
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

    .line 83
    sget p3, Lcom/android/car/ui/e$g;->car_ui_list_preference:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 176
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/preference/PreferenceFragment;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-virtual {v0, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceInsets(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/baselayout/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 188
    iget-boolean v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->updatePreference()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget p2, Lcom/android/car/ui/e$e;->list:I

    invoke-static {p1, p2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 91
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/car/ui/e$b;->car_ui_preference_list_instant_change_callback:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mUseInstantPreferenceChangeCallback:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/android/car/ui/preference/PreferenceFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/car/ui/preference/PreferenceFragment;

    invoke-virtual {p2, p0}, Lcom/android/car/ui/preference/PreferenceFragment;->getPreferenceToolbar(Landroidx/fragment/app/Fragment;)Lcom/android/car/ui/toolbar/c;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    .line 97
    invoke-interface {p1, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setClipToPadding(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/car/ui/preference/ListPreferenceFragment;->getListPreference()Landroidx/preference/ListPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    if-eqz p2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->y()Ljava/lang/CharSequence;

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
    iget-object p2, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 120
    array-length v2, p2

    array-length v0, v0

    if-ne v2, v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v2, Lcom/android/car/ui/recyclerview/g;

    invoke-direct {v2, v0}, Lcom/android/car/ui/recyclerview/g;-><init>(Ljava/util/List;)V

    .line 129
    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_4

    .line 130
    aget-object v3, p2, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Lcom/android/car/ui/recyclerview/a;

    sget-object v5, Lcom/android/car/ui/recyclerview/a$a;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/a$a;

    invoke-direct {v4, v5}, Lcom/android/car/ui/recyclerview/a;-><init>(Lcom/android/car/ui/recyclerview/a$a;)V

    .line 133
    invoke-virtual {v4, v3}, Lcom/android/car/ui/recyclerview/a;->a(Ljava/lang/CharSequence;)V

    .line 135
    iget v3, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    if-ne v1, v3, :cond_3

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v4, v3}, Lcom/android/car/ui/recyclerview/a;->a(Z)V

    .line 137
    iput-object v4, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedItem:Lcom/android/car/ui/recyclerview/a;

    .line 140
    :cond_3
    new-instance v3, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$eU2HGzNUWNr7PNYUwDErmWwTvPY;-><init>(Lcom/android/car/ui/preference/ListPreferenceFragment;Lcom/android/car/ui/recyclerview/g;Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/android/car/ui/recyclerview/a;->a(Lcom/android/car/ui/recyclerview/a$c;)V

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {p1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget p2, p0, Lcom/android/car/ui/preference/ListPreferenceFragment;->mSelectedIndex:I

    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->scrollToPosition(I)V

    .line 163
    new-instance p2, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;

    invoke-direct {p2, p0, p1}, Lcom/android/car/ui/preference/-$$Lambda$ListPreferenceFragment$kMiwc8oFVCHRRmw22n96BJPJiPk;-><init>(Lcom/android/car/ui/preference/ListPreferenceFragment;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ListPreference entries array length does not match entryValues array length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
