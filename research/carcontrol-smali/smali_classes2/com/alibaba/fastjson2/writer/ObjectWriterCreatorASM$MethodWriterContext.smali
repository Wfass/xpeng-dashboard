.class Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;
.super Ljava/lang/Object;
.source "ObjectWriterCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodWriterContext"
.end annotation


# instance fields
.field final classNameType:Ljava/lang/String;

.field final jsonb:Z

.field maxVariant:I

.field final mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

.field final objectClass:Ljava/lang/Class;

.field final objectFeatures:J

.field final provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field final variants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;JLjava/lang/String;Lcom/alibaba/fastjson2/internal/asm/MethodWriter;IZ)V
    .locals 1

    .line 3766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3754
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->variants:Ljava/util/Map;

    .line 3767
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3768
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->objectClass:Ljava/lang/Class;

    .line 3769
    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->objectFeatures:J

    .line 3770
    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->classNameType:Ljava/lang/String;

    .line 3771
    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    .line 3772
    iput-boolean p8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->jsonb:Z

    .line 3773
    iput p7, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;ILjava/lang/reflect/Type;)V
    .locals 0

    .line 3748
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->loadFieldType(ILjava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;ILjava/lang/Class;)V
    .locals 0

    .line 3748
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->loadFieldClass(ILjava/lang/Class;)V

    return-void
.end method

.method private loadFieldClass(ILjava/lang/Class;)V
    .locals 3

    .line 3899
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3900
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Class;)V

    return-void

    .line 3903
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3904
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->classNameType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;->fieldWriter(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_WRITER:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {p2, v2, v0, p1, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    sget-object p2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_FIELD_WRITER:Ljava/lang/String;

    const-string v0, "fieldClass"

    const-string v1, "Ljava/lang/Class;"

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadFieldType(ILjava/lang/reflect/Type;)V
    .locals 3

    .line 3889
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3890
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(Ljava/lang/Class;)V

    return-void

    .line 3893
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3894
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->classNameType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;->fieldWriter(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_WRITER:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-virtual {p2, v2, v0, p1, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    sget-object p2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_FIELD_WRITER:Ljava/lang/String;

    const-string v0, "fieldType"

    const-string v1, "Ljava/lang/reflect/Type;"

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method genIsDisabled(JLcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 3

    .line 3861
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v1, "CONTEXT_FEATURES"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3862
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(J)V

    .line 3863
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x7f

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3864
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3865
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x94

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3866
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x9a

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    return-void
.end method

.method genIsEnabled(JLcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 3

    .line 3850
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v1, "CONTEXT_FEATURES"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3851
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(J)V

    .line 3852
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x7f

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3853
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3854
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x94

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    if-eqz p3, :cond_0

    .line 3856
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x99

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    :cond_0
    return-void
.end method

.method genIsEnabled(JLcom/alibaba/fastjson2/internal/asm/Label;Lcom/alibaba/fastjson2/internal/asm/Label;)V
    .locals 3

    .line 3870
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v1, "CONTEXT_FEATURES"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3871
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(J)V

    .line 3872
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x7f

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3873
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3874
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x94

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3875
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x99

    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3876
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0xa7

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    return-void
.end method

.method genIsEnabledAndAssign(JI)V
    .locals 3

    .line 3880
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v1, "CONTEXT_FEATURES"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3881
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(J)V

    .line 3882
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x7f

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3883
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3884
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x94

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3885
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 p2, 0x36

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    return-void
.end method

.method genVariantsMethodBefore(Z)V
    .locals 13

    .line 3801
    new-instance v0, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    new-instance v1, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    .line 3803
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3804
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    sget-object v7, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_JSON_WRITER:Ljava/lang/String;

    const/16 v6, 0xb6

    const-string v8, "getFeatures"

    const-string v9, "()J"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3805
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v5, "CONTEXT_FEATURES"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x37

    invoke-virtual {v2, v7, v6}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v2, 0xa7

    const/16 v6, 0x36

    const/4 v7, 0x3

    const/16 v8, 0x99

    if-nez p1, :cond_0

    .line 3808
    new-instance p1, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    new-instance v9, Lcom/alibaba/fastjson2/internal/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson2/internal/asm/Label;-><init>()V

    .line 3810
    iget-object v10, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v10, v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3811
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0xb4

    sget-object v10, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_JSON_WRITER:Ljava/lang/String;

    const-string/jumbo v11, "utf8"

    const-string v12, "Z"

    invoke-virtual {v3, v4, v10, v11, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v3, v8, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3814
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x16

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3815
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLdcInsn(J)V

    .line 3816
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3817
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3818
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x94

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3819
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x9a

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3820
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3821
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v3, v2, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3823
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3824
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3826
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3827
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v3, "UTF8_DIRECT"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var2(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3831
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    const-string p1, "WRITE_DEFAULT_VALUE"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->genIsEnabledAndAssign(JI)V

    .line 3832
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const/16 v4, 0x15

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3833
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v8, v0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3835
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 3836
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    const-string v3, "WRITE_NULLS"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v6, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 3837
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitJumpInsn(ILcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3839
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    .line 3841
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v4, v6

    .line 3844
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->var(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v4, v5, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->genIsEnabledAndAssign(JI)V

    .line 3846
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->mw:Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitLabel(Lcom/alibaba/fastjson2/internal/asm/Label;)V

    return-void
.end method

.method var(Ljava/lang/Object;)I
    .locals 2

    .line 3777
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 3779
    iget v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3780
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->variants:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3784
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    goto :goto_1

    .line 3782
    :cond_1
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    .line 3787
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method var2(Ljava/lang/Object;)I
    .locals 2

    .line 3791
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 3793
    iget v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3794
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->variants:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3795
    iget p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM$MethodWriterContext;->maxVariant:I

    .line 3797
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
