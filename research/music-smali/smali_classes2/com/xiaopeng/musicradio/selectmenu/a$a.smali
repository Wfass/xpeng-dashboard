.class public Lcom/xiaopeng/musicradio/selectmenu/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/selectmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

.field final synthetic b:Lcom/xiaopeng/musicradio/selectmenu/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/a;Landroid/view/View;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$a;->b:Lcom/xiaopeng/musicradio/selectmenu/a;

    .line 114
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/main/a$d;->select_menu_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    return-void
.end method
