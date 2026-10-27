.class Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;
.super Ljava/lang/Object;
.source "HistoryMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 4

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p4}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$000(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "HistoryMusicActivity"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$100(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->k()I

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$200(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$300(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lauc;

    iget-object p2, p2, Lauc;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p3, p4, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$400(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$400(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;Z)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object p2

    invoke-virtual {p2}, Lawo;->b()Ljava/util/List;

    move-result-object p2

    const/16 p4, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Laxu;->a(Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 82
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method
