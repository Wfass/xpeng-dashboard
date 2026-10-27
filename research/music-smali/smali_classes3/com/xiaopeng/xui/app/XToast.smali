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

    return-void
.end method

.method private static _show(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 145
    sget v0, Lbyg$j;->x_toast:I

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->makeToast(I)Landroid/widget/Toast;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 147
    sget v2, Lbyg$h;->textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/app/XToast$XToastTextView;

    .line 148
    sget v3, Lbyg$h;->content_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 149
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    const/16 v3, 0x78

    .line 158
    :cond_1
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v2, p3}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setIcon(I)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 161
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isSharedDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 162
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setElevation(F)V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x41400000    # 12.0f

    .line 164
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setElevation(F)V

    .line 166
    :goto_1
    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    if-eq p2, p0, :cond_4

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 169
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showToast(Landroid/widget/Toast;I)V

    return-void

    .line 172
    :cond_3
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/app/XToast;->invokeShared(Landroid/widget/Toast;I)V

    goto :goto_2

    .line 175
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 176
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->showToast(Landroid/widget/Toast;I)V

    return-void

    .line 180
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static charactersSize(Ljava/lang/CharSequence;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 215
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 218
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 219
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v5, -0x1

    move v6, v3

    move v7, v5

    move v3, v0

    move v5, v3

    .line 224
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 226
    invoke-static {v8}, Lcom/xiaopeng/xui/utils/XCharacterUtils;->isFullAngle(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    if-nez v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/2addr v6, v9

    move v5, v9

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    if-nez v7, :cond_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    move v3, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v3
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
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 138
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XToast;->_show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private static declared-synchronized makeToast(I)Landroid/widget/Toast;
    .locals 4

    const-class v0, Lcom/xiaopeng/xui/app/XToast;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 194
    sget-object p0, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 196
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xui/app/XToast;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 198
    new-instance v2, Landroid/widget/Toast;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 199
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x31

    .line 200
    invoke-virtual {v2, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_1
    const v1, 0x800035

    .line 202
    invoke-virtual {v2, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 204
    :goto_0
    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 205
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isSingleToast()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 206
    sput-object v2, Lcom/xiaopeng/xui/app/XToast;->sToast:Landroid/widget/Toast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static show(I)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 2

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->charactersSize(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 62
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, -0x1

    .line 126
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 134
    invoke-static {}, Lcom/xiaopeng/xui/utils/ThreadUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 136
    invoke-static {}, Lcom/xiaopeng/xui/app/XToast;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "show toast not in ui thread %s == %s"

    .line 135
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_0
    return-void
.end method

.method public static showAt(II)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showAt(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showAt(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->charactersSize(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method public static showLong(I)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showLong(II)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static showLonger(I)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showLonger(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showLonger(II)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showLonger(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLonger(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x2

    .line 118
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLonger(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x2

    .line 122
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static showShort(I)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showShort(II)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method
