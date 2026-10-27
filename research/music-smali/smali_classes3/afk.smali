.class final Lafk;
.super Lahp;
.source "ObjectWriterImplAtomicInteger.java"


# static fields
.field static final a:Lafk;

.field static final b:[B


# instance fields
.field final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lafk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafk;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lafk;->a:Lafk;

    const-string v0, "AtomicInteger"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lafk;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lahp;-><init>()V

    .line 17
    iput-object p1, p0, Lafk;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 27
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lafk;->b:[B

    const-wide p4, 0x6925ac96039ae7baL    # 3.24033204513211E198

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 43
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method
