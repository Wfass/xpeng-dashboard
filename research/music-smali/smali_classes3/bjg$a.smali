.class public Lbjg$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KugooSingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/xui/widget/XTextView;

.field b:Lcom/xiaopeng/xui/widget/XLoading;

.field final synthetic c:Lbjg;


# direct methods
.method public constructor <init>(Lbjg;Landroid/view/View;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lbjg$a;->c:Lbjg;

    .line 48
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->tv_foot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbjg$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 50
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->foot_loading:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lbjg$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    return-void
.end method
