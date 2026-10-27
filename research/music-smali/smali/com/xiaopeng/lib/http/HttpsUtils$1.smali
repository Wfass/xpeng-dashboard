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

    .line 142
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "HttpsUtils"

    const-string v0, "ACTION_BROADCAST_CLIENT_SSL_UPDATE"

    .line 146
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/http/HttpsUtils;->access$000(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 150
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
