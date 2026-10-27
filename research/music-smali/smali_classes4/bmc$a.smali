.class public Lbmc$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChoiceBannerAdapter13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

.field b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field final synthetic c:Lbmc;


# direct methods
.method constructor <init>(Lbmc;Landroid/view/View;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lbmc$a;->c:Lbmc;

    .line 58
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    iget-object p2, p0, Lbmc$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->banner_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

    iput-object p2, p0, Lbmc$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

    .line 60
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbmc$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 61
    iget-object p1, p0, Lbmc$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;

    iget-object p2, p0, Lbmc$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout13;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
