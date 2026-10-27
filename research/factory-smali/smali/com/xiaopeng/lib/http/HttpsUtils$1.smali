.class final Lcom/xiaopeng/lib/http/HttpsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/http/HttpsUtils;->registerBroadcast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 144
    const-string v0, "HttpsUtils"

    const-string v1, "ACTION_BROADCAST_CLIENT_SSL_UPDATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/http/HttpsUtils;->access$000(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 148
    .local v0, "okHttpClient":Lokhttp3/OkHttpClient;
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "okHttpClient":Lokhttp3/OkHttpClient;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
