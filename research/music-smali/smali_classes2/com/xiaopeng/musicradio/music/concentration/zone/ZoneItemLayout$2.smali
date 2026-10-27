.class Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;
.super Ljava/lang/Object;
.source "ZoneItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$400(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)I

    move-result p1

    invoke-static {p1}, Lbjl;->o(I)V

    .line 208
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getZoneId()I

    move-result v0

    const-string v1, "zone_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zone_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getQuality()I

    move-result v0

    const-string v1, "zone_quality"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$400(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)I

    move-result v0

    const-string v1, "zone_model_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$500(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "/music/fragment/kugoo_zone"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
