.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;
.super Latb;
.source "CustomDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;Landroid/content/Context;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;->k:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    invoke-direct {p0, p2}, Latb;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 91
    invoke-super {p0, p1}, Latb;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;->k:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->collected_music_max_selected:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
