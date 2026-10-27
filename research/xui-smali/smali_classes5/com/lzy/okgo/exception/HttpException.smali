.class public Lcom/lzy/okgo/exception/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x79c2914329144639L


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private transient response:Lcom/lzy/okgo/model/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/model/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<*>;"
    invoke-static {p1}, Lcom/lzy/okgo/exception/HttpException;->getMessage(Lcom/lzy/okgo/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    .line 44
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lcom/lzy/okgo/model/Response;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static COMMON(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static NET_ERROR()Lcom/lzy/okgo/exception/HttpException;
    .locals 2

    .line 66
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMessage(Lcom/lzy/okgo/model/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    .local p0, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<*>;"
    const-string v0, "response == null"

    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/Response<",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lcom/lzy/okgo/model/Response;

    return-object v0
.end method
