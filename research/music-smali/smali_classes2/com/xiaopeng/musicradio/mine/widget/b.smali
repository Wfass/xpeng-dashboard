.class public Lcom/xiaopeng/musicradio/mine/widget/b;
.super Lme/drakeet/multitype/c;
.source "ContentViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/mine/widget/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/xiaopeng/musicradio/mine/widget/c;

.field private c:Ljava/lang/String;

.field private d:Laxs;

.field private f:Lcom/xiaopeng/musicradio/mine/widget/b$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Laxs;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->a:I

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->c:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->d:Laxs;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Laxs;Lcom/xiaopeng/musicradio/mine/widget/b$a;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->a:I

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->d:Laxs;

    .line 35
    iput-object p4, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->f:Lcom/xiaopeng/musicradio/mine/widget/b$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/xiaopeng/musicradio/mine/widget/c;
    .locals 2

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/xiaopeng/musicradio/mine/widget/c;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/mine/widget/c;-><init>(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->f:Lcom/xiaopeng/musicradio/mine/widget/b$a;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/b$a;->a(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/xiaopeng/musicradio/mine/widget/c;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/b;->a(Lcom/xiaopeng/musicradio/mine/widget/c;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/mine/widget/c;Ljava/lang/Object;)V
    .locals 1

    .line 51
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->d:Laxs;

    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p1, Lcom/xiaopeng/musicradio/mine/widget/c;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Laxs;->a(Landroid/view/View;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/b;->b:Lcom/xiaopeng/musicradio/mine/widget/c;

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/xiaopeng/musicradio/mine/widget/c;

    move-result-object p1

    return-object p1
.end method
