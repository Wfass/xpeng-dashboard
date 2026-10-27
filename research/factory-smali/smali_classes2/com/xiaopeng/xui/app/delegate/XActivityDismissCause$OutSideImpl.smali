.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutSideImpl"
.end annotation


# instance fields
.field private mCloseOnTouchOutside:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    .line 134
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 155
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 156
    .local v1, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 157
    .local v2, "slop":I
    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "decorView":Landroid/view/View;
    neg-int v4, v2

    if-lt v0, v4, :cond_1

    neg-int v4, v2

    if-lt v1, v4, :cond_1

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_1

    .line 160
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 158
    :goto_1
    return v4
.end method

.method private shouldCloseOnTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 164
    nop

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 167
    .local v0, "isOutside":Z
    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->mCloseOnTouchOutside:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101035b

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->mCloseOnTouchOutside:Z

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->shouldCloseOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;->dismiss(I)V

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
