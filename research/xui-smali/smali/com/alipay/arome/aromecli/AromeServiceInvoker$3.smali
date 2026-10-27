.class final Lcom/alipay/arome/aromecli/AromeServiceInvoker$3;
.super Landroid/database/ContentObserver;
.source "AromeServiceInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeServiceInvoker;->registerCustomClickListener([Ljava/lang/String;Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .line 97
    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$3;->a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 102
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

    .line 103
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "event"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "index1":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 107
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "columnName "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 106
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_0
    move-object v3, v1

    .line 111
    .local v3, "event":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    if-ltz v0, :cond_1

    .line 113
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onChange "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$3;->a:Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;

    invoke-interface {v4, v3}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;->onClick(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "index1":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "event":Ljava/lang/String;
    :cond_3
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "registerBridgeCallback"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
