.class public Landroid/support/design/widget/BottomSheetDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private behavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 52
    invoke-static {p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 44
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 216
    new-instance p2, Landroid/support/design/widget/BottomSheetDialog$4;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BottomSheetDialog$4;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object p2, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 43
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 44
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 216
    new-instance p3, Landroid/support/design/widget/BottomSheetDialog$4;

    invoke-direct {p3, p0}, Landroid/support/design/widget/BottomSheetDialog$4;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object p3, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 62
    iput-boolean p2, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 63
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 2

    .line 203
    if-nez p1, :cond_1

    .line 205
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroid/support/design/widget/R$attr;->bottomSheetDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 207
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 210
    :cond_0
    sget p1, Landroid/support/design/widget/R$style;->Theme_Design_Light_BottomSheetDialog:I

    .line 213
    :cond_1
    :goto_0
    return p1
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4

    .line 123
    nop

    .line 124
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/widget/R$layout;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 125
    sget v1, Landroid/support/design/widget/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    :cond_0
    sget p1, Landroid/support/design/widget/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, p1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 130
    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 131
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 132
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 133
    if-nez p3, :cond_1

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_0
    sget p2, Landroid/support/design/widget/R$id;->touch_outside:I

    .line 140
    invoke-virtual {v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/support/design/widget/BottomSheetDialog$1;

    invoke-direct {p3, p0}, Landroid/support/design/widget/BottomSheetDialog$1;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    .line 141
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance p2, Landroid/support/design/widget/BottomSheetDialog$2;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 175
    new-instance p2, Landroid/support/design/widget/BottomSheetDialog$3;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BottomSheetDialog$3;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 76
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 77
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 79
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 81
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onStart()V

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setCancelable(Z)V

    .line 96
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_0

    .line 97
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 98
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-nez v1, :cond_0

    .line 116
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 118
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 119
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 120
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 5

    .line 187
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v0, :cond_1

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 189
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    goto :goto_0

    .line 191
    :cond_0
    nop

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v2, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    :goto_0
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 199
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    return v0
.end method
