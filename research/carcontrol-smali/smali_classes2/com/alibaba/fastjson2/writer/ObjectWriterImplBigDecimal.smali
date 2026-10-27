.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplBigDecimal.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;


# instance fields
.field private final format:Ljava/text/DecimalFormat;

.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    .line 20
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Ljava/util/function/Function;

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 37
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    goto :goto_0

    .line 40
    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    .line 43
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p5, p6, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 26
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Ljava/util/function/Function;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    goto :goto_0

    .line 29
    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    .line 31
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p5, p6, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method
