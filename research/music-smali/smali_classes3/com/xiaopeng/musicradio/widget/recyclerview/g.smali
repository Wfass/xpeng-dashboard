.class public Lcom/xiaopeng/musicradio/widget/recyclerview/g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/g;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/g;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/g;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method
