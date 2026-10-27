.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$a;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field listener:Lcom/google/android/material/navigation/NavigationView$a;

.field private final maxWidth:I

.field private final menu:Lcom/google/android/material/internal/g;

.field private menuInflater:Landroid/view/MenuInflater;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final presenter:Lcom/google/android/material/internal/h;

.field private final tmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 100
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    .line 101
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 103
    sget v0, Laiv$k;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 122
    sget v0, Laiv$b;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 126
    sget v0, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lakt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance p1, Lcom/google/android/material/internal/h;

    invoke-direct {p1}, Lcom/google/android/material/internal/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    const/4 p1, 0x2

    .line 112
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/google/android/material/internal/g;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    .line 134
    sget-object v2, Laiv$l;->NavigationView:[I

    sget v4, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/o;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/at;

    move-result-object v0

    .line 142
    sget v1, Laiv$l;->NavigationView_android_background:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget v1, Laiv$l;->NavigationView_android_background:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 149
    :cond_1
    sget v1, Lcom/google/android/material/navigation/NavigationView;->DEF_STYLE_RES:I

    .line 150
    invoke-static {p1, p2, p3, v1}, Lakp;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lakp$a;

    move-result-object p2

    invoke-virtual {p2}, Lakp$a;->a()Lakp;

    move-result-object p2

    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 152
    new-instance v1, Lakk;

    invoke-direct {v1, p2}, Lakk;-><init>(Lakp;)V

    .line 153
    instance-of p2, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    .line 154
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 155
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 154
    invoke-virtual {v1, p2}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 157
    :cond_2
    invoke-virtual {v1, p1}, Lakk;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {p0, v1}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_3
    sget p2, Laiv$l;->NavigationView_elevation:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 162
    sget p2, Laiv$l;->NavigationView_elevation:I

    invoke-virtual {v0, p2, v6}, Landroidx/appcompat/widget/at;->e(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 164
    :cond_4
    sget p2, Laiv$l;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v0, p2, v6}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 166
    sget p2, Laiv$l;->NavigationView_android_maxWidth:I

    invoke-virtual {v0, p2, v6}, Landroidx/appcompat/widget/at;->e(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    .line 169
    sget p2, Laiv$l;->NavigationView_itemIconTint:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 170
    sget p2, Laiv$l;->NavigationView_itemIconTint:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    :cond_5
    const p2, 0x1010038

    .line 172
    invoke-direct {p0, p2}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 177
    :goto_0
    sget p3, Laiv$l;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    .line 178
    sget p3, Laiv$l;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, p3, v6}, Landroidx/appcompat/widget/at;->g(II)I

    move-result p3

    move v2, p3

    move p3, v1

    goto :goto_1

    :cond_6
    move p3, v6

    move v2, p3

    .line 182
    :goto_1
    sget v3, Laiv$l;->NavigationView_itemIconSize:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    sget v3, Laiv$l;->NavigationView_itemIconSize:I

    invoke-virtual {v0, v3, v6}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_7
    const/4 v3, 0x0

    .line 187
    sget v4, Laiv$l;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 188
    sget v3, Laiv$l;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_8
    if-nez p3, :cond_9

    if-nez v3, :cond_9

    const v3, 0x1010036

    .line 193
    invoke-direct {p0, v3}, Lcom/google/android/material/navigation/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 196
    :cond_9
    sget v4, Laiv$l;->NavigationView_itemBackground:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_a

    .line 199
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->hasShapeAppearance(Landroidx/appcompat/widget/at;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 200
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->createDefaultItemBackground(Landroidx/appcompat/widget/at;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 203
    :cond_a
    sget v5, Laiv$l;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 204
    sget v5, Laiv$l;->NavigationView_itemHorizontalPadding:I

    .line 205
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v5

    .line 206
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v7, v5}, Lcom/google/android/material/internal/h;->e(I)V

    .line 208
    :cond_b
    sget v5, Laiv$l;->NavigationView_itemIconPadding:I

    .line 209
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v5

    .line 211
    sget v7, Laiv$l;->NavigationView_itemMaxLines:I

    invoke-virtual {v0, v7, v1}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 213
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    new-instance v8, Lcom/google/android/material/navigation/NavigationView$1;

    invoke-direct {v8, p0}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 223
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v7, v1}, Lcom/google/android/material/internal/h;->a(I)V

    .line 224
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    invoke-virtual {v1, p1, v7}, Lcom/google/android/material/internal/h;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 225
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/h;->a(Landroid/content/res/ColorStateList;)V

    .line 226
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/h;->i(I)V

    if-eqz p3, :cond_c

    .line 228
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/h;->d(I)V

    .line 230
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/h;->b(Landroid/content/res/ColorStateList;)V

    .line 231
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v4}, Lcom/google/android/material/internal/h;->a(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/h;->f(I)V

    .line 233
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    iget-object p2, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/g;->a(Landroidx/appcompat/view/menu/l;)V

    .line 234
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/h;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/m;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    .line 236
    sget p1, Laiv$l;->NavigationView_menu:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 237
    sget p1, Laiv$l;->NavigationView_menu:I

    invoke-virtual {v0, p1, v6}, Landroidx/appcompat/widget/at;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 240
    :cond_d
    sget p1, Laiv$l;->NavigationView_headerLayout:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 241
    sget p1, Laiv$l;->NavigationView_headerLayout:I

    invoke-virtual {v0, p1, v6}, Landroidx/appcompat/widget/at;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 244
    :cond_e
    invoke-virtual {v0}, Landroidx/appcompat/widget/at;->b()V

    .line 246
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/h;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    return-object p0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 643
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 648
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Le$a;->colorPrimary:I

    .line 650
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 653
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 654
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 655
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v2

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->DISABLED_STATE_SET:[I

    .line 658
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private final createDefaultItemBackground(Landroidx/appcompat/widget/at;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 285
    sget v0, Laiv$l;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    .line 286
    sget v2, Laiv$l;->NavigationView_itemShapeAppearanceOverlay:I

    .line 287
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v2

    .line 288
    new-instance v4, Lakk;

    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 290
    invoke-static {v3, v0, v2}, Lakp;->a(Landroid/content/Context;II)Lakp$a;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lakp$a;->a()Lakp;

    move-result-object v0

    invoke-direct {v4, v0}, Lakk;-><init>(Lakp;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->NavigationView_itemShapeFillColor:I

    .line 294
    invoke-static {v0, p1, v2}, Lajv;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 293
    invoke-virtual {v4, v0}, Lakk;->g(Landroid/content/res/ColorStateList;)V

    .line 297
    sget v0, Laiv$l;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v5

    .line 298
    sget v0, Laiv$l;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v6

    .line 299
    sget v0, Laiv$l;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v7

    .line 300
    sget v0, Laiv$l;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v8

    .line 301
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lt;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private hasShapeAppearance(Landroidx/appcompat/widget/at;)Z
    .locals 1

    .line 258
    sget v0, Laiv$l;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Laiv$l;->NavigationView_itemShapeAppearanceOverlay:I

    .line 259
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setupInsetScrimsListener()V
    .locals 2

    .line 678
    new-instance v0, Lcom/google/android/material/navigation/NavigationView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$2;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 698
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 699
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Landroid/view/View;)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->d()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->i()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->j()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->e()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->k()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h;->g()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/h;->b(Z)V

    .line 369
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 370
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/h;->b(Z)V

    .line 371
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 264
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 266
    invoke-static {p0}, Lakl;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 664
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected onInsetsChanged(Lgr;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Lgr;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 343
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->maxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 342
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 350
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 315
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 316
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 319
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 320
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 306
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 309
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/g;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->b(Landroid/view/View;)V

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Landroidx/appcompat/view/menu/i;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->menu:Lcom/google/android/material/internal/g;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Landroidx/appcompat/view/menu/i;)V

    return-void

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 2

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 272
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lakl;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->e(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->e(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->f(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->f(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->h(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->g(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->d(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$a;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/h;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->i(I)V

    :cond_0
    return-void
.end method
