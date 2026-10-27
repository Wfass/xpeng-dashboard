.class public final Lcom/alibaba/fastjson2/internal/asm/MethodWriter;
.super Ljava/lang/Object;
.source "MethodWriter.java"


# instance fields
.field private final accessFlags:I

.field private final code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

.field private currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

.field private currentFrame:[I

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final firstBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

.field hasAsmInstructions:Z

.field private lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

.field private lastBytecodeOffset:I

.field private maxLocals:I

.field private maxStack:I

.field mv:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private previousFrame:[I

.field private stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

.field stackMapTableNumberOfEntries:I

.field private final symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v0, "<init>"

    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->accessFlags:I

    .line 144
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->nameIndex:I

    .line 145
    iput-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->name:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->descriptorIndex:I

    .line 147
    iput-object p4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 148
    new-instance p1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-direct {p1, p5}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 151
    invoke-static {p4}, Lcom/alibaba/fastjson2/internal/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 155
    :cond_1
    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxLocals:I

    .line 157
    new-instance p1, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->firstBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 158
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    new-instance v1, Lcom/alibaba/fastjson2/internal/asm/Edge;

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-object v2, v2, Lcom/alibaba/fastjson2/internal/asm/Label;->outgoingEdges:Lcom/alibaba/fastjson2/internal/asm/Edge;

    invoke-direct {v1, p1, v2}, Lcom/alibaba/fastjson2/internal/asm/Edge;-><init>(Lcom/alibaba/fastjson2/internal/asm/Label;Lcom/alibaba/fastjson2/internal/asm/Edge;)V

    iput-object v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->outgoingEdges:Lcom/alibaba/fastjson2/internal/asm/Edge;

    return-void
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .locals 3

    .line 617
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    .line 618
    new-instance v1, Lcom/alibaba/fastjson2/internal/asm/Frame;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/internal/asm/Frame;-><init>(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    iput-object v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    .line 619
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v2, v2, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Label;->resolve([BI)Z

    .line 620
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iput-object v0, v1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 621
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    return-void
.end method

.method private putAbstractTypes(II)V
    .locals 9

    :goto_0
    if-ge p1, p2, :cond_a

    .line 771
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    aget v0, v0, p1

    .line 772
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/high16 v2, -0x4000000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1a

    const/high16 v3, 0x800000

    const/high16 v4, 0x3c00000

    const v5, 0xfffff

    const/4 v6, 0x7

    if-nez v2, :cond_3

    and-int v2, v0, v5

    and-int/2addr v0, v4

    const/high16 v4, 0x400000

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/high16 v3, 0xc00000

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8

    .line 787
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->typeTable:[Lcom/alibaba/fastjson2/internal/asm/Symbol;

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->data:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto/16 :goto_3

    .line 790
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 783
    :cond_1
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v3, v1, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->typeTable:[Lcom/alibaba/fastjson2/internal/asm/Symbol;

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    .line 784
    invoke-virtual {v1, v6, v2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto/16 :goto_3

    .line 779
    :cond_2
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto/16 :goto_3

    .line 794
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-lez v2, :cond_4

    const/16 v2, 0x5b

    .line 796
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v8

    goto :goto_1

    :cond_4
    and-int v2, v0, v4

    if-ne v2, v3, :cond_5

    const/16 v2, 0x4c

    .line 800
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v3, v3, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->typeTable:[Lcom/alibaba/fastjson2/internal/asm/Symbol;

    and-int/2addr v0, v5

    aget-object v0, v3, v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    .line 801
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3b

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    and-int/2addr v0, v5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 830
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    const/16 v0, 0x53

    .line 815
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x43

    .line 812
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x42

    .line 809
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x5a

    .line 806
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v0, 0x4a

    .line 824
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v0, 0x44

    .line 827
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v0, 0x46

    .line 821
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v0, 0x49

    .line 818
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    :goto_2
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    .line 835
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putFrame()V
    .locals 16

    move-object/from16 v0, p0

    .line 679
    iget-object v1, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    .line 680
    aget v4, v1, v4

    .line 682
    iget v5, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 683
    aget v1, v1, v6

    goto :goto_0

    .line 684
    :cond_0
    aget v1, v1, v6

    iget-object v5, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 685
    :goto_0
    iget-object v5, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v2

    sub-int v7, v3, v5

    const/16 v8, 0xfc

    const/16 v9, 0xf8

    const/16 v10, 0xf7

    const/16 v11, 0x40

    const/16 v12, 0xff

    const/16 v13, 0xfb

    if-nez v4, :cond_2

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v2, v8

    goto :goto_2

    :pswitch_1
    if-ge v1, v11, :cond_1

    move v2, v6

    goto :goto_2

    :cond_1
    move v2, v13

    goto :goto_2

    :pswitch_2
    move v2, v9

    goto :goto_2

    :cond_2
    if-nez v7, :cond_4

    if-ne v4, v2, :cond_4

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v10

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v12

    :goto_2
    if-eq v2, v12, :cond_6

    const/4 v15, 0x3

    :goto_3
    if-ge v6, v5, :cond_6

    if-ge v6, v3, :cond_6

    .line 717
    iget-object v14, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    aget v14, v14, v15

    iget-object v12, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->previousFrame:[I

    aget v12, v12, v15

    if-eq v14, v12, :cond_5

    const/16 v2, 0xff

    goto :goto_4

    :cond_5
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0xff

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v2, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_a

    if-eq v2, v9, :cond_9

    if-eq v2, v13, :cond_8

    if-eq v2, v8, :cond_7

    .line 754
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 755
    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putAbstractTypes(II)V

    .line 756
    iget-object v1, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/2addr v4, v3

    .line 757
    invoke-direct {v0, v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    .line 747
    iget-object v4, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/2addr v7, v13

    .line 748
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v4

    .line 749
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/2addr v5, v2

    add-int/2addr v3, v2

    .line 750
    invoke-direct {v0, v5, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 739
    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_5

    .line 742
    :cond_9
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/2addr v7, v13

    .line 743
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v2

    .line 744
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_5

    .line 733
    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 734
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v2

    .line 735
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 736
    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 729
    :cond_b
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/2addr v1, v11

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 730
    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 726
    :cond_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private visitSwitchInsn(Lcom/alibaba/fastjson2/internal/asm/Label;[Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    .line 501
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 502
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/internal/asm/Label;->getCanonicalInstance()Lcom/alibaba/fastjson2/internal/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    .line 503
    :goto_0
    array-length p1, p2

    if-ge v2, p1, :cond_0

    .line 504
    aget-object p1, p2, v2

    .line 505
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 506
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/internal/asm/Label;->getCanonicalInstance()Lcom/alibaba/fastjson2/internal/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_1
    return-void
.end method


# virtual methods
.method computeMethodInfoSize()I
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    const/16 v1, 0x8

    if-lez v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    const v2, 0xffff

    if-gt v0, v2, :cond_1

    .line 858
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 862
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v3, "StackMapTable"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 865
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v2, v2, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int v1, v0, v2

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .line 856
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v2, v2, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v2, v2, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method putMethodInfo(Lcom/alibaba/fastjson2/internal/asm/ByteVector;)V
    .locals 5

    .line 879
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->accessFlags:I

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 882
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 886
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 887
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    if-lez v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    .line 892
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    if-eqz v3, :cond_1

    .line 894
    iget v3, v3, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 897
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v4, "Code"

    .line 898
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v3

    .line 899
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxStack:I

    .line 900
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxLocals:I

    .line 901
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v3, v3, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    .line 902
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v3, v3, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v4, v4, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    .line 903
    invoke-virtual {v0, v3, v2, v4}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByteArray([BII)V

    .line 904
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 905
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 906
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v1, "StackMapTable"

    .line 910
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 909
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    .line 912
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 913
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    .line 914
    invoke-virtual {p1, v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByteArray([BII)V

    :cond_2
    return-void
.end method

.method visitAbstractType(II)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    aput p2, v0, p1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p2

    .line 243
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget p4, p2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {p3, p1, p4}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 245
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz p3, :cond_0

    .line 246
    iget-object p3, p3, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 p4, 0x0

    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {p3, p1, p4, p2, v0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_0
    return-void
.end method

.method visitFrameEnd()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableEntries:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->putFrame()V

    .line 669
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->previousFrame:[I

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method visitFrameStart(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 639
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 640
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 643
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 644
    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public visitIincInsn(II)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0x84

    const/16 v1, 0xff

    if-gt p1, v1, :cond_1

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_1

    const/16 v1, -0x80

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    goto :goto_1

    .line 473
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 478
    :goto_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz p2, :cond_2

    .line 479
    iget-object p2, p2, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_2
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    const/16 v0, 0xac

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_2
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x21

    goto :goto_0

    :cond_0
    move v0, p1

    .line 283
    :goto_0
    iget-short v1, p2, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v2, v2, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "not supported"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_3

    .line 289
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 290
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v3, p1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v3, v2}, Lcom/alibaba/fastjson2/internal/asm/Label;->put(Lcom/alibaba/fastjson2/internal/asm/ByteVector;IZ)V

    goto :goto_2

    .line 295
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 296
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v3, p1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v3, v1}, Lcom/alibaba/fastjson2/internal/asm/Label;->put(Lcom/alibaba/fastjson2/internal/asm/ByteVector;IZ)V

    .line 300
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz p1, :cond_6

    .line 302
    iget-object p1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    .line 304
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/internal/asm/Label;->getCanonicalInstance()Lcom/alibaba/fastjson2/internal/asm/Label;

    move-result-object p1

    iget-short v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    .line 306
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    const/16 p1, 0xa7

    if-eq v0, p1, :cond_4

    .line 311
    new-instance v2, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    :cond_4
    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    :cond_5
    if-ne v0, p1, :cond_6

    .line 320
    invoke-direct {p0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_6
    return-void
.end method

.method public visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v2, v2, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Label;->resolve([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->hasAsmInstructions:Z

    .line 330
    iget-short v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_2

    .line 335
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-short v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    iget-short v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    .line 344
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iput-object v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    return-void

    .line 350
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_4

    .line 354
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_3

    .line 356
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-short v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    iget-short v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    .line 358
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iput-object v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    .line 359
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iput-object p1, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->nextBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 364
    :cond_4
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 366
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 368
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Frame;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/internal/asm/Frame;-><init>(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    return-void
.end method

.method public visitLdcInsn(I)V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 444
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantIntegerOrFloat(I)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p1

    .line 445
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    const/16 v1, 0x12

    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_0

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_1
    return-void
.end method

.method public visitLdcInsn(J)V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 460
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantLongOrDouble(J)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p1

    .line 461
    iget p2, p1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 464
    iget-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz p2, :cond_0

    .line 465
    iget-object p2, p2, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/16 v0, 0x12

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Class;)V
    .locals 5

    .line 416
    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson2/internal/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lcom/alibaba/fastjson2/internal/asm/Type;

    move-result-object p1

    .line 418
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 422
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Type;->sort:I

    const/16 v2, 0xa

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Type;->sort:I

    :goto_0
    const/4 v3, 0x7

    if-ne v0, v2, :cond_1

    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v2, p1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v4, p1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueBegin:I

    iget p1, p1, Lcom/alibaba/fastjson2/internal/asm/Type;->valueEnd:I

    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p1

    goto :goto_1

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/internal/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p1

    .line 429
    :goto_1
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    const/16 v2, 0x100

    const/16 v3, 0x12

    if-lt v0, v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_2

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    .line 436
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_3
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/String;)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 401
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p1

    .line 402
    iget v0, p1, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    const/16 v1, 0x12

    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_0

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lcom/alibaba/fastjson2/internal/asm/Label;[I[Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 486
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByteArray([BII)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Label;->put(Lcom/alibaba/fastjson2/internal/asm/ByteVector;IZ)V

    .line 488
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 489
    :goto_0
    array-length v0, p3

    if-ge v3, v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 491
    aget-object v0, p3, v3

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/fastjson2/internal/asm/Label;->put(Lcom/alibaba/fastjson2/internal/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitSwitchInsn(Lcom/alibaba/fastjson2/internal/asm/Label;[Lcom/alibaba/fastjson2/internal/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 7

    .line 519
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->firstBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    iget-object p1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    .line 520
    iget-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->accessFlags:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxLocals:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->setInputFrameFromDescriptor(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;ILjava/lang/String;I)V

    .line 521
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->accept(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;)V

    .line 529
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->firstBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 530
    sget-object p2, Lcom/alibaba/fastjson2/internal/asm/Label;->EMPTY_LIST:Lcom/alibaba/fastjson2/internal/asm/Label;

    iput-object p2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextListElement:Lcom/alibaba/fastjson2/internal/asm/Label;

    const/4 p2, 0x0

    move v0, p2

    .line 532
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/Label;->EMPTY_LIST:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eq p1, v1, :cond_3

    .line 535
    iget-object v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextListElement:Lcom/alibaba/fastjson2/internal/asm/Label;

    const/4 v2, 0x0

    .line 536
    iput-object v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextListElement:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 538
    iget-short v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    .line 540
    iget-object v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iget-object v2, v2, Lcom/alibaba/fastjson2/internal/asm/Frame;->inputStack:[I

    array-length v2, v2

    iget-short v3, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->outputStackMax:S

    add-int/2addr v2, v3

    if-le v2, v0, :cond_0

    move v0, v2

    .line 545
    :cond_0
    iget-object v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->outgoingEdges:Lcom/alibaba/fastjson2/internal/asm/Edge;

    :goto_1
    if-eqz v2, :cond_2

    .line 547
    iget-object v3, v2, Lcom/alibaba/fastjson2/internal/asm/Edge;->successor:Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/internal/asm/Label;->getCanonicalInstance()Lcom/alibaba/fastjson2/internal/asm/Label;

    move-result-object v3

    .line 548
    iget-object v4, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    iget-object v6, v3, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    .line 549
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson2/internal/asm/Frame;->merge(Lcom/alibaba/fastjson2/internal/asm/SymbolTable;Lcom/alibaba/fastjson2/internal/asm/Frame;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    iget-object v4, v3, Lcom/alibaba/fastjson2/internal/asm/Label;->nextListElement:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-nez v4, :cond_1

    .line 553
    iput-object v1, v3, Lcom/alibaba/fastjson2/internal/asm/Label;->nextListElement:Lcom/alibaba/fastjson2/internal/asm/Label;

    move-object v1, v3

    .line 556
    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson2/internal/asm/Edge;->nextEdge:Lcom/alibaba/fastjson2/internal/asm/Edge;

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_0

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->firstBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    :goto_2
    if-eqz p1, :cond_8

    .line 565
    iget-short v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    const/16 v2, 0xa

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 567
    iget-object v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/internal/asm/Frame;->accept(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;)V

    .line 569
    :cond_4
    iget-short v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_7

    .line 571
    iget-object v1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 572
    iget v2, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    if-nez v1, :cond_5

    .line 573
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    goto :goto_3

    :cond_5
    iget v1, v1, Lcom/alibaba/fastjson2/internal/asm/Label;->bytecodeOffset:I

    :goto_3
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_7

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_6

    .line 577
    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v5, v5, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    aput-byte p2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 579
    :cond_6
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget-object v4, v4, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    const/16 v5, -0x41

    aput-byte v5, v4, v1

    .line 582
    invoke-virtual {p0, v2, p2, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    .line 583
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentFrame:[I

    const/high16 v4, 0x800000

    iget-object v5, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const-string v6, "java/lang/Throwable"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, v1

    .line 584
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFrameEnd()V

    .line 586
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 589
    :cond_7
    iget-object p1, p1, Lcom/alibaba/fastjson2/internal/asm/Label;->nextBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    goto :goto_2

    .line 592
    :cond_8
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 258
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    if-eqz p5, :cond_0

    const/16 p5, 0xb

    goto :goto_0

    :cond_0
    const/16 p5, 0xa

    :goto_0
    invoke-virtual {v0, p5, p2, p3, p4}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_1

    .line 265
    iget-object p5, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, p2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {p5, p4, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object p4

    .line 266
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/internal/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    goto :goto_1

    .line 268
    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget p5, p2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {p4, p1, p5}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 271
    :goto_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz p4, :cond_2

    .line 272
    iget-object p4, p4, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iget-object p5, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_2
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson2/internal/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lcom/alibaba/fastjson2/internal/asm/Symbol;

    move-result-object p2

    .line 231
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v1, p2, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->symbolTable:Lcom/alibaba/fastjson2/internal/asm/SymbolTable;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x36

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    :goto_0
    add-int/2addr v0, p2

    .line 202
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_1

    :cond_1
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->code:Lcom/alibaba/fastjson2/internal/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->put11(II)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->currentBasicBlock:Lcom/alibaba/fastjson2/internal/asm/Label;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, v0, Lcom/alibaba/fastjson2/internal/asm/Label;->frame:Lcom/alibaba/fastjson2/internal/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/alibaba/fastjson2/internal/asm/Frame;->execute(IILcom/alibaba/fastjson2/internal/asm/Symbol;Lcom/alibaba/fastjson2/internal/asm/SymbolTable;)V

    :cond_3
    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x37

    if-eq p1, v0, :cond_5

    const/16 v0, 0x39

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x2

    .line 222
    :goto_3
    iget p1, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxLocals:I

    if-le p2, p1, :cond_6

    .line 223
    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->maxLocals:I

    :cond_6
    return-void
.end method
