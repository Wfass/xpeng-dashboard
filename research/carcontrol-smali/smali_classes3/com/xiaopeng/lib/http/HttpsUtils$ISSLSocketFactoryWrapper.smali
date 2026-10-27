.class public interface abstract Lcom/xiaopeng/lib/http/HttpsUtils$ISSLSocketFactoryWrapper;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/HttpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISSLSocketFactoryWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract createFactoryWrapper(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation
.end method
