.class final Lafj;
.super Lahp;
.source "ObjectWriterImplAtomicBoolean.java"


# static fields
.field static final a:Lafj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lafj;

    invoke-direct {v0}, Lafj;-><init>()V

    sput-object v0, Lafj;->a:Lafj;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->u()V

    return-void

    .line 18
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    return-void
.end method
