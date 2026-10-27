.class public Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionIconPreference.java"


# instance fields
.field protected c:Ljava/lang/Runnable;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->h()V

    return-void
.end method

.method public static synthetic lambda$ozGpHQPLYPeyOnNJT3p7hddJfQM(Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroid/util/AttributeSet;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiTwoActionIconPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_0
    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionIconPreference_secondaryActionIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    sget p1, Lcom/android/car/ui/e$g;->car_ui_preference_two_action_icon:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    throw v0
.end method

.method public a(Landroidx/preference/g;)V
    .locals 6

    .line 91
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroidx/preference/g;)V

    .line 93
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v1, Lcom/android/car/ui/e$e;->car_ui_first_action_container:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 95
    iget-object v1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v2, Lcom/android/car/ui/e$e;->car_ui_second_action_container:I

    invoke-static {v1, v2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 97
    iget-object v2, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v3, Lcom/android/car/ui/e$e;->car_ui_secondary_action:I

    invoke-static {v2, v3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    iget-object v3, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v4, Lcom/android/car/ui/e$e;->car_ui_secondary_action_concrete:I

    invoke-static {v3, v4}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 102
    iget-object v4, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 103
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 104
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$hvcCLyQCotBk5-U9Y8ZT6yIXfwg;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$hvcCLyQCotBk5-U9Y8ZT6yIXfwg;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->A()Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->A()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v5

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v4

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 108
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->b:Z

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_4

    :cond_4
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->f()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v5

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v4

    :goto_6
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->f()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move p1, v5

    goto :goto_8

    :cond_8
    :goto_7
    move p1, v4

    :goto_8
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->f()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    move v4, v5

    :cond_a
    :goto_9
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 113
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionIconPreference$ozGpHQPLYPeyOnNJT3p7hddJfQM;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionIconPreference$ozGpHQPLYPeyOnNJT3p7hddJfQM;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->f()Z

    move-result p1

    .line 116
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->b()Z

    move-result v0

    .line 115
    invoke-static {v2, p1, v0}, Laiq;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected l()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
