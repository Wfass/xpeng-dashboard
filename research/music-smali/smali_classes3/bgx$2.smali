.class Lbgx$2;
.super Ljava/lang/Object;
.source "DolbyZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgx;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

.field final synthetic b:Lbhc;

.field final synthetic c:Lbgx;


# direct methods
.method constructor <init>(Lbgx;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lbgx$2;->c:Lbgx;

    iput-object p2, p0, Lbgx$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    iput-object p3, p0, Lbgx$2;->b:Lbhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 144
    iget-object p1, p0, Lbgx$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbgx$2;->b:Lbhc;

    invoke-virtual {v0}, Lbhc;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgx$2;->b:Lbhc;

    invoke-virtual {v1}, Lbhc;->e()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/ah;->a(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method
