.class final Lagl;
.super Lahp;
.source "ObjectWriterImplInt32ValueArray.java"


# static fields
.field static final a:Lagl;

.field static final b:[B

.field static final c:J


# instance fields
.field private final d:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lagl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagl;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lagl;->a:Lagl;

    const-string v0, "[I"

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lagl;->b:[B

    .line 14
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lagl;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[I>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lahp;-><init>()V

    .line 19
    iput-object p1, p0, Lagl;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lagl;->b:[B

    sget-wide p4, Lagl;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 34
    :cond_1
    iget-object p3, p0, Lagl;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_2

    .line 35
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_0

    .line 37
    :cond_2
    check-cast p2, [I

    .line 40
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([I)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 51
    :cond_0
    iget-object p3, p0, Lagl;->d:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    .line 52
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_0

    .line 54
    :cond_1
    check-cast p2, [I

    .line 57
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([I)V

    return-void
.end method
