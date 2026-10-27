.class public Lcom/xiaopeng/xui/widget/dialogview/b;
.super Lcom/xiaopeng/xui/vui/b;
.source "XDialogView.java"


# instance fields
.field private aiw:Lcom/xiaopeng/xui/widget/dialogview/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/b;-><init>()V

    .line 31
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/c;->a(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)Lcom/xiaopeng/xui/widget/dialogview/c;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->qs()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->m(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/widget/dialogview/e$a;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->c(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V

    .line 120
    return-object p0
.end method

.method public a(Lcom/xiaopeng/xui/widget/dialogview/e$b;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->b(Lcom/xiaopeng/xui/widget/dialogview/e$b;)V

    .line 209
    return-object p0
.end method

.method public a(Lcom/xiaopeng/xui/widget/dialogview/e$d;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->b(Lcom/xiaopeng/xui/widget/dialogview/e$d;)V

    .line 219
    return-object p0
.end method

.method public a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 224
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/c;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/xiaopeng/xui/widget/dialogview/e$a;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->d(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V

    .line 146
    return-object p0
.end method

.method public bk(Z)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->bn(Z)V

    .line 87
    return-object p0
.end method

.method public bl(Z)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->bo(Z)V

    .line 161
    return-object p0
.end method

.method public bm(Z)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->ab(Z)V

    .line 171
    return-object p0
.end method

.method public eQ(I)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->setTitle(I)V

    .line 42
    return-object p0
.end method

.method public eR(I)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->eP(I)V

    .line 62
    return-object p0
.end method

.method public eS(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->eS(I)V

    .line 197
    return-void
.end method

.method public eT(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->eT(I)V

    .line 201
    return-void
.end method

.method public g(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/c;->h(Landroid/view/View;Z)V

    .line 72
    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->r(Ljava/lang/CharSequence;)V

    .line 115
    return-object p0
.end method

.method public q(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/c;->s(Ljava/lang/CharSequence;)V

    .line 141
    return-object p0
.end method

.method public qs()Landroid/view/ViewGroup;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/b;->aiw:Lcom/xiaopeng/xui/widget/dialogview/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/c;->qs()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
