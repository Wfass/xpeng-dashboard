.class Lcom/alibaba/mtl/log/d/w;
.super Ljava/lang/Object;
.source "UtHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public ak:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/alibaba/mtl/log/d/w;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/mtl/log/d/w;

    iget-object v0, v0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    return v1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 30
    :cond_2
    :goto_0
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 24
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/d/w;->ak:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
