.class final Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;
.super Ljava/lang/Object;
.source "AromeServiceInvoker.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;


# direct methods
.method constructor <init>(Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;

    .line 66
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;->b:Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;

    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    .local v0, "value":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 70
    move-object v0, v1

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bridge callback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    return-void
.end method
