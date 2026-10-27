.class public Lcom/loostone/libserver/version1/net/NetRequest$1;
.super Lcom/loostone/libserver/version1/net/MyStringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libserver/version1/net/NetRequest;->request(Landroid/content/Context;Lcom/loostone/libserver/version1/net/NetParam;LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO0O0;)Lcom/android/volley/toolbox/StringRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$param:Lcom/loostone/libserver/version1/net/NetParam;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/loostone/libserver/version1/net/NetParam;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/loostone/libserver/version1/net/NetRequest$1;->val$param:Lcom/loostone/libserver/version1/net/NetParam;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/loostone/libserver/version1/net/MyStringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/net/NetRequest$1;->val$param:Lcom/loostone/libserver/version1/net/NetParam;

    iget-boolean v1, v0, Lcom/loostone/libserver/version1/net/NetParam;->isRawRequest:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/loostone/libserver/version1/net/NetParam;->param:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/net/NetRequest$1;->val$param:Lcom/loostone/libserver/version1/net/NetParam;

    iget-object v0, v0, Lcom/loostone/libserver/version1/net/NetParam;->header:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/net/NetRequest$1;->val$param:Lcom/loostone/libserver/version1/net/NetParam;

    iget-boolean v1, v0, Lcom/loostone/libserver/version1/net/NetParam;->isRawRequest:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/loostone/libserver/version1/net/NetParam;->param:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/volley/RetryPolicy;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    iget-object v1, p0, Lcom/loostone/libserver/version1/net/NetRequest$1;->val$param:Lcom/loostone/libserver/version1/net/NetParam;

    iget v2, v1, Lcom/loostone/libserver/version1/net/NetParam;->timeout:I

    iget v1, v1, Lcom/loostone/libserver/version1/net/NetParam;->retry:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-object v0
.end method
