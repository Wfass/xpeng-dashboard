.class public Lbmb$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChoiceBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

.field b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field final synthetic c:Lbmb;


# direct methods
.method constructor <init>(Lbmb;Landroid/view/View;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lbmb$a;->c:Lbmb;

    .line 57
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iget-object p2, p0, Lbmb$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->banner_item_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    iput-object p2, p0, Lbmb$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    .line 59
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbmb$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 60
    iget-object p1, p0, Lbmb$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    iget-object p2, p0, Lbmb$a;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
