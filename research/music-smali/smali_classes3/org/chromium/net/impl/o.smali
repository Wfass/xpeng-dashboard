.class public Lorg/chromium/net/impl/o;
.super Lorg/chromium/net/i$a;
.source "UrlRequestBuilderImpl.java"


# static fields
.field private static final a:Ljava/lang/String; = "o"


# instance fields
.field private final b:Lorg/chromium/net/impl/c;

.field private final c:Ljava/lang/String;

.field private final d:Lorg/chromium/net/w$b;

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/chromium/net/u;

.field private m:Ljava/util/concurrent/Executor;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:Lorg/chromium/net/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/c;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/chromium/net/i$a;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/o;->g:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lorg/chromium/net/impl/o;->j:I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 90
    iput-object p1, p0, Lorg/chromium/net/impl/o;->c:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/chromium/net/impl/o;->d:Lorg/chromium/net/w$b;

    .line 92
    iput-object p3, p0, Lorg/chromium/net/impl/o;->e:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p4, p0, Lorg/chromium/net/impl/o;->b:Lorg/chromium/net/impl/c;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "CronetEngine is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "URL is required."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public synthetic a()Lorg/chromium/net/i$a;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/chromium/net/impl/o;->e()Lorg/chromium/net/impl/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)Lorg/chromium/net/i$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/o;->c(I)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lorg/chromium/net/i$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lorg/chromium/net/impl/o;->f:Ljava/lang/String;

    return-object p0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Method is required."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/i$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/o;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/i$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/o;->c(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Lorg/chromium/net/i;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/chromium/net/impl/o;->f()Lorg/chromium/net/impl/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lorg/chromium/net/w$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/o;->c(I)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lorg/chromium/net/w$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/o;->a(Ljava/lang/String;)Lorg/chromium/net/i$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/w$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/o;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/w$a;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/o;->c(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/o;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lorg/chromium/net/impl/o;
    .locals 0

    .line 138
    iput p1, p0, Lorg/chromium/net/impl/o;->j:I

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/o;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "Accept-Encoding"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lorg/chromium/net/impl/o;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "It\'s not necessary to set Accept-Encoding on requests - cronet will do this automatically for you, and setting it yourself has no effect. See https://crbug.com/581399 for details."

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/o;->g:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header value."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header name."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/o;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lorg/chromium/net/impl/o;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 152
    iput-object v0, p0, Lorg/chromium/net/impl/o;->f:Ljava/lang/String;

    .line 154
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/impl/o;->l:Lorg/chromium/net/u;

    .line 155
    iput-object p2, p0, Lorg/chromium/net/impl/o;->m:Ljava/util/concurrent/Executor;

    return-object p0

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid UploadDataProvider Executor."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid UploadDataProvider."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c()Lorg/chromium/net/w;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/chromium/net/impl/o;->f()Lorg/chromium/net/impl/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lorg/chromium/net/w$a;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/chromium/net/impl/o;->e()Lorg/chromium/net/impl/o;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/chromium/net/impl/o;
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lorg/chromium/net/impl/o;->n:Z

    return-object p0
.end method

.method public f()Lorg/chromium/net/impl/n;
    .locals 14

    .line 200
    iget-object v0, p0, Lorg/chromium/net/impl/o;->b:Lorg/chromium/net/impl/c;

    iget-object v1, p0, Lorg/chromium/net/impl/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/o;->d:Lorg/chromium/net/w$b;

    iget-object v3, p0, Lorg/chromium/net/impl/o;->e:Ljava/util/concurrent/Executor;

    iget v4, p0, Lorg/chromium/net/impl/o;->j:I

    iget-object v5, p0, Lorg/chromium/net/impl/o;->k:Ljava/util/Collection;

    iget-boolean v6, p0, Lorg/chromium/net/impl/o;->h:Z

    iget-boolean v7, p0, Lorg/chromium/net/impl/o;->i:Z

    iget-boolean v8, p0, Lorg/chromium/net/impl/o;->n:Z

    iget-boolean v9, p0, Lorg/chromium/net/impl/o;->o:Z

    iget v10, p0, Lorg/chromium/net/impl/o;->p:I

    iget-boolean v11, p0, Lorg/chromium/net/impl/o;->q:Z

    iget v12, p0, Lorg/chromium/net/impl/o;->r:I

    iget-object v13, p0, Lorg/chromium/net/impl/o;->s:Lorg/chromium/net/s$a;

    invoke-virtual/range {v0 .. v13}, Lorg/chromium/net/impl/c;->a(Ljava/lang/String;Lorg/chromium/net/w$b;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/s$a;)Lorg/chromium/net/impl/n;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lorg/chromium/net/impl/o;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/n;->a(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/o;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 208
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/chromium/net/impl/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/impl/o;->l:Lorg/chromium/net/u;

    if-eqz v1, :cond_2

    .line 211
    iget-object v2, p0, Lorg/chromium/net/impl/o;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/n;->a(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method
