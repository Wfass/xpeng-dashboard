.class final Lafo;
.super Lahp;
.source "ObjectWriterImplAtomicReference.java"


# static fields
.field static final a:Lafo;


# instance fields
.field final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lafo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafo;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lafo;->a:Lafo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lahp;-><init>()V

    .line 15
    iput-object p1, p0, Lafo;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 25
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 41
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    .line 47
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    return-void
.end method
