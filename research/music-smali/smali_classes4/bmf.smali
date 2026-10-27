.class public Lbmf;
.super Lme/drakeet/multitype/c;
.source "GuessLikeBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbmj;",
        "Lbmf$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmf$a;
    .locals 3

    const-string v0, "GuessLikeBinder"

    const-string v1, "GuessLikeBinder onCreateViewHolder"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_guess_like_binder:I

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/musicradio/utils/ae;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_guess_like_binder:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "GuessLikeBinder get view by create."

    .line 33
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "GuessLikeBinder get view from cache."

    .line 35
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    new-instance p2, Lbmf$a;

    invoke-direct {p2, p1}, Lbmf$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lbmf$a;

    check-cast p2, Lbmj;

    invoke-virtual {p0, p1, p2}, Lbmf;->a(Lbmf$a;Lbmj;)V

    return-void
.end method

.method protected a(Lbmf$a;Lbmj;)V
    .locals 0

    const-string p1, "GuessLikeBinder"

    const-string p2, "GuessLikeBinder onBindViewHolder"

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lbmf;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmf$a;

    move-result-object p1

    return-object p1
.end method
