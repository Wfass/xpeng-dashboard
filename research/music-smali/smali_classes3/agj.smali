.class final Lagj;
.super Lahp;
.source "ObjectWriterImplInt32.java"


# static fields
.field static final a:Lagj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    sput-object v0, Lagj;->a:Lagj;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 17
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 26
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Integer;)V

    return-void
.end method
