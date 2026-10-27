.class Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;
.super Lbkv;
.source "KugooSingerListLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->b:Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;)V

    return-void
.end method
