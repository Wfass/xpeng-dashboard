.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

.field private maxWidth:I

.field private final menu:Landroid/support/design/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final presenter:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    .line 83
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    sget v0, Landroid/support/design/widget/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {v0}, Landroid/support/design/internal/NavigationMenuPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    .line 107
    new-instance v0, Landroid/support/design/internal/NavigationMenu;

    invoke-direct {v0, p1}, Landroid/support/design/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    .line 110
    sget-object v0, Landroid/support/design/widget/R$styleable;->NavigationView:[I

    sget v1, Landroid/support/design/widget/R$style;->Widget_Design_NavigationView:I

    .line 111
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 118
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 120
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_elevation:I

    .line 121
    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 120
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 123
    :cond_0
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_android_fitsSystemWindows:I

    .line 124
    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 123
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 126
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    .line 129
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 130
    sget p3, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    .line 132
    :cond_1
    const p3, 0x1010038

    invoke-direct {p0, p3}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 135
    :goto_0
    nop

    .line 136
    nop

    .line 137
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 138
    sget v1, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 139
    nop

    .line 142
    move v3, v1

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    move v3, v1

    :goto_1
    const/4 v4, 0x0

    .line 143
    sget v5, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    sget v4, Landroid/support/design/widget/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 147
    :cond_3
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    .line 149
    const v4, 0x1010036

    invoke-direct {p0, v4}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 152
    :cond_4
    sget v5, Landroid/support/design/widget/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 154
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 156
    invoke-virtual {p2, v6, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 157
    iget-object v7, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v7, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 159
    :cond_5
    sget v6, Landroid/support/design/widget/R$styleable;->NavigationView_itemIconPadding:I

    .line 160
    invoke-virtual {p2, v6, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 162
    iget-object v7, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    new-instance v8, Landroid/support/design/widget/NavigationView$1;

    invoke-direct {v8, p0}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v7, v8}, Landroid/support/design/internal/NavigationMenu;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 172
    iget-object v7, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v7, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setId(I)V

    .line 173
    iget-object v2, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v7, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v2, p1, v7}, Landroid/support/design/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 174
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, p3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    if-eqz v1, :cond_6

    .line 176
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 178
    :cond_6
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v5}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 181
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object p3, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, p3}, Landroid/support/design/internal/NavigationMenu;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 182
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/support/design/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 184
    sget p1, Landroid/support/design/widget/R$styleable;->NavigationView_menu:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 185
    sget p1, Landroid/support/design/widget/R$styleable;->NavigationView_menu:I

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView;->inflateMenu(I)V

    .line 188
    :cond_7
    sget p1, Landroid/support/design/widget/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 189
    sget p1, Landroid/support/design/widget/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 192
    :cond_8
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 193
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 480
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 481
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 482
    return-object v1

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 485
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 487
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 488
    return-object v1

    .line 490
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 491
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 492
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v2

    sget-object v6, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    .line 495
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 492
    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 473
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method public getHeaderCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 2

    .line 259
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 260
    invoke-direct {p0}, Landroid/support/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 261
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 262
    iget-object p1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 263
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 249
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    iget p1, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 232
    :cond_2
    nop

    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 233
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 235
    nop

    .line 241
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 242
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 206
    instance-of v0, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 208
    return-void

    .line 210
    :cond_0
    check-cast p1, Landroid/support/design/widget/NavigationView$SavedState;

    .line 211
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object p1, p1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 197
    invoke-super {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 198
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 201
    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 457
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 458
    if-eqz p1, :cond_0

    .line 459
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    check-cast p1, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 461
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 388
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 378
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 409
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 418
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 419
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 439
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 448
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 449
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 336
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 337
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 469
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 470
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 357
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 358
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iput-object p1, p0, Landroid/support/design/widget/NavigationView;->listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    .line 223
    return-void
.end method
