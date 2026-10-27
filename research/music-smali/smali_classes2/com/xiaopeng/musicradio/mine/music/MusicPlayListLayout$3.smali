.class Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$3;
.super Ljava/lang/Object;
.source "MusicPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setListener()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "MusicPlayListLayout"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget p2, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of p2, p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz p2, :cond_0

    .line 178
    move-object p2, p3

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 179
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p4

    invoke-virtual {p4}, Lbdu;->d()I

    move-result p4

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Latv;->a(ILjava/lang/String;)V

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 182
    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_playlist_user:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lats;->a(Ljava/lang/String;)V

    .line 183
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string p2, "user"

    .line 184
    invoke-static {p1, p3, p2}, Laxu;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V

    return-void
.end method
