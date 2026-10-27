.class Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$1;
.super Ljava/lang/Object;
.source "MusicSmallPlayerSubViewCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->c()V

    return-void
.end method
