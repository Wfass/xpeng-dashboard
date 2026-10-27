.class public final Lcom/blankj/utilcode/util/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;
    }
.end annotation


# static fields
.field private static final TAG_ON_GLOBAL_LAYOUT_LISTENER:I = -0x8

.field private static millis:J

.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    sput v0, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/view/Window;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/Window;

    .line 33
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/Window;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/Window;

    .line 33
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public static clickBlankArea2HideSoftInput()V
    .locals 2

    .line 341
    const-string v0, "KeyboardUtils"

    const-string v1, "Please refer to the following code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method public static fixAndroidBug5497(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V

    .line 254
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fixAndroidBug5497(Landroid/view/Window;)V
    .locals 7
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 264
    .local v0, "softInputMode":I
    and-int/lit8 v1, v0, -0x11

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 265
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 266
    .local v1, "contentView":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 267
    .local v3, "contentViewChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 268
    .local v4, "paddingBottom":I
    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v6

    aput v6, v5, v2

    move-object v2, v5

    .line 269
    .local v2, "contentViewInvisibleHeightPre5497":[I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/blankj/utilcode/util/KeyboardUtils$3;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/blankj/utilcode/util/KeyboardUtils$3;-><init>(Landroid/view/Window;[ILandroid/view/View;I)V

    .line 270
    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 285
    return-void

    .line 262
    .end local v0    # "softInputMode":I
    .end local v1    # "contentView":Landroid/widget/FrameLayout;
    .end local v2    # "contentViewInvisibleHeightPre5497":[I
    .end local v3    # "contentViewChild":Landroid/view/View;
    .end local v4    # "paddingBottom":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fixSoftInputLeaks(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 306
    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixSoftInputLeaks(Landroid/view/Window;)V

    .line 308
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fixSoftInputLeaks(Landroid/view/Window;)V
    .locals 10
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 315
    if-eqz p0, :cond_5

    .line 317
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 318
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    const-string v1, "mLastSrvView"

    const-string v2, "mCurRootView"

    const-string v3, "mServedView"

    const-string v4, "mNextServedView"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "leakViews":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 322
    .local v4, "leakView":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 323
    .local v5, "leakViewField":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 324
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 327
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, Landroid/view/View;

    if-nez v7, :cond_2

    goto :goto_1

    .line 328
    :cond_2
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .line 329
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 330
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v5    # "leakViewField":Ljava/lang/reflect/Field;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    goto :goto_1

    :catch_0
    move-exception v5

    .line 320
    .end local v4    # "leakView":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_4
    return-void

    .line 315
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "leakViews":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getContentViewInvisibleHeight(Landroid/view/Window;)I
    .locals 7
    .param p0, "window"    # Landroid/view/Window;

    .line 288
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "contentView":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 292
    const-string v3, "KeyboardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContentViewInvisibleHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 295
    .local v3, "delta":I
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    move-result v4

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    .line 296
    return v1

    .line 298
    :cond_1
    return v3
.end method

.method private static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .locals 6
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v1, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 181
    const-string v2, "KeyboardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecorViewInvisibleHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 184
    .local v2, "delta":I
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v3

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 185
    sput v2, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    .line 186
    const/4 v3, 0x0

    return v3

    .line 188
    :cond_0
    sget v3, Lcom/blankj/utilcode/util/KeyboardUtils;->sDecorViewDelta:I

    sub-int v3, v2, v3

    return v3

    .line 177
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "outRect":Landroid/graphics/Rect;
    .end local v2    # "delta":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    if-eqz p0, :cond_1

    .line 134
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 137
    return-void

    .line 132
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'view\' of type View (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hideSoftInput(Landroid/view/Window;)V
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    if-eqz p0, :cond_2

    .line 111
    invoke-virtual {p0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "decorView":Landroid/view/View;
    const-string v2, "keyboardTagView"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "focusView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 116
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    .line 117
    const-string v3, "keyboardTagView"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 120
    :cond_0
    move-object v0, v2

    .line 122
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 124
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "focusView":Landroid/view/View;
    :cond_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 125
    return-void

    .line 110
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hideSoftInputByToggle(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 148
    .local v0, "nowMillis":J
    sget-wide v2, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    sub-long v2, v0, v2

    .line 149
    .local v2, "delta":J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    .line 152
    :cond_0
    sput-wide v0, Lcom/blankj/utilcode/util/KeyboardUtils;->millis:J

    .line 153
    return-void
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    if-eqz p0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    if-eqz p0, :cond_1

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'listener\' of type OnSoftInputChangedListener (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    if-eqz p0, :cond_2

    .line 209
    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 211
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    .line 212
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 214
    :cond_0
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 215
    .local v1, "contentView":Landroid/widget/FrameLayout;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v4

    aput v4, v2, v3

    .line 216
    .local v2, "decorViewInvisibleHeightPre":[I
    new-instance v3, Lcom/blankj/utilcode/util/KeyboardUtils$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/blankj/utilcode/util/KeyboardUtils$2;-><init>(Landroid/view/Window;[ILcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 226
    .local v3, "onGlobalLayoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 227
    const/4 v4, -0x8

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 228
    return-void

    .line 209
    .end local v0    # "flags":I
    .end local v1    # "contentView":Landroid/widget/FrameLayout;
    .end local v2    # "decorViewInvisibleHeightPre":[I
    .end local v3    # "onGlobalLayoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'listener\' of type OnSoftInputChangedListener (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showSoftInput()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 50
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    if-eqz p0, :cond_1

    .line 56
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->toggleSoftInput()V

    .line 59
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    if-eqz p0, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->showSoftInput(Landroid/view/View;I)V

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'view\' of type View (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showSoftInput(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "flags"    # I

    .line 77
    if-eqz p0, :cond_1

    .line 79
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 84
    new-instance v2, Lcom/blankj/utilcode/util/KeyboardUtils$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/blankj/utilcode/util/KeyboardUtils$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 94
    return-void

    .line 77
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'view\' of type View (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toggleSoftInput()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 163
    return-void
.end method

.method public static unregisterSoftInputChangedListener(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    if-eqz p0, :cond_2

    .line 236
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "contentView":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_1

    .line 240
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    :cond_1
    return-void

    .line 235
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'window\' of type Window (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
