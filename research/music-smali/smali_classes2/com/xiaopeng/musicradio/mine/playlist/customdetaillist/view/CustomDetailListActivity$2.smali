.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;
.super Ljava/lang/Object;
.source "CustomDetailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->initData()V
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

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->access$000(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/mine/widget/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;->a:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAlbumLogo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    return-void
.end method
