.class public Lcom/xiaopeng/musicradio/widget/m$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TabLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field final synthetic c:Lcom/xiaopeng/musicradio/widget/m;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/m;Landroid/view/View;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$a;->c:Lcom/xiaopeng/musicradio/widget/m;

    .line 81
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->tag_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$a;->a:Landroid/widget/TextView;

    .line 83
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->tag_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    return-void
.end method
