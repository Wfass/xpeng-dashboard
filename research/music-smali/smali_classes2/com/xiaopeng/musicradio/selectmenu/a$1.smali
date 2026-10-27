.class Lcom/xiaopeng/musicradio/selectmenu/a$1;
.super Ljava/lang/Object;
.source "SelectMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/selectmenu/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/a;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$1;->b:Lcom/xiaopeng/musicradio/selectmenu/a;

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$1;->b:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->b(Lcom/xiaopeng/musicradio/selectmenu/a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a$1;->b:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->a(Lcom/xiaopeng/musicradio/selectmenu/a;)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/a$1;->a:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    return-void
.end method
