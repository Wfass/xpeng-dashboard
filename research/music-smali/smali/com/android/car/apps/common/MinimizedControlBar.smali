.class public Lcom/android/car/apps/common/MinimizedControlBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MinimizedControlBar.java"

# interfaces
.implements Lcom/android/car/apps/common/b;


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/ImageView;

.field private d:[Landroid/widget/FrameLayout;

.field private final e:[Landroid/view/View;

.field private f:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lcom/android/car/apps/common/MinimizedControlBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/apps/common/MinimizedControlBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    sget v0, Lcom/android/car/apps/common/h$h;->minimized_control_bar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/apps/common/MinimizedControlBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    .line 47
    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->e:[Landroid/view/View;

    .line 73
    invoke-direct {p0, p1, p4}, Lcom/android/car/apps/common/MinimizedControlBar;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    const/4 v3, 0x0

    .line 139
    iget-object v4, p0, Lcom/android/car/apps/common/MinimizedControlBar;->e:[Landroid/view/View;

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    .line 140
    aget-object v3, v4, v0

    goto :goto_1

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/android/car/apps/common/MinimizedControlBar;->f:[Landroid/view/View;

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 143
    aget-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    .line 146
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/android/car/apps/common/b;->a(II)I

    move-result v2

    aget-object v2, v4, v2

    invoke-static {v3, v2}, Laia;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    .line 77
    invoke-static {p1, p2, p0}, Lcom/android/car/apps/common/MinimizedControlBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x3

    .line 78
    new-array p2, p1, [Landroid/view/View;

    iput-object p2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->f:[Landroid/view/View;

    .line 79
    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_title:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->a:Landroid/widget/TextView;

    .line 80
    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_subtitle:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->b:Landroid/widget/TextView;

    .line 81
    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_content_tile:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->c:Landroid/widget/ImageView;

    .line 83
    new-array p1, p1, [Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    .line 85
    iget-object p1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_left_slot:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 86
    iget-object p1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_main_slot:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 87
    iget-object p1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    sget p2, Lcom/android/car/apps/common/h$f;->minimized_control_bar_right_slot:I

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/MinimizedControlBar;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x2

    aput-object p2, p1, v0

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 1

    .line 104
    sget v0, Lcom/android/car/apps/common/h$h;->control_bar_button:I

    invoke-virtual {p0, p1, v0}, Lcom/android/car/apps/common/MinimizedControlBar;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageButton;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageButton;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    invoke-virtual {v0, p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 112
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/car/apps/common/MinimizedControlBar;->e:[Landroid/view/View;

    aput-object p1, v0, p2

    .line 93
    invoke-direct {p0}, Lcom/android/car/apps/common/MinimizedControlBar;->a()V

    return-void
.end method

.method public getFocusedViewIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 119
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public setFocusAtViewIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-ge v0, p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/car/apps/common/MinimizedControlBar;->d:[Landroid/widget/FrameLayout;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 130
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setViews([Landroid/view/View;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/car/apps/common/MinimizedControlBar;->f:[Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/android/car/apps/common/MinimizedControlBar;->a()V

    return-void
.end method
