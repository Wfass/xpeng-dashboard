.class public final Lcom/alibaba/fastjson2/internal/asm/FieldWriter;
.super Ljava/lang/Object;
.source "FieldWriter.java"


# instance fields
.field private final accessFlags:I

.field private final descriptorIndex:I

.field fv:Lcom/alibaba/fastjson2/internal/asm/FieldWriter;

.field private final nameIndex:I


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->accessFlags:I

    .line 71
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->nameIndex:I

    .line 72
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->descriptorIndex:I

    return-void
.end method


# virtual methods
.method putFieldInfo(Lcom/alibaba/fastjson2/internal/asm/ByteVector;)V
    .locals 2

    .line 84
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->accessFlags:I

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    return-void
.end method
