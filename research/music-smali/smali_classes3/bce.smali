.class public Lbce;
.super Ljava/lang/Object;
.source "KugouCollectVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbce$b;,
        Lbce$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lbce$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lbce;->d:I

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbce;->e:Ljava/util/Map;

    .line 43
    invoke-direct {p0}, Lbce;->d()V

    return-void
.end method

.method static synthetic a(Lbce;)I
    .locals 0

    .line 21
    iget p0, p0, Lbce;->b:I

    return p0
.end method

.method public static a()Lbce;
    .locals 1

    .line 39
    sget-object v0, Lbce$a;->a:Lbce;

    return-object v0
.end method

.method static synthetic a(Lbce;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lbce;->b(I)V

    return-void
.end method

.method static synthetic a(Lbce;ZZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lbce;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .line 98
    iget-object v0, p0, Lbce;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbce$b;

    invoke-interface {v1, p1}, Lbce$b;->a(Z)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbce$b;

    invoke-interface {v1, p2}, Lbce$b;->a(Z)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lbce;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic a(Lbce;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lbce;->a:Z

    return p1
.end method

.method static synthetic b(Lbce;)I
    .locals 0

    .line 21
    iget p0, p0, Lbce;->c:I

    return p0
.end method

.method private b(I)V
    .locals 1

    .line 112
    iput p1, p0, Lbce;->b:I

    .line 113
    iget p1, p0, Lbce;->b:I

    const-string v0, "SP_LOVE_VERSION"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lbce;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lbce;->c(I)V

    return-void
.end method

.method static synthetic c(Lbce;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lbce;->e:Ljava/util/Map;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 117
    iput p1, p0, Lbce;->c:I

    .line 118
    iget p1, p0, Lbce;->c:I

    const-string v0, "SP_COLLECT_VERSION"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private d()V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "SP_LOVE_VERSION"

    .line 47
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lbce;->b:I

    const-string v1, "SP_COLLECT_VERSION"

    .line 48
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbce;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 122
    iput p1, p0, Lbce;->d:I

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveSongTotal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbce;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouCollectVersionMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget p1, p0, Lbce;->d:I

    const-string v0, "SP_SONG_TOTAL"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(ILbce$b;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lbce;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-boolean p1, p0, Lbce;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "KugouCollectVersionMode"

    const-string p2, "requestVersion: mRequesting true======"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lbce;->a:Z

    .line 65
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object p1

    const/4 p2, 0x4

    new-instance v0, Lbce$1;

    invoke-direct {v0, p0}, Lbce$1;-><init>(Lbce;)V

    invoke-virtual {p1, p2, v0}, Lbev;->e(ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b()I
    .locals 2

    .line 128
    iget v0, p0, Lbce;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "SP_SONG_TOTAL"

    .line 129
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbce;->d:I

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSongTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbce;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouCollectVersionMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p0, Lbce;->d:I

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lbce;->b(I)V

    .line 137
    invoke-direct {p0, v0}, Lbce;->c(I)V

    return-void
.end method
