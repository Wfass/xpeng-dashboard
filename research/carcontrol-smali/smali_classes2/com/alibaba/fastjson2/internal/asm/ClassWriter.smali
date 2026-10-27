.class public Lcom/alibaba/fastjson2/internal/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# instance fields
.field private accessFlags:I

.field private firstField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

.field private firstMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

.field private interfaceCount:I

.field private interfaces:[I

.field private lastField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

.field private lastMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

.field private superClass:I

.field private final symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

.field private thisClass:I

.field private final typeProvider:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;-><init>(Lcom/alibaba/fastjson2/internal/asm/ClassWriter;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    .line 90
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->typeProvider:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 266
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "java/lang/Object"

    if-nez v1, :cond_0

    return-object v2

    .line 278
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    .line 281
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 284
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v2

    .line 269
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "java/lang/Object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "java/util/ArrayList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "java/util/List"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 239
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->typeProvider:Ljava/util/function/Function;

    if-eqz v1, :cond_3

    .line 243
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :cond_3
    if-nez v0, :cond_4

    .line 247
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_4
    return-object v0

    .line 234
    :pswitch_0
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 232
    :pswitch_1
    const-class p1, Ljava/util/ArrayList;

    return-object p1

    .line 230
    :pswitch_2
    const-class p1, Ljava/util/List;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7bc1d02 -> :sswitch_2
        0xbbd0c37 -> :sswitch_1
        0x7c015a33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toByteArray()[B
    .locals 7

    .line 152
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    .line 154
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x8

    .line 158
    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->fv:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move v4, v2

    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 164
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 165
    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->mv:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    goto :goto_1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->constantPool:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    .line 178
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->constantPoolCount:I

    const v5, 0xffff

    if-gt v1, v5, :cond_6

    .line 185
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;-><init>(I)V

    const v0, -0x35014542    # -8346975.0f

    .line 186
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v6, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->version:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 187
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->constantPool:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v6, v6, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->constantPool:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v6, v6, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    .line 188
    invoke-virtual {v0, v1, v2, v6}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByteArray([BII)V

    .line 194
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->accessFlags:I

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->thisClass:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->superClass:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 195
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move v0, v2

    .line 196
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaces:[I

    aget v1, v1, v0

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 199
    :cond_2
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    :goto_3
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->putFieldInfo(Lcom/alibaba/fastjson2/internal/asm/ByteVector;)V

    .line 203
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->fv:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move v1, v2

    :goto_4
    if-eqz v0, :cond_4

    .line 210
    iget v3, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 211
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->hasAsmInstructions:Z

    or-int/2addr v1, v3

    .line 212
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putMethodInfo(Lcom/alibaba/fastjson2/internal/asm/ByteVector;)V

    .line 213
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->mv:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    goto :goto_4

    .line 216
    :cond_4
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    if-nez v1, :cond_5

    .line 223
    iget-object v0, v5, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    return-object v0

    .line 221
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 180
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v3, v3, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", constantPoolCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 99
    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->version:I

    .line 100
    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->accessFlags:I

    .line 101
    iget-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p2, p1, p3}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->thisClass:I

    const/4 p1, 0x0

    const/4 p2, 0x7

    if-nez p4, :cond_0

    move p3, p1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {p3, p2, p4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    :goto_0
    iput p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->superClass:I

    if-eqz p5, :cond_1

    .line 103
    array-length p3, p5

    if-lez p3, :cond_1

    .line 104
    array-length p3, p5

    iput p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaceCount:I

    .line 105
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaces:[I

    .line 106
    :goto_1
    iget p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaceCount:I

    if-ge p1, p3, :cond_1

    .line 107
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->interfaces:[I

    iget-object p4, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    aget-object v0, p5, p1

    invoke-virtual {p4, p2, v0}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p4

    iget p4, p4, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    aput p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/FieldWriter;
    .locals 2

    .line 116
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    if-nez p1, :cond_0

    .line 119
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    iput-object v0, p1, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->fv:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    .line 123
    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->lastField:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

    return-object v0
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;
    .locals 7

    .line 132
    new-instance v6, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    if-nez p1, :cond_0

    .line 135
    iput-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    iput-object v6, p1, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->mv:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    .line 139
    :goto_0
    iput-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    return-object v6
.end method
