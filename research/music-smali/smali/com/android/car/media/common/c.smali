.class public Lcom/android/car/media/common/c;
.super Ljava/lang/Object;
.source "MediaButtonController.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/android/car/media/common/PlayPauseStopImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Laid;

.field private m:Laid$c;

.field private n:Lcom/android/car/apps/common/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/apps/common/b;IIII)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/media/common/c;->a:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/android/car/media/common/c;->b:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/c;->d:Landroid/view/View;

    .line 84
    iget-object p2, p0, Lcom/android/car/media/common/c;->d:Landroid/view/View;

    new-instance p4, Lcom/android/car/media/common/-$$Lambda$c$PnzUyNBljt9zlnDi_MRWcTCCkwg;

    invoke-direct {p4, p0}, Lcom/android/car/media/common/-$$Lambda$c$PnzUyNBljt9zlnDi_MRWcTCCkwg;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lcom/android/car/media/common/c;->d:Landroid/view/View;

    sget p4, Lcom/android/car/media/common/f$f;->play_pause_stop:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/car/media/common/PlayPauseStopImageView;

    iput-object p2, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    .line 86
    iget-object p2, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    const/4 p4, 0x4

    invoke-virtual {p2, p4}, Lcom/android/car/media/common/PlayPauseStopImageView;->setVisibility(I)V

    .line 87
    iget-object p2, p0, Lcom/android/car/media/common/c;->d:Landroid/view/View;

    sget p4, Lcom/android/car/media/common/f$f;->circular_progress_bar:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/car/media/common/c;->e:Landroid/widget/ProgressBar;

    .line 89
    iget-object p2, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/android/car/media/common/PlayPauseStopImageView;->setAction(I)V

    .line 90
    iget-object p2, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    new-instance v1, Lcom/android/car/media/common/-$$Lambda$c$PnzUyNBljt9zlnDi_MRWcTCCkwg;

    invoke-direct {v1, p0}, Lcom/android/car/media/common/-$$Lambda$c$PnzUyNBljt9zlnDi_MRWcTCCkwg;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {p2, v1}, Lcom/android/car/media/common/PlayPauseStopImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/car/media/common/PlayPauseStopImageView;->setFocusedByDefault(Z)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/car/media/common/f$c;->show_circular_progress_bar:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/media/common/c;->k:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/c;->h:Landroid/content/res/ColorStateList;

    .line 99
    invoke-virtual {p1, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/car/media/common/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    .line 100
    iget-object p2, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    sget p3, Lcom/android/car/media/common/f$f;->skip_prev:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setId(I)V

    .line 101
    iget-object p2, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 102
    iget-object p2, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    new-instance p3, Lcom/android/car/media/common/-$$Lambda$c$-aa_HjWFxm7UhXTG5nNAhZk9KiE;

    invoke-direct {p3, p0}, Lcom/android/car/media/common/-$$Lambda$c$-aa_HjWFxm7UhXTG5nNAhZk9KiE;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p1, p6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    .line 105
    iget-object p1, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    sget p2, Lcom/android/car/media/common/f$f;->skip_next:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setId(I)V

    .line 106
    iget-object p1, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    new-instance p2, Lcom/android/car/media/common/-$$Lambda$c$QsD0BebPllCz4aS6lNBQIt8LLf4;

    invoke-direct {p2, p0}, Lcom/android/car/media/common/-$$Lambda$c$QsD0BebPllCz4aS6lNBQIt8LLf4;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/car/media/common/c;->a()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v0, p1}, Lcom/android/car/apps/common/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/car/media/common/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/apps/common/c;->a(Landroid/content/Context;)Lcom/android/car/apps/common/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/apps/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    instance-of p1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-nez p1, :cond_0

    .line 150
    sget p1, Lcom/android/car/media/common/MediaItemMetadata;->a:I

    .line 151
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/car/media/common/c;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 155
    :goto_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private a(Lcom/android/car/media/common/b;)Landroid/widget/ImageButton;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/android/car/media/common/c;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/car/media/common/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p1, Lcom/android/car/media/common/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p1, Lcom/android/car/media/common/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/car/media/common/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/android/car/media/common/c;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/car/media/common/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_0
    new-instance v1, Lcom/android/car/media/common/-$$Lambda$c$rqmfG5wmQQ3T993Stk7oJs9DH30;

    invoke-direct {v1, p0, p1}, Lcom/android/car/media/common/-$$Lambda$c$rqmfG5wmQQ3T993Stk7oJs9DH30;-><init>(Lcom/android/car/media/common/c;Lcom/android/car/media/common/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private synthetic a(Laid$e;)Lcom/android/car/media/common/b;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/car/media/common/c;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Laid$e;->a(Landroid/content/Context;)Lcom/android/car/media/common/b;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/android/car/apps/common/b;->setViews([Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    iget-object v2, p0, Lcom/android/car/media/common/c;->d:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 139
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 140
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 141
    iput-boolean v1, p0, Lcom/android/car/media/common/c;->i:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/car/media/common/c;->j:Z

    .line 143
    iget-object v0, p0, Lcom/android/car/media/common/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private synthetic a(Laid$c;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    if-eq v0, p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    .line 124
    invoke-direct {p0}, Lcom/android/car/media/common/c;->a()V

    :cond_0
    return-void
.end method

.method private a(Laid$d;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->b(Laid$d;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/car/media/common/PlayPauseStopImageView;->setAction(I)V

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p1}, Laid$d;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 164
    :goto_1
    iget-object v4, p0, Lcom/android/car/media/common/c;->e:Landroid/widget/ProgressBar;

    if-nez v3, :cond_3

    iget-boolean v5, p0, Lcom/android/car/media/common/c;->k:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/android/car/media/common/c;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {p1}, Laid$d;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    if-eqz v2, :cond_5

    .line 173
    invoke-virtual {p1}, Laid$d;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_5

    :cond_5
    move v4, v0

    :goto_5
    const/4 v5, 0x0

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_6

    .line 181
    :cond_6
    iget-object v3, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v3, v5, v1}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 182
    iput-boolean v0, p0, Lcom/android/car/media/common/c;->j:Z

    goto :goto_7

    .line 176
    :cond_7
    :goto_6
    iget-boolean v3, p0, Lcom/android/car/media/common/c;->j:Z

    if-nez v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    iget-object v6, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    invoke-interface {v3, v6, v1}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 178
    iput-boolean v1, p0, Lcom/android/car/media/common/c;->j:Z

    .line 184
    :cond_8
    :goto_7
    iget-object v3, p0, Lcom/android/car/media/common/c;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz v2, :cond_9

    .line 186
    invoke-virtual {p1}, Laid$d;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_8

    :cond_9
    move v3, v0

    :goto_8
    if-eqz v2, :cond_a

    .line 187
    invoke-virtual {p1}, Laid$d;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_9

    :cond_a
    move v2, v0

    :goto_9
    const/4 v4, 0x2

    if-nez v3, :cond_c

    if-eqz v2, :cond_b

    goto :goto_a

    .line 195
    :cond_b
    iget-object v1, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v1, v5, v4}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 196
    iput-boolean v0, p0, Lcom/android/car/media/common/c;->i:Z

    goto :goto_b

    .line 190
    :cond_c
    :goto_a
    iget-boolean v0, p0, Lcom/android/car/media/common/c;->i:Z

    if-nez v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    iget-object v3, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    invoke-interface {v0, v3, v4}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 192
    iput-boolean v1, p0, Lcom/android/car/media/common/c;->i:Z

    .line 198
    :cond_d
    :goto_b
    iget-object v0, p0, Lcom/android/car/media/common/c;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->c(Laid$d;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 270
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    invoke-virtual {p1}, Lcom/android/car/media/common/PlayPauseStopImageView;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "MediaButton"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string p1, "Play/Pause/Stop clicked on invalid state"

    .line 287
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onPlayPauseStopClicked pause(): "

    .line 279
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    invoke-virtual {p1}, Laid$c;->d()V

    goto :goto_0

    :cond_2
    const-string p1, "onPlayPauseStopClicked stop(): "

    .line 283
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    invoke-virtual {p1}, Laid$c;->e()V

    goto :goto_0

    :cond_3
    const-string p1, "onPlayPauseStopClicked play(): "

    .line 275
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    invoke-virtual {p1}, Laid$c;->a()V

    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/android/car/media/common/b;Landroid/view/View;)V
    .locals 1

    .line 265
    iget-object p2, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    iget-object v0, p1, Lcom/android/car/media/common/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/car/media/common/b;->c:Landroid/os/Bundle;

    invoke-virtual {p2, v0, p1}, Laid$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/android/car/media/common/source/c;)V
    .locals 1

    .line 222
    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->b(Lcom/android/car/media/common/source/c;)I

    move-result p1

    .line 223
    iget-object v0, p0, Lcom/android/car/media/common/c;->e:Landroid/widget/ProgressBar;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private b(Laid$d;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Laid$d;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaButton"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private b(Lcom/android/car/media/common/source/c;)I
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/car/media/common/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/media/common/f$d;->media_source_default_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Lcom/android/car/media/common/source/c;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private b()Laid$d;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/car/media/common/c;->l:Laid;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Laid;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laid$d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic b(Lcom/android/car/media/common/b;)Landroid/widget/ImageButton;
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Lcom/android/car/media/common/b;)Landroid/widget/ImageButton;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/android/car/media/common/c;->b()Laid$d;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laid$d;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaButton"

    const-string v0, "onPlayPauseStopClicked skipToNext(): "

    .line 295
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    invoke-virtual {p1}, Laid$c;->c()V

    :cond_0
    return-void
.end method

.method private c(Laid$d;)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v0}, Lcom/android/car/apps/common/b;->getFocusedViewIndex()I

    move-result v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Laid$d;->m()Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/car/media/common/-$$Lambda$c$rgxnLLDkshJvRjuyx7AoPmEPEmM;

    invoke-direct {v2, p0}, Lcom/android/car/media/common/-$$Lambda$c$rgxnLLDkshJvRjuyx7AoPmEPEmM;-><init>(Lcom/android/car/media/common/c;)V

    .line 239
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/car/media/common/-$$Lambda$c$1MNU1jArlrXU7yxC_ljmNxbO_OM;

    invoke-direct {v2, p0}, Lcom/android/car/media/common/-$$Lambda$c$1MNU1jArlrXU7yxC_ljmNxbO_OM;-><init>(Lcom/android/car/media/common/c;)V

    .line 240
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 237
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_0
    iget-boolean p1, p0, Lcom/android/car/media/common/c;->j:Z

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 246
    :cond_1
    iget-boolean p1, p0, Lcom/android/car/media/common/c;->i:Z

    if-nez p1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x2

    invoke-interface {p1, v3, v4}, Lcom/android/car/apps/common/b;->a(Landroid/view/View;I)V

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    new-array v2, v2, [Landroid/widget/ImageButton;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    invoke-interface {p1, v1}, Lcom/android/car/apps/common/b;->setViews([Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/android/car/media/common/c;->n:Lcom/android/car/apps/common/b;

    invoke-interface {p1, v0}, Lcom/android/car/apps/common/b;->setFocusAtViewIndex(I)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/android/car/media/common/c;->b()Laid$d;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laid$d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaButton"

    const-string v0, "onPlayPauseStopClicked skipToPrevious(): "

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/android/car/media/common/c;->m:Laid$c;

    invoke-virtual {p1}, Laid$c;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-aa_HjWFxm7UhXTG5nNAhZk9KiE(Lcom/android/car/media/common/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$1MNU1jArlrXU7yxC_ljmNxbO_OM(Lcom/android/car/media/common/c;Lcom/android/car/media/common/b;)Landroid/widget/ImageButton;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->b(Lcom/android/car/media/common/b;)Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ANeDdsjO4fuMdrRmmFzchU0891M(Lcom/android/car/media/common/c;Lcom/android/car/media/common/source/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Lcom/android/car/media/common/source/c;)V

    return-void
.end method

.method public static synthetic lambda$PnzUyNBljt9zlnDi_MRWcTCCkwg(Lcom/android/car/media/common/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QsD0BebPllCz4aS6lNBQIt8LLf4(Lcom/android/car/media/common/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$WHfdmUUGX7sEjWOhYFG7bHR4gBQ(Lcom/android/car/media/common/c;Laid$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Laid$d;)V

    return-void
.end method

.method public static synthetic lambda$YL0TABAsLUAUWAH_60D9apg7jYA(Lcom/android/car/media/common/c;Laid$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Laid$c;)V

    return-void
.end method

.method public static synthetic lambda$rgxnLLDkshJvRjuyx7AoPmEPEmM(Lcom/android/car/media/common/c;Laid$e;)Lcom/android/car/media/common/b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/c;->a(Laid$e;)Lcom/android/car/media/common/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$rqmfG5wmQQ3T993Stk7oJs9DH30(Lcom/android/car/media/common/c;Lcom/android/car/media/common/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/media/common/c;->a(Lcom/android/car/media/common/b;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Laid;Landroidx/lifecycle/n;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/car/media/common/c;->l:Laid;

    if-eqz v0, :cond_0

    const-string v0, "MediaButton"

    const-string v1, "PlaybackViewModel set more than once. Ignoring subsequent call."

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/car/media/common/c;->l:Laid;

    .line 121
    invoke-virtual {p1}, Laid;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/car/media/common/-$$Lambda$c$YL0TABAsLUAUWAH_60D9apg7jYA;

    invoke-direct {v1, p0}, Lcom/android/car/media/common/-$$Lambda$c$YL0TABAsLUAUWAH_60D9apg7jYA;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {v0, p2, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 127
    iget-object v0, p0, Lcom/android/car/media/common/c;->c:Lcom/android/car/media/common/PlayPauseStopImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/media/common/PlayPauseStopImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/car/media/common/c;->b:Landroid/content/Context;

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/media/common/f$c;->use_media_source_color_for_fab_spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Laid;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/car/media/common/-$$Lambda$c$ANeDdsjO4fuMdrRmmFzchU0891M;

    invoke-direct {v1, p0}, Lcom/android/car/media/common/-$$Lambda$c$ANeDdsjO4fuMdrRmmFzchU0891M;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {v0, p2, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 133
    :cond_1
    invoke-virtual {p1}, Laid;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/android/car/media/common/-$$Lambda$c$WHfdmUUGX7sEjWOhYFG7bHR4gBQ;

    invoke-direct {v0, p0}, Lcom/android/car/media/common/-$$Lambda$c$WHfdmUUGX7sEjWOhYFG7bHR4gBQ;-><init>(Lcom/android/car/media/common/c;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    return-void
.end method
