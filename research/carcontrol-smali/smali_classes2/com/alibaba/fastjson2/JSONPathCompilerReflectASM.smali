.class Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;
.super Lcom/alibaba/fastjson2/JSONPathCompilerReflect;
.source "JSONPathCompilerReflectASM.java"


# static fields
.field static final DESC_FIELD_READER:Ljava/lang/String;

.field static final DESC_FIELD_WRITER:Ljava/lang/String;

.field static final DESC_OBJECT_READER:Ljava/lang/String;

.field static final DESC_OBJECT_WRITER:Ljava/lang/String;

.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;

.field static final METHOD_SINGLE_NAME_PATH_TYPED_INIT:Ljava/lang/String;

.field static final THIS:I

.field static final TYPE_SINGLE_NAME_PATH_TYPED:Ljava/lang/String;

.field static final seed:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final classLoader:Lcom/alibaba/fastjson2/util/DynamicClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;

    .line 25
    invoke-static {}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->getInstance()Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;-><init>(Lcom/alibaba/fastjson2/util/DynamicClassLoader;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;

    .line 28
    const-class v0, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v0}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->DESC_OBJECT_READER:Ljava/lang/String;

    .line 29
    const-class v1, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-static {v1}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->DESC_FIELD_READER:Ljava/lang/String;

    .line 30
    const-class v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->DESC_OBJECT_WRITER:Ljava/lang/String;

    .line 31
    const-class v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-static {v3}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->DESC_FIELD_WRITER:Ljava/lang/String;

    .line 32
    const-class v4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;

    invoke-static {v4}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->TYPE_SINGLE_NAME_PATH_TYPED:Ljava/lang/String;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/String;Ljava/lang/Class;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->METHOD_SINGLE_NAME_PATH_TYPED_INIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/util/DynamicClassLoader;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->classLoader:Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    return-void
.end method

