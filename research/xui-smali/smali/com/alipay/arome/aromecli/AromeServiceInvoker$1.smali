.class final Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;
.super Landroid/database/ContentObserver;
.source "AromeServiceInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeServiceInvoker;->registerBridgeExtension(Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .line 39
    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;->a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 44
    :try_start_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 45
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 46
    const-string v0, "action"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "index1":I
    const-string v3, "params"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 48
    .local v3, "index2":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "index1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", params"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 49
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 50
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "columnName "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 49
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v4, 0x0

    .line 54
    .local v4, "action":Ljava/lang/String;
    nop

    .line 55
    .local v1, "params":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    if-ltz v0, :cond_2

    .line 57
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 59
    :cond_2
    if-ltz v3, :cond_1

    .line 60
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_1

    .line 63
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onChange "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", params"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 66
    iget-object v5, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;->a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;

    new-instance v6, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;

    invoke-direct {v6, p0, p2}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1$1;-><init>(Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;Landroid/net/Uri;)V

    invoke-interface {v5, v4, v1, v6}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;->onCalled(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "index1":I
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "index2":I
    .end local v4    # "action":Ljava/lang/String;
    :cond_4
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "registerBridgeCallback"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
