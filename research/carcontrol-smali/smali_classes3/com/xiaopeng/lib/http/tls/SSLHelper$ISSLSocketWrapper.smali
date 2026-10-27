.class public interface abstract Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;
.super Ljava/lang/Object;
.source "SSLHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/tls/SSLHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISSLSocketWrapper"
.end annotation


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "domain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
