.class Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;
.super Ljava/lang/Object;
.source "DataListDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDataList()"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h()V

    :cond_0
    return-void
.end method
