.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;
.super Ljava/lang/Object;
.source "CustomDetailListActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setMode(I)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$1000(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setMode(I)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$1100(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$1200(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
