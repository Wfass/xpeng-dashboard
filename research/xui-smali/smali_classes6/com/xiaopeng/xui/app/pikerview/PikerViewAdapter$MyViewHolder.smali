.class public Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PikerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field item1TV:Landroid/widget/TextView;

.field item2TV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->this$0:Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/xiaopeng/xpui/R$id;->tv_item1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item1TV:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/xiaopeng/xpui/R$id;->tv_item2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item2TV:Landroid/widget/TextView;

    .line 75
    return-void
.end method
