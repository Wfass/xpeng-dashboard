.class public final Lcom/blankj/utilcode/util/SnackbarUtils;
.super Ljava/lang/Object;
.source "SnackbarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SnackbarUtils$Duration;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final COLOR_ERROR:I = -0x10000

.field private static final COLOR_MESSAGE:I = -0x1

.field private static final COLOR_SUCCESS:I = -0xd44a00

.field private static final COLOR_WARNING:I = -0x3f00

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static sWeakSnackbar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionListener:Landroid/view/View$OnClickListener;

.field private actionText:Ljava/lang/CharSequence;

.field private actionTextColor:I

.field private bgColor:I

.field private bgResource:I

.field private bottomMargin:I

.field private duration:I

.field private message:Ljava/lang/CharSequence;

.field private messageColor:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SnackbarUtils;->setDefault()V

    .line 67
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->view:Landroid/view/View;

    .line 68
    return-void
.end method

.method public static addView(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p0, "layoutId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 346
    if-eqz p1, :cond_1

    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/SnackbarUtils;->getView()Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 350
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 351
    .local v1, "layout":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 352
    .local v2, "child":Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v1    # "layout":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 346
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'params\' of type ViewGroup.LayoutParams (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 363
    if-eqz p0, :cond_2

    .line 364
    if-eqz p1, :cond_1

    .line 365
    invoke-static {}, Lcom/blankj/utilcode/util/SnackbarUtils;->getView()Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 368
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 369
    .local v1, "layout":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .end local v1    # "layout":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    :cond_0
    return-void

    .line 364
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'params\' of type ViewGroup.LayoutParams (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'child\' of type View (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dismiss()V
    .locals 1

    .line 321
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 323
    const/4 v0, 0x0

    sput-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    .line 325
    :cond_0
    return-void
.end method

.method private static findSuitableParentCopyFromSnackbar(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 374
    const/4 v0, 0x0

    move-object v1, p0

    move-object p0, v0

    .line 377
    .local v1, "view":Landroid/view/View;
    .local p0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 378
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 381
    :cond_1
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 383
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 386
    :cond_2
    move-object p0, v1

    check-cast p0, Landroid/view/ViewGroup;

    .line 389
    :cond_3
    if-eqz v1, :cond_5

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 391
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_0
    move-object v1, v3

    .line 393
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_5
    if-nez v1, :cond_0

    .line 395
    return-object p0
.end method

.method public static getView()Landroid/view/View;
    .locals 2

    .line 333
    sget-object v0, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    .line 334
    .local v0, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private setDefault()V
    .locals 2

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    .line 72
    const v0, -0x1000001

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    .line 73
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    .line 75
    iput v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    .line 76
    const-string v1, ""

    iput-object v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    .line 77
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    .line 79
    return-void
.end method

.method public static with(Landroid/view/View;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    if-eqz p0, :cond_0

    .line 88
    new-instance v0, Lcom/blankj/utilcode/util/SnackbarUtils;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/SnackbarUtils;-><init>(Landroid/view/View;)V

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'view\' of type View (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setAction(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    if-eqz p1, :cond_1

    .line 174
    if-eqz p3, :cond_0

    .line 175
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    .line 176
    iput p2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    .line 177
    iput-object p3, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    .line 178
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'listener\' of type View.OnClickListener (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'text\' of type CharSequence (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 158
    if-eqz p1, :cond_1

    .line 159
    if-eqz p2, :cond_0

    .line 160
    const v0, -0x1000001

    invoke-virtual {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/SnackbarUtils;->setAction(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SnackbarUtils;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'listener\' of type View.OnClickListener (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'text\' of type CharSequence (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBgColor(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    .line 121
    return-object p0
.end method

.method public setBgResource(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 0
    .param p1, "bgResource"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 131
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    .line 132
    return-object p0
.end method

.method public setBottomMargin(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 0
    .param p1, "bottomMargin"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 187
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    .line 188
    return-object p0
.end method

.method public setDuration(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 0
    .param p1, "duration"    # I

    .line 147
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    .line 148
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    .line 99
    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'msg\' of type CharSequence (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageColor(I)Lcom/blankj/utilcode/util/SnackbarUtils;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 109
    iput p1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    .line 110
    return-object p0
.end method

.method public show()Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public show(Z)Lcom/google/android/material/snackbar/Snackbar;
    .locals 9
    .param p1, "isShowTop"    # Z

    .line 204
    iget-object v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->view:Landroid/view/View;

    .line 205
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 206
    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, -0x1

    if-eqz p1, :cond_3

    .line 207
    invoke-static {v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->findSuitableParentCopyFromSnackbar(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 208
    .local v3, "suitableParent":Landroid/view/ViewGroup;
    const-string v4, "topSnackBarCoordinatorLayout"

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 209
    .local v4, "topSnackBarContainer":Landroid/view/View;
    if-nez v4, :cond_2

    .line 210
    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 211
    .local v5, "topSnackBarCoordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    const-string v6, "topSnackBarCoordinatorLayout"

    invoke-virtual {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v5, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setRotation(F)V

    .line 213
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    .line 215
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setElevation(F)V

    .line 217
    :cond_1
    invoke-virtual {v3, v5, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 218
    move-object v4, v5

    .line 220
    .end local v5    # "topSnackBarCoordinatorLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_2
    move-object v0, v4

    .line 222
    .end local v3    # "suitableParent":Landroid/view/ViewGroup;
    .end local v4    # "topSnackBarContainer":Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    const/4 v4, 0x0

    const v5, -0x1000001

    if-eq v3, v5, :cond_4

    .line 223
    new-instance v3, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 225
    .local v6, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    nop

    .line 226
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    .line 225
    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 228
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget v8, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    invoke-static {v0, v3, v8}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    .line 229
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    .end local v6    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    goto :goto_0

    .line 230
    :cond_4
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->message:Ljava/lang/CharSequence;

    iget v7, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->duration:I

    invoke-static {v0, v6, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    .line 232
    :goto_0
    sget-object v3, Lcom/blankj/utilcode/util/SnackbarUtils;->sWeakSnackbar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/snackbar/Snackbar;

    .line 233
    .local v3, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 234
    .local v6, "snackbarView":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    if-eqz p1, :cond_5

    .line 235
    nop

    .local v4, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 236
    invoke-virtual {v6, v4}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 237
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    .line 235
    .end local v7    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    .end local v4    # "i":I
    :cond_5
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    if-eq v1, v2, :cond_6

    .line 241
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgResource:I

    invoke-virtual {v6, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 242
    :cond_6
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    if-eq v1, v5, :cond_7

    .line 243
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    invoke-virtual {v6, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundColor(I)V

    .line 245
    :cond_7
    :goto_2
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    if-eqz v1, :cond_8

    .line 246
    nop

    .line 247
    invoke-virtual {v6}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 250
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iget-object v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a

    .line 251
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    if-eq v1, v5, :cond_9

    .line 252
    iget v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    invoke-virtual {v3, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 254
    :cond_9
    iget-object v1, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 256
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 257
    return-object v3
.end method

.method public showError()V
    .locals 1

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showError(Z)V

    .line 303
    return-void
.end method

.method public showError(Z)V
    .locals 1
    .param p1, "isShowTop"    # Z

    .line 311
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    .line 313
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    .line 314
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    .line 315
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showSuccess(Z)V

    .line 265
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .param p1, "isShowTop"    # Z

    .line 273
    const v0, -0xd44a00

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    .line 275
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    .line 276
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    .line 277
    return-void
.end method

.method public showWarning()V
    .locals 1

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SnackbarUtils;->showWarning(Z)V

    .line 284
    return-void
.end method

.method public showWarning(Z)V
    .locals 1
    .param p1, "isShowTop"    # Z

    .line 292
    const/16 v0, -0x3f00

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->bgColor:I

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->messageColor:I

    .line 294
    iput v0, p0, Lcom/blankj/utilcode/util/SnackbarUtils;->actionTextColor:I

    .line 295
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/SnackbarUtils;->show(Z)Lcom/google/android/material/snackbar/Snackbar;

    .line 296
    return-void
.end method
