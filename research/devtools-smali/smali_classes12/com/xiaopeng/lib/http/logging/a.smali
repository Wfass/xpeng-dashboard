.class public Lcom/xiaopeng/lib/http/logging/a;
.super Ljava/lang/Object;
.source "LogCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/logging/a$a;,
        Lcom/xiaopeng/lib/http/logging/a$d;,
        Lcom/xiaopeng/lib/http/logging/a$b;,
        Lcom/xiaopeng/lib/http/logging/a$c;
    }
.end annotation


# instance fields
.field private Vb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/http/logging/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private Vc:Lcom/xiaopeng/lib/http/logging/a$b;

.field private Vd:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vb:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/http/logging/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/http/logging/a$d;-><init>(Lcom/xiaopeng/lib/http/logging/a;Lcom/xiaopeng/lib/http/logging/a$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vc:Lcom/xiaopeng/lib/http/logging/a$b;

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vd:I

    return-void
.end method

.method private declared-synchronized a(Lcom/xiaopeng/lib/http/logging/a$a;)V
    .locals 3

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/lib/http/logging/a;->Vd:I

    if-le v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/a;->Vb:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :cond_0
    iget v0, p1, Lcom/xiaopeng/lib/http/logging/a$a;->code:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_1

    iget p1, p1, Lcom/xiaopeng/lib/http/logging/a$a;->code:I

    if-gez p1, :cond_3

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lib/http/logging/a;->Vb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/http/logging/a$a;

    .line 54
    iget-object v0, v0, Lcom/xiaopeng/lib/http/logging/a$a;->Ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/xiaopeng/lib/http/logging/a;->Vc:Lcom/xiaopeng/lib/http/logging/a$b;

    invoke-interface {v2, v1}, Lcom/xiaopeng/lib/http/logging/a$b;->dC(Ljava/lang/String;)V

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/xiaopeng/lib/http/logging/a;Lcom/xiaopeng/lib/http/logging/a$a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/http/logging/a;->a(Lcom/xiaopeng/lib/http/logging/a$a;)V

    return-void
.end method


# virtual methods
.method public oc()Lcom/xiaopeng/lib/http/logging/a$c;
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/http/logging/a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/http/logging/a$a;-><init>(Lcom/xiaopeng/lib/http/logging/a;)V

    return-object v0
.end method
