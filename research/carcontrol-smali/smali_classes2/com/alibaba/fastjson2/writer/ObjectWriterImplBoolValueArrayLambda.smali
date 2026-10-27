.class Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplBoolValueArrayLambda.java"


# instance fields
.field private final functionGet:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final functionSize:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Ljava/util/function/ToIntFunction;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 48
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 51
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Ljava/util/function/BiFunction;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p5, p2, p6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p4, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 55
    :cond_1
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->JSONB_TYPE_NAME_BYTES:[B

    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->JSONB_TYPE_HASH:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 33
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 34
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 36
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Ljava/util/function/BiFunction;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p5, p2, p6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    .line 37
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
