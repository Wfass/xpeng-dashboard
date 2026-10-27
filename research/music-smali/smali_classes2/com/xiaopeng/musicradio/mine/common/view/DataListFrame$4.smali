.class Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;
.super Ljava/lang/Object;
.source "DataListFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDataList()"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h()V

    :cond_0
    return-void
.end method
