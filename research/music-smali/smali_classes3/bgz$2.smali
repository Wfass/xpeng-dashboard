.class Lbgz$2;
.super Ljava/lang/Object;
.source "DolbyZoneCollectBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgz;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

.field final synthetic b:Lbhe;

.field final synthetic c:Lbgz;


# direct methods
.method constructor <init>(Lbgz;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhe;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lbgz$2;->c:Lbgz;

    iput-object p2, p0, Lbgz$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    iput-object p3, p0, Lbgz$2;->b:Lbhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    iget-object p1, p0, Lbgz$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbgz$2;->b:Lbhe;

    invoke-virtual {v0}, Lbhe;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgz$2;->b:Lbhe;

    invoke-virtual {v1}, Lbhe;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/ah;->a(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method
