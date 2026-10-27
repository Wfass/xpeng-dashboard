.class Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyFragment;->onBackPressed()V

    return-void
.end method
