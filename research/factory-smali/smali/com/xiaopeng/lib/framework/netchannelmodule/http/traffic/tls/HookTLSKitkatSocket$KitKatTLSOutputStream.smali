.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;
.source "HookTLSKitkatSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KitKatTLSOutputStream"
.end annotation


# instance fields
.field private socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .param p1, "collector"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/OutputStream;)V

    .line 135
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->socket:Ljavax/net/ssl/SSLSocket;

    .line 136
    return-void
.end method


# virtual methods
.method public checkInputStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 168
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->access$100()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->socket:Ljavax/net/ssl/SSLSocket;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 171
    .local v1, "c":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "c":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->checkInputStream()V

    .line 162
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->flush()V

    .line 163
    return-void
.end method

.method public increaseSuccess()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    .line 178
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->checkInputStream()V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->increaseSuccess()V

    .line 142
    invoke-super {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->write(I)V

    .line 143
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->checkInputStream()V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->increaseSuccess()V

    .line 149
    invoke-super {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->write([B)V

    .line 150
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->checkInputStream()V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSOutputStream;->increaseSuccess()V

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->write([BII)V

    .line 157
    return-void
.end method
