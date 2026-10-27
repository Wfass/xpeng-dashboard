.class Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;
.super Ljava/lang/Object;
.source "VipBuyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->showData(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

.field final synthetic b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/UserBuyUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lapv;->a(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
