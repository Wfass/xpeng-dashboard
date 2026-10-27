.class public Lcom/xiaopeng/musicradio/widget/j$b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/widget/j$d;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/j$b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/j$b;Landroid/view/View;)V
    .locals 1

    .line 617
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$b$a;->b:Lcom/xiaopeng/musicradio/widget/j$b;

    .line 618
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 619
    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/musicradio/widget/j$d;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$b$a;->a:Lcom/xiaopeng/musicradio/widget/j$d;

    .line 620
    new-instance v0, Lcom/xiaopeng/musicradio/widget/j$b$a$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/widget/j$b$a$1;-><init>(Lcom/xiaopeng/musicradio/widget/j$b$a;Lcom/xiaopeng/musicradio/widget/j$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
