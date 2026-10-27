.class Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;
.super Lfh;
.source "MusicViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 0

    .line 3061
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 3114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3065
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3066
    const-class p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3068
    invoke-static {p2}, Lgt;->a(Landroid/view/accessibility/AccessibilityEvent;)Lgw;

    move-result-object p1

    .line 3069
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lgw;->a(Z)V

    .line 3070
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz p2, :cond_0

    .line 3072
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lgw;->a(I)V

    .line 3073
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {p1, p2}, Lgw;->b(I)V

    .line 3074
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {p1, p2}, Lgw;->c(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 1

    .line 3080
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 3081
    const-class p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgu;->b(Ljava/lang/CharSequence;)V

    .line 3082
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Lgu;->i(Z)V

    .line 3083
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 3084
    invoke-virtual {p2, p1}, Lgu;->a(I)V

    .line 3086
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 3087
    invoke-virtual {p2, p1}, Lgu;->a(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 3093
    invoke-super {p0, p1, p2, p3}, Lfh;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 3104
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget p2, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 3098
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3099
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget p2, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
