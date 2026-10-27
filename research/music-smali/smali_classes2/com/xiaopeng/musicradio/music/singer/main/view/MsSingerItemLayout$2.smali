.class Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;
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

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 120
    invoke-static {}, Lbjl;->d()V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
