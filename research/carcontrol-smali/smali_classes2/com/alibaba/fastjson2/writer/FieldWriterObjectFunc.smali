.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObject;
.source "FieldWriterObjectFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Ljava/util/function/Function;

.field final isArray:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 29
    iput-object p11, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->function:Ljava/util/function/Function;

    .line 30
    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq p8, p1, :cond_1

    const-class p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq p8, p1, :cond_1

    const-class p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-eq p8, p1, :cond_1

    .line 33
    invoke-virtual {p8}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->isArray:Z

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;->function:Ljava/util/function/Function;

    return-object v0
.end method
