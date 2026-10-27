.class final Lxd;
.super Lzw;
.source "ObjectReaderImplAtomicReference.java"


# static fields
.field static final a:Lxd;


# instance fields
.field final b:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lxd;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lxd;-><init>(Ljava/lang/reflect/Type;)V

    sput-object v0, Lxd;->a:Lxd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 15
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 16
    iput-object p1, p0, Lxd;->b:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    iget-object p2, p0, Lxd;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_0
    iget-object p2, p0, Lxd;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
