.class Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$9;
.super Ljava/lang/Object;
.source "HistoryMusicFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$9;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$9;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->access$002(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;Z)Z

    return-void
.end method
