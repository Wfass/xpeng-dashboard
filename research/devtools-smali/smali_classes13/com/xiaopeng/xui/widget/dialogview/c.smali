.class public abstract Lcom/xiaopeng/xui/widget/dialogview/c;
.super Ljava/lang/Object;
.source "XDialogViewDelegate.java"


# instance fields
.field protected aix:Lcom/xiaopeng/xui/widget/dialogview/b;

.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/c;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 34
    if-gtz p3, :cond_0

    .line 35
    sget p3, Lcom/xiaopeng/xpui/R$style;->XDialogView:I

    .line 37
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/c;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/c;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/d;-><init>(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
.end method

.method public abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract ab(Z)V
.end method

.method public abstract b(Lcom/xiaopeng/xui/widget/dialogview/e$b;)V
.end method

.method public abstract b(Lcom/xiaopeng/xui/widget/dialogview/e$d;)V
.end method

.method public abstract bn(Z)V
.end method

.method public abstract bo(Z)V
.end method

.method public abstract c(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V
.end method

.method public abstract d(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V
.end method

.method public abstract eP(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract eS(I)V
.end method

.method public abstract eT(I)V
.end method

.method public abstract h(Landroid/view/View;Z)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract qs()Landroid/view/ViewGroup;
.end method

.method public abstract r(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract s(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMessage(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitle(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
