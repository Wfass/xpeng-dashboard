.class public Lcom/lzy/okgo/a/a;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/lzy/okgo/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private lr:Lcom/lzy/okgo/cache/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 45
    iput-object p1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    .line 46
    invoke-direct {p0}, Lcom/lzy/okgo/a/a;->cM()Lcom/lzy/okgo/cache/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 47
    return-void
.end method

.method private cM()Lcom/lzy/okgo/cache/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/lzy/okgo/a/a$1;->ls:[I

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    new-instance v0, Lcom/lzy/okgo/cache/a/g;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/a/g;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v0, Lcom/lzy/okgo/cache/a/d;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/a/d;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Lcom/lzy/okgo/cache/a/f;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/a/f;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 73
    goto :goto_0

    .line 69
    :pswitch_3
    new-instance v0, Lcom/lzy/okgo/cache/a/e;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/a/e;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 70
    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Lcom/lzy/okgo/cache/a/c;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/a/c;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 67
    nop

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->dj()Lcom/lzy/okgo/cache/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->dj()Lcom/lzy/okgo/cache/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    const-string v1, "policy == null"

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cN()Lcom/lzy/okgo/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/lzy/okgo/a/a;

    iget-object v1, p0, Lcom/lzy/okgo/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/lzy/okgo/a/a;->cN()Lcom/lzy/okgo/a/b;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/f/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/a/b;->cR()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/lzy/okgo/a/a;->lr:Lcom/lzy/okgo/cache/a/b;

    invoke-interface {v1, v0, p1}, Lcom/lzy/okgo/cache/a/b;->a(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/b/b;)V

    .line 61
    return-void
.end method
