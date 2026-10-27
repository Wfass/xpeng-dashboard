.class Lafl;
.super Lahp;
.source "ObjectWriterImplAtomicIntegerArray.java"


# static fields
.field static final a:Lafl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lafl;

    invoke-direct {v0}, Lafl;-><init>()V

    sput-object v0, Lafl;->a:Lafl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 21
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p3, 0x0

    .line 22
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 23
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 34
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p3, 0x0

    .line 37
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_2

    if-eqz p3, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 41
    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
