.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$6;
.super Ljava/lang/Object;
.source "CollectMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$6;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/q;->a()Lcom/xiaopeng/musicradio/utils/q;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$6;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->access$2200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    const-string v1, "add_list"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/musicradio/utils/q;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
