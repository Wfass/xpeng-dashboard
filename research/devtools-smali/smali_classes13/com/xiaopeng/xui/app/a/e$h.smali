.class Lcom/xiaopeng/xui/app/a/e$h;
.super Lcom/xiaopeng/xui/app/a/e$c;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/e$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private aah:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/a/e$c;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V

    .line 134
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 156
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/e$h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 158
    neg-int v2, p1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 158
    :goto_1
    return p1
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 164
    nop

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/e$h;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/app/a/e$h;->a(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 167
    :cond_1
    move p1, v2

    goto :goto_0

    .line 166
    :cond_2
    nop

    .line 167
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/a/e$h;->aah:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/e$h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101035b

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/a/e$h;->aah:Z

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/e$h;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/a/e$h;->dismiss(I)V

    .line 148
    const/4 p1, 0x1

    return p1

    .line 150
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
