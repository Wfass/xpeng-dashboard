.class public Lbur;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private volatile a:Lbuk;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lbuu;",
            ">;",
            "Lbuu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaopeng/speech/common/util/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbur;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lbur;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lbur;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 140
    iget-object v0, p0, Lbur;->a:Lbuk;

    if-nez v0, :cond_0

    const-string p1, "mIQueryInjector == null"

    .line 141
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lbur;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbuu;

    .line 147
    invoke-virtual {v1}, Lbuu;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    :cond_2
    const/4 v2, 0x1

    .line 148
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "do inject query:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lbuu;->d()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lbuu;->d()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    :try_start_0
    iget-object v3, p0, Lbur;->a:Lbuk;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lbur;->a:Lbuk;

    invoke-virtual {v1}, Lbuu;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lbuk;->a([Ljava/lang/String;Lbul;)V

    .line 156
    invoke-virtual {v1, v2}, Lbuu;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "inject error "

    .line 159
    invoke-static {p0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string v1, "getInjectEvents.length == 0"

    .line 150
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lbur;->a:Lbuk;

    return-void
.end method

.method public a(Lbun;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lbun;->j()Lbuk;

    move-result-object p1

    iput-object p1, p0, Lbur;->a:Lbuk;

    .line 37
    iget-object p1, p0, Lbur;->c:Lcom/xiaopeng/speech/common/util/f;

    new-instance v0, Lbur$1;

    invoke-direct {v0, p0}, Lbur$1;-><init>(Lbur;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lbur;->c:Lcom/xiaopeng/speech/common/util/f;

    return-void
.end method
