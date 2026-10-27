.class public abstract Lcom/lzy/okgo/b/c;
.super Lcom/lzy/okgo/b/a;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/lzy/okgo/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/lzy/okgo/b/a;-><init>()V

    .line 36
    new-instance v0, Lcom/lzy/okgo/c/b;

    invoke-direct {v0}, Lcom/lzy/okgo/c/b;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/b/c;->convert:Lcom/lzy/okgo/c/b;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/b/c;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/lzy/okgo/b/c;->convert:Lcom/lzy/okgo/c/b;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/c/b;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 43
    return-object v0
.end method
