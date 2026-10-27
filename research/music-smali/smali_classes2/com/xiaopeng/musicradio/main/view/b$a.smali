.class Lcom/xiaopeng/musicradio/main/view/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MainSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/main/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/main/view/b;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/main/view/b;Landroid/view/View;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$a;->a:Lcom/xiaopeng/musicradio/main/view/b;

    .line 58
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->type_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/main/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/xiaopeng/musicradio/main/view/b$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method
