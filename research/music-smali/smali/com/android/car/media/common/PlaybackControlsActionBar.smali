.class public Lcom/android/car/media/common/PlaybackControlsActionBar;
.super Lcom/android/car/apps/common/d;
.source "PlaybackControlsActionBar.java"


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Landroid/widget/ProgressBar;

.field private c:Lcom/android/car/media/common/c;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/car/media/common/PlaybackControlsActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/car/media/common/PlaybackControlsActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/media/common/PlaybackControlsActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/apps/common/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/car/media/common/PlaybackControlsActionBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .line 65
    sget v0, Lcom/android/car/media/common/f$e;->ic_overflow_button:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/car/media/common/f$h;->control_bar_selectable_button:I

    invoke-virtual {p0, v0, v1}, Lcom/android/car/media/common/PlaybackControlsActionBar;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->a:Landroid/widget/ImageButton;

    .line 67
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->a:Landroid/widget/ImageButton;

    sget v1, Lcom/android/car/media/common/f$f;->overflow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 68
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/car/media/common/PlaybackControlsActionBar;->setExpandCollapseView(Landroid/view/View;)V

    .line 70
    new-instance v0, Lcom/android/car/media/common/c;

    sget v4, Lcom/android/car/media/common/f$d;->playback_control_color:I

    sget v5, Lcom/android/car/media/common/f$h;->play_pause_stop_button_layout:I

    sget v6, Lcom/android/car/media/common/f$e;->ic_skip_previous:I

    sget v7, Lcom/android/car/media/common/f$e;->ic_skip_next:I

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/car/media/common/c;-><init>(Landroid/content/Context;Lcom/android/car/apps/common/b;IIII)V

    iput-object v0, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->c:Lcom/android/car/media/common/c;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/car/media/common/f$c;->show_circular_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->d:Z

    .line 76
    sget p1, Lcom/android/car/media/common/f$f;->circular_progress_bar:I

    invoke-virtual {p0, p1}, Lcom/android/car/media/common/PlaybackControlsActionBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->b:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public a(Laid;Landroidx/lifecycle/n;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->c:Lcom/android/car/media/common/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/media/common/c;->a(Laid;Landroidx/lifecycle/n;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackControlsActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->b:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/android/car/media/common/PlaybackControlsActionBar;->d:Z

    invoke-static {v0, p2, p1, v1, v2}, Lcom/android/car/media/common/a;->a(Landroid/content/Context;Landroidx/lifecycle/n;Laid;Landroid/widget/ProgressBar;Z)V

    return-void
.end method
