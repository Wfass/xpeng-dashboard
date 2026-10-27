.class public Lbii$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsMusicDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/xui/widget/XTextView;

.field b:Lcom/xiaopeng/xui/widget/XLoading;

.field final synthetic c:Lbii;


# direct methods
.method public constructor <init>(Lbii;Landroid/view/View;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lbii$a;->c:Lbii;

    .line 368
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 369
    sget p1, Lbez$d;->tv_foot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbii$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 370
    sget p1, Lbez$d;->foot_loading:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lbii$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    return-void
.end method
