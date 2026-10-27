.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$8;
.super Ljava/lang/Object;
.source "CollectMusicFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$8;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$8;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->access$2100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;)V

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment$8;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicFragment;->setMode(I)V

    return-void
.end method
