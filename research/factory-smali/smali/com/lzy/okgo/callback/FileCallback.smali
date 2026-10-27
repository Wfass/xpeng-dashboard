.class public abstract Lcom/lzy/okgo/callback/FileCallback;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/lzy/okgo/convert/FileConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/callback/FileCallback;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "destFileName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lzy/okgo/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 46
    new-instance v0, Lcom/lzy/okgo/convert/FileConvert;

    invoke-direct {v0, p1, p2}, Lcom/lzy/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzy/okgo/callback/FileCallback;->convert:Lcom/lzy/okgo/convert/FileConvert;

    .line 47
    iget-object v0, p0, Lcom/lzy/okgo/callback/FileCallback;->convert:Lcom/lzy/okgo/convert/FileConvert;

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/convert/FileConvert;->setCallback(Lcom/lzy/okgo/callback/Callback;)V

    .line 48
    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Ljava/io/File;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/lzy/okgo/callback/FileCallback;->convert:Lcom/lzy/okgo/convert/FileConvert;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/convert/FileConvert;->convertResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 54
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/callback/FileCallback;->convertResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
