.class Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;
.super Ljava/lang/Object;
.source "VipBuyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyActivity;->onBackPressed()V

    return-void
.end method
