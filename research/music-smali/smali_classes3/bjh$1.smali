.class Lbjh$1;
.super Ljava/lang/Object;
.source "SingerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjh;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbjh;


# direct methods
.method constructor <init>(Lbjh;I)V
    .locals 0

    .line 175
    iput-object p1, p0, Lbjh$1;->b:Lbjh;

    iput p2, p0, Lbjh$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lbjh$1;->b:Lbjh;

    invoke-static {p1}, Lbjh;->a(Lbjh;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    iget v0, p0, Lbjh$1;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    return-void
.end method
