.class Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;
.super Lbkv;
.source "NewSongLabelsLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;->access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;->access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/NewSongLabelsLogic$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V

    return-void
.end method
