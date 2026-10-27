.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;
.super Ljava/lang/Object;
.source "CollectedMusicView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/datalist/d$b<",
        "Landroidx/databinding/ViewDataBinding;",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 7

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CollectedMusicView"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-ne p2, p4, :cond_0

    .line 135
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->h()V

    .line 137
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p2

    invoke-virtual {p2}, Lbdu;->d()I

    move-result p2

    invoke-static {p2}, Latr;->b(I)V

    .line 138
    new-instance p2, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    invoke-static {}, Latc;->a()Latc;

    move-result-object p4

    invoke-virtual {p4}, Latc;->b()Ljava/util/List;

    move-result-object v1

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I

    move-result v3

    const/16 v4, 0x32

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)I

    move-result v5

    const/16 p4, 0x32

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;-><init>(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IIILjava/lang/String;)V

    invoke-static {p1, p2}, Laxu;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 130
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
