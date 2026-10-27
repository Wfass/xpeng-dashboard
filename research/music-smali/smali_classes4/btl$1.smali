.class Lbtl$1;
.super Ljava/lang/Object;
.source "VipBuyForWebBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtl;->showWebDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbtl;


# direct methods
.method constructor <init>(Lbtl;ILjava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lbtl$1;->c:Lbtl;

    iput p2, p0, Lbtl$1;->a:I

    iput-object p3, p0, Lbtl$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/d;

    iget-object v1, p0, Lbtl$1;->c:Lbtl;

    .line 126
    invoke-static {v1}, Lbtl;->a(Lbtl;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lbtl$1;->a:I

    if-nez v2, :cond_0

    const/16 v2, 0x64

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/webview/view/d;-><init>(Landroid/content/Context;I)V

    .line 127
    iget-object v1, p0, Lbtl$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/view/d;->b(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/webview/view/d;->e()V

    return-void
.end method
