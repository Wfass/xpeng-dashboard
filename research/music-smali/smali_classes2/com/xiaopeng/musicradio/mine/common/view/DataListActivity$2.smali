.class Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;
.super Ljava/lang/Object;
.source "DataListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDataList()"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h()V

    :cond_0
    return-void
.end method
