.class public final Lcom/lzy/okgo/model/a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private lz:Lokhttp3/Call;

.field private mu:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mv:Z

.field private mw:Lokhttp3/Response;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/lzy/okgo/model/a;

    invoke-direct {v0}, Lcom/lzy/okgo/model/a;-><init>()V

    .line 40
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/a;->x(Z)V

    .line 41
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/a;->g(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/a;->a(Lokhttp3/Call;)V

    .line 43
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/a;->a(Lokhttp3/Response;)V

    .line 44
    return-object v0
.end method

.method public static a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/lzy/okgo/model/a;

    invoke-direct {v0}, Lcom/lzy/okgo/model/a;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/a;->x(Z)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/a;->a(Lokhttp3/Call;)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/a;->a(Lokhttp3/Response;)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/a;->setException(Ljava/lang/Throwable;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/Call;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->lz:Lokhttp3/Call;

    .line 100
    return-void
.end method

.method public a(Lokhttp3/Response;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    .line 108
    return-void
.end method

.method public code()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public dc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mu:Ljava/lang/Object;

    return-object v0
.end method

.method public dd()Lokhttp3/Call;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->lz:Lokhttp3/Call;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->mu:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getRawResponse()Lokhttp3/Response;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->mw:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->throwable:Ljava/lang/Throwable;

    .line 92
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/lzy/okgo/model/a;->mv:Z

    .line 116
    return-void
.end method
