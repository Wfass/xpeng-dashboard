.class Lcom/xiaopeng/musicradio/webview/view/d$3;
.super Ljava/lang/Object;
.source "VipBuyWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/d;->a(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/webview/view/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->c:Lcom/xiaopeng/musicradio/webview/view/d;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    array-length v2, v1

    const-string v3, ""

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->c:Lcom/xiaopeng/musicradio/webview/view/d;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 187
    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, ","

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->c:Lcom/xiaopeng/musicradio/webview/view/d;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    aget-object v4, v6, v4

    .line 188
    invoke-static {v5, v4}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    array-length v1, v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->c:Lcom/xiaopeng/musicradio/webview/view/d;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->b:[Ljava/lang/String;

    aget-object v3, v3, v4

    .line 189
    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Lcom/xiaopeng/musicradio/webview/view/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/d$3;->c:Lcom/xiaopeng/musicradio/webview/view/d;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/webview/view/d;->a(Lcom/xiaopeng/musicradio/webview/view/d;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
