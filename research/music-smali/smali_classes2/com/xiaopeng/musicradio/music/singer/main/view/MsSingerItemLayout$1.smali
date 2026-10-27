.class Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;
.super Ljava/lang/Object;
.source "MsSingerItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bd;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    return-void
.end method
