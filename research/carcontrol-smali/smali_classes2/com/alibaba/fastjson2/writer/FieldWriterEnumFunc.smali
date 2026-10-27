.class final Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterEnum;
.source "FieldWriterEnumFunc.java"


# instance fields
.field final function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 25
    iput-object p11, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;->function:Ljava/util/function/Function;

    return-object v0
.end method
