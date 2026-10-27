.class public Lblz$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RdTracksSelectPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->page_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lblz$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method static synthetic a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 160
    iget-object p0, p0, Lblz$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method
