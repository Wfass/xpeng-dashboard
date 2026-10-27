.class Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$3;
.super Ljava/lang/Object;
.source "MinePlaylistFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->setListener()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClicked:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "MinePlaylistFragment"

    invoke-static {p4, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 193
    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->title_playlist_user:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lats;->a(Ljava/lang/String;)V

    .line 194
    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string p2, "user"

    .line 195
    invoke-static {p1, p3, p2}, Laxu;->a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V

    return-void
.end method
