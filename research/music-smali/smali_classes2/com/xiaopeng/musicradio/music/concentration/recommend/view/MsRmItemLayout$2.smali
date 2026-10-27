.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;
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

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 136
    invoke-static {}, Lbjl;->b()V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    move v6, p1

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->b:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static/range {v0 .. v6}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
