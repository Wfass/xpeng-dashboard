.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;
.super Ljava/lang/Object;
.source "MsRmItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 118
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 123
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

    .line 124
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;)I

    move-result p1

    if-nez p1, :cond_1

    .line 126
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjl;->d(ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjl;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