.method private gwGetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/writer/FieldWriter;)V
    .locals 7

    .line 271
    iget-object v0, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 272
    iget-object v1, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    .line 273
    iget-object p3, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 274
    invoke-static {p3}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xb6

    .line 278
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    .line 280
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private gwSetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 8

    .line 253
    iget-object v0, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 254
    iget-object v1, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 255
    iget-object p3, p3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 256
    invoke-static {p3}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v1}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0xb6

    .line 261
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, p2, :cond_1

    const/16 p2, 0x57

    .line 263
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb5

    .line 266
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private support(Ljava/lang/Class;)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->classLoader:Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected compileSingleNamePath(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPathSingleName;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 54
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->support(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super/range {p0 .. p2}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->compileSingleNamePath(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPathSingleName;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, v3, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    .line 63
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v6

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v7

    .line 66
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    .line 68
    new-instance v14, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;

    const/4 v8, 0x0

    invoke-direct {v14, v8}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;-><init>(Ljava/util/function/Function;)V

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSONPath_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    const-class v9, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    const/4 v15, 0x0

    if-eqz v9, :cond_3

    .line 76
    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    .line 78
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    .line 79
    new-array v12, v12, [C

    .line 80
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v15, v13, v12, v15}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v9, 0x2e

    .line 81
    aput-char v9, v12, v10

    .line 82
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8, v15, v13, v12, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v11, 0x2f

    .line 85
    aput-char v11, v12, v10

    move v13, v15

    :goto_0
    if-ge v13, v10, :cond_2

    .line 87
    aget-char v15, v12, v13

    if-ne v15, v9, :cond_1

    .line 88
    aput-char v11, v12, v13

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    goto :goto_0

    .line 91
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/lang/String;-><init>([C)V

    move-object v15, v8

    move-object v11, v9

    goto :goto_1

    :cond_3
    move-object v11, v8

    move-object v15, v11

    :goto_1
    const/16 v9, 0x34

    const/16 v10, 0x31

    .line 97
    sget-object v18, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->TYPE_SINGLE_NAME_PATH_TYPED:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v13, v8, [Ljava/lang/String;

    move-object v8, v14

    move-object/from16 v12, v18

    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    sget-object v8, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->METHOD_SINGLE_NAME_PATH_TYPED_INIT:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "<init>"

    const/16 v11, 0x40

    invoke-virtual {v14, v9, v10, v8, v11}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move-result-object v10

    const/16 v12, 0x19

    const/4 v13, 0x0

    .line 108
    invoke-virtual {v10, v12, v13}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 109
    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v13, 0x2

    .line 110
    invoke-virtual {v10, v12, v13}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v13, 0x3

    .line 111
    invoke-virtual {v10, v12, v13}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v9, 0x4

    .line 112
    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v9, 0x5

    .line 113
    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/4 v9, 0x6

    .line 114
    invoke-virtual {v10, v12, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v17, 0xb7

    const/16 v21, 0x0

    const-string v19, "<init>"

    move-object/from16 v16, v10

    move-object/from16 v20, v8

    .line 116
    invoke-virtual/range {v16 .. v21}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0xb1

    .line 118
    invoke-virtual {v10, v8}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 119
    invoke-virtual {v10, v13, v13}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMaxs(II)V

    if-eqz v6, :cond_e

    .line 123
    iget-object v13, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 126
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_4

    const-string/jumbo v9, "setInt"

    const-string v8, "(Ljava/lang/Object;I)V"

    const/4 v10, 0x1

    .line 127
    invoke-virtual {v14, v10, v9, v8, v11}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move-result-object v8

    .line 133
    invoke-virtual {v8, v12, v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v9, 0xc0

    .line 134
    invoke-virtual {v8, v9, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v9, 0x15

    const/4 v10, 0x2

    .line 135
    invoke-virtual {v8, v9, v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 137
    invoke-direct {v1, v8, v4, v6}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->gwSetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/16 v9, 0xb1

    .line 139
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 140
    invoke-virtual {v8, v10, v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMaxs(II)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    .line 142
    :goto_2
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_5

    const-string/jumbo v8, "setLong"

    const-string v9, "(Ljava/lang/Object;J)V"

    const/4 v10, 0x1

    .line 143
    invoke-virtual {v14, v10, v8, v9, v11}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move-result-object v8

    .line 149
    invoke-virtual {v8, v12, v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v9, 0xc0

    .line 150
    invoke-virtual {v8, v9, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v9, 0x16

    const/4 v12, 0x2

    .line 151
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 153
    invoke-direct {v1, v8, v4, v6}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->gwSetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/16 v9, 0xb1

    .line 155
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    .line 156
    invoke-virtual {v8, v12, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMaxs(II)V

    goto :goto_3

    :cond_5
    move v12, v10

    const/4 v10, 0x1

    :goto_3
    const-string/jumbo v8, "set"

    const-string v9, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 160
    invoke-virtual {v14, v10, v8, v9, v11}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move-result-object v8

    const/16 v9, 0x19

    .line 166
    invoke-virtual {v8, v9, v10}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v10, 0xc0

    .line 167
    invoke-virtual {v8, v10, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 168
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    .line 169
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v12, "java/lang/Number"

    if-ne v13, v9, :cond_6

    .line 170
    invoke-virtual {v8, v10, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string v25, "intValue"

    const-string v26, "()I"

    move-object/from16 v22, v8

    .line 171
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 172
    :cond_6
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_7

    const/16 v9, 0xc0

    .line 173
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string v25, "longValue"

    const-string v26, "()J"

    move-object/from16 v22, v8

    .line 174
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 175
    :cond_7
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_8

    const/16 v9, 0xc0

    .line 176
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string v25, "floatValue"

    const-string v26, "()F"

    move-object/from16 v22, v8

    .line 177
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 178
    :cond_8
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_9

    const/16 v9, 0xc0

    .line 179
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string v25, "doubleValue"

    const-string v26, "()D"

    move-object/from16 v22, v8

    .line 180
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 181
    :cond_9
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_a

    const/16 v9, 0xc0

    .line 182
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string/jumbo v25, "shortValue"

    const-string v26, "()S"

    move-object/from16 v22, v8

    .line 183
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 184
    :cond_a
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_b

    const/16 v9, 0xc0

    .line 185
    invoke-virtual {v8, v9, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Number"

    const-string v25, "byteValue"

    const-string v26, "()B"

    move-object/from16 v22, v8

    .line 186
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 187
    :cond_b
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_c

    const-string v9, "java/lang/Boolean"

    const/16 v10, 0xc0

    .line 188
    invoke-virtual {v8, v10, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Boolean"

    const-string v25, "booleanValue"

    const-string v26, "()Z"

    move-object/from16 v22, v8

    .line 189
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 190
    :cond_c
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v13, v9, :cond_d

    const-string v9, "java/lang/Character"

    const/16 v10, 0xc0

    .line 191
    invoke-virtual {v8, v10, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v23, 0xb6

    const/16 v27, 0x0

    const-string v24, "java/lang/Character"

    const-string v25, "charValue"

    const-string v26, "()C"

    move-object/from16 v22, v8

    .line 192
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    :cond_d
    :goto_4
    invoke-direct {v1, v8, v4, v6}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->gwSetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/16 v9, 0xb1

    .line 196
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    const/4 v9, 0x2

    .line 197
    invoke-virtual {v8, v9, v9}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMaxs(II)V

    :cond_e
    if-eqz v0, :cond_17

    .line 202
    iget-object v8, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-string v9, "eval"

    const-string v10, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v12, 0x1

    .line 206
    invoke-virtual {v14, v12, v9, v10, v11}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/fastjson2/internal/asm/MethodWriter;

    move-result-object v9

    const/16 v10, 0x19

    .line 212
    invoke-virtual {v9, v10, v12}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitVarInsn(II)V

    const/16 v10, 0xc0

    .line 213
    invoke-virtual {v9, v10, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitTypeInsn(ILjava/lang/String;)V

    .line 214
    invoke-direct {v1, v9, v4, v0}, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->gwGetValue(Lcom/alibaba/fastjson2/internal/asm/MethodWriter;Ljava/lang/String;Lcom/alibaba/fastjson2/writer/FieldWriter;)V

    .line 215
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_f

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Integer"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(I)Ljava/lang/Integer;"

    move-object/from16 v22, v9

    .line 216
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 217
    :cond_f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_10

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Long"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(J)Ljava/lang/Long;"

    move-object/from16 v22, v9

    .line 218
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 219
    :cond_10
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_11

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Float"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(F)Ljava/lang/Float;"

    move-object/from16 v22, v9

    .line 220
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 221
    :cond_11
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_12

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Double"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(D)Ljava/lang/Double;"

    move-object/from16 v22, v9

    .line 222
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 223
    :cond_12
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_13

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Short"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(S)Ljava/lang/Short;"

    move-object/from16 v22, v9

    .line 224
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 225
    :cond_13
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_14

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Byte"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(B)Ljava/lang/Byte;"

    move-object/from16 v22, v9

    .line 226
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 227
    :cond_14
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_15

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Boolean"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(Z)Ljava/lang/Boolean;"

    move-object/from16 v22, v9

    .line 228
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 229
    :cond_15
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_16

    const/16 v23, 0xb8

    const/16 v27, 0x0

    const-string v24, "java/lang/Character"

    const-string/jumbo v25, "valueOf"

    const-string v26, "(C)Ljava/lang/Character;"

    move-object/from16 v22, v9

    .line 230
    invoke-virtual/range {v22 .. v27}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_16
    :goto_5
    const/16 v4, 0xb0

    .line 233
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitInsn(I)V

    const/4 v4, 0x2

    .line 234
    invoke-virtual {v9, v4, v4}, Lcom/alibaba/fastjson2/internal/asm/MethodWriter;->visitMaxs(II)V

    .line 237
    :cond_17
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/internal/asm/ClassWriter;->toByteArray()[B

    move-result-object v4

    .line 239
    iget-object v8, v1, Lcom/alibaba/fastjson2/JSONPathCompilerReflectASM;->classLoader:Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    array-length v9, v4

    const/4 v10, 0x0

    invoke-virtual {v8, v15, v4, v10, v9}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v4

    .line 242
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    aget-object v4, v4, v10

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 243
    iget-object v9, v3, Lcom/alibaba/fastjson2/JSONPathSingleName;->path:Ljava/lang/String;

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v5, 0x3

    aput-object v6, v8, v5

    const/4 v5, 0x4

    aput-object v7, v8, v5

    const/4 v5, 0x5

    aput-object v0, v8, v5

    .line 244
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/JSONPath;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 246
    new-instance v4, Lcom/alibaba/fastjson2/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compile jsonpath error, path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONPathSingleName;->path:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", objectType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
