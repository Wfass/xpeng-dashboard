.class Lcom/xiaopeng/xui/view/b;
.super Lcom/xiaopeng/xui/view/a;
.source "XViewDelegateImpl.java"


# instance fields
.field private abt:Lcom/xiaopeng/xui/view/b/a;

.field private abu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/view/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/a;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/b;->abu:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    .line 29
    invoke-static {}, Lcom/xiaopeng/xui/a;->qm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a/b;->b(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a/b;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->abu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/xiaopeng/libtheme/ThemeViewModel;->create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/view/a$a;)V
    .locals 2

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/xiaopeng/xui/view/b/a;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/view/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/b/a;->b(Lcom/xiaopeng/xui/view/a$a;)V

    .line 93
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/a/b;

    .line 58
    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/a/b;->onAttachedToWindow()V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onAttachedToWindow(Landroid/view/View;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/b/a;->onAttachedToWindow()V

    .line 66
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/a/b;

    .line 45
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/view/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abt:Lcom/xiaopeng/xui/view/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/b/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->abu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/a/b;

    .line 71
    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/a/b;->onDetachedFromWindow()V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onDetachedFromWindow(Landroid/view/View;)V

    .line 76
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->onWindowFocusChanged(Landroid/view/View;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public qN()Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/view/b;->mThemeViewModel:Lcom/xiaopeng/libtheme/ThemeViewModel;

    return-object v0
.end method
