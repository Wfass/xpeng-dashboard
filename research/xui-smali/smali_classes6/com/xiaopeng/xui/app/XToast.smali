.class public Lcom/xiaopeng/xui/app/XToast;
.super Ljava/lang/Object;
.source "XToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XToast$XToastTextView;
    }
.end annotation


# static fields
.field public static final ID_SHARED_BACKSEAT:I = 0x3

.field public static final ID_SHARED_PRIMARY:I = 0x0

.field public static final ID_SHARED_SECONDARY:I = 0x1

.field public static final LENGTH_LONGER:I = 0x2

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static _show(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I
    .param p2, "sharedId"    # I
    .param p3, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 145
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_toast:I

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->makeToast(I)Landroid/widget/Toast;

    move-result-object v0

    .line 146
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/xiaopeng/xpui/R$id;->textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/app/XToast$XToastTextView;

    .line 148
    .local v2, "textView":Lcom/xiaopeng/xui/app/XToast$XToastTextView;
    sget v3, Lcom/xiaopeng/xpui/R$id;->content_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 149
    .local v3, "content_view":Lcom/xiaopeng/xui/widget/XRelativeLayout;
    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x0

    .line 151
    .local v5, "statusBarHeight":I
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 152
    .local v6, "statusResourceId":I
    if-lez v6, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 155
    :cond_0
    if-nez v5, :cond_1

    .line 156
    const/16 v5, 0x78

    .line 158
    :cond_1
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v2, p3}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setIcon(I)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 161
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isSharedDisplay()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setElevation(F)V

    goto :goto_0

    .line 164
    :cond_2
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setElevation(F)V

    .line 166
    :goto_0
    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v7, -0x1

    if-eq p2, v7, :cond_4

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v7

    invoke-virtual {v7, v0, p2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showToast(Landroid/widget/Toast;I)V

    .line 170
    return-void

    .line 172
    :cond_3
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/app/XToast;->invokeShared(Landroid/widget/Toast;I)V

    goto :goto_1

    .line 175
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 176
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showToast(Landroid/widget/Toast;I)V

    .line 177
    return-void

    .line 180
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method

.method private static charactersSize(Ljava/lang/CharSequence;)I
    .locals 11
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 212
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 213
    return v0

    .line 215
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 218
    .local v2, "count":I
    array-length v3, v1

    move v4, v2

    move v2, v0

    .end local v2    # "count":I
    .local v4, "count":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v5, v1, v2

    .line 219
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 220
    goto :goto_4

    .line 222
    :cond_1
    const/4 v6, 0x0

    .line 223
    .local v6, "hasFull":Z
    const/4 v7, -0x1

    .line 224
    .local v7, "lastCharacterType":I
    move v8, v4

    move v4, v0

    .local v4, "i":I
    .local v8, "count":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 225
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 226
    .local v9, "c":C
    invoke-static {v9}, Lcom/xiaopeng/xui/utils/XCharacterUtils;->isFullAngle(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 227
    if-nez v7, :cond_2

    .line 228
    add-int/lit8 v8, v8, 0x1

    .line 230
    :cond_2
    const/4 v7, 0x1

    .line 231
    add-int/lit8 v8, v8, 0x1

    .line 232
    const/4 v6, 0x1

    goto :goto_2

    .line 234
    :cond_3
    const/4 v7, 0x0

    .line 224
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    .end local v4    # "i":I
    :cond_4
    if-eqz v6, :cond_6

    .line 238
    if-nez v7, :cond_5

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 218
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "hasFull":Z
    .end local v7    # "lastCharacterType":I
    .end local v8    # "count":I
    .local v4, "count":I
    :cond_5
    :goto_3
    move v4, v8

    goto :goto_4

    .line 242
    .end local v4    # "count":I
    .restart local v5    # "part":Ljava/lang/String;
    .restart local v6    # "hasFull":Z
    .restart local v7    # "lastCharacterType":I
    .restart local v8    # "count":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "hasFull":Z
    .end local v7    # "lastCharacterType":I
    goto :goto_3

    .line 218
    .end local v8    # "count":I
    .restart local v4    # "count":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_7
    return v4
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static invokeShared(Landroid/widget/Toast;I)V
    .locals 6
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "sharedId"    # I

    .line 185
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "setSharedId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I
    .param p2, "sharedId"    # I
    .param p3, "iconId"    # I

    .line 138
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XToast;->_show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private static declared-synchronized makeToast(I)Landroid/widget/Toast;
    .locals 6
    .param p0, "layoutId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const-class v0, Lcom/xiaopeng/xui/app/XToast;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 196
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xui/app/XToast;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/Toast;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 199
    .local v3, "toast":Landroid/widget/Toast;
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 200
    const/16 v4, 0x31

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 202
    :cond_1
    const v4, 0x800035

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 204
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 205
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isSingleToast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sput-object v3, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_2
    monitor-exit v0

    return-object v3

    .line 192
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "toast":Landroid/widget/Toast;
    .end local p0    # "layoutId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static show(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->charactersSize(Ljava/lang/CharSequence;)I

    move-result v0

    .line 61
    .local v0, "size":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 62
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .line 126
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    .line 127
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I
    .param p2, "sharedId"    # I

    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;III)V

    .line 131
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I
    .param p2, "sharedId"    # I
    .param p3, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 134
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "show toast not in ui thread %s == %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/xiaopeng/xui/app/XToast;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$DsS6wh1Ar2zWIHFrdUydOG-bHcA;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$DsS6wh1Ar2zWIHFrdUydOG-bHcA;-><init>(Ljava/lang/CharSequence;III)V

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XToast;->_show(Ljava/lang/CharSequence;III)V

    .line 142
    :goto_0
    return-void
.end method

.method public static showAt(II)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "shareId"    # I

    .line 56
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XToast;->showAt(Ljava/lang/CharSequence;I)V

    .line 57
    return-void
.end method

.method public static showAt(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "shareId"    # I

    .line 69
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->charactersSize(Ljava/lang/CharSequence;)I

    move-result v0

    .line 70
    .local v0, "size":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;I)V

    .line 75
    :goto_0
    return-void
.end method

.method public static showLong(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 94
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public static showLong(II)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "shareId"    # I

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;I)V

    .line 99
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    .line 103
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "shareId"    # I

    .line 106
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    .line 107
    return-void
.end method

.method public static showLonger(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 110
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showLonger(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public static showLonger(II)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "shareId"    # I

    .line 114
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLonger(Ljava/lang/CharSequence;I)V

    .line 115
    return-void
.end method

.method public static showLonger(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 118
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    .line 119
    return-void
.end method

.method public static showLonger(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "shareId"    # I

    .line 122
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    .line 123
    return-void
.end method

.method public static showShort(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 78
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public static showShort(II)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "shareId"    # I

    .line 82
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;I)V

    .line 83
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    .line 87
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "shareId"    # I

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    .line 91
    return-void
.end method
