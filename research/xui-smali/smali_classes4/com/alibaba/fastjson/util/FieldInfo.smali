.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I

.field public final unwrapped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .line 57
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 58
    if-gez p6, :cond_0

    .line 59
    const/4 p6, 0x0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 64
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 65
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 67
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 68
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 69
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 70
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 72
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 74
    if-eqz p5, :cond_3

    .line 75
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 76
    .local v2, "modifiers":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 77
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 78
    .end local v2    # "modifiers":I
    goto :goto_2

    .line 79
    :cond_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 83
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 85
    if-eqz p5, :cond_4

    .line 86
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 89
    :cond_4
    const-string v2, ""

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 90
    if-nez p5, :cond_5

    move-object v2, v1

    goto :goto_3

    :cond_5
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {p5, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    :goto_3
    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 91
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 92
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 94
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 95
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p11, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p11, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p12, "genericInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p11

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v6, 0x0

    iput v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 126
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "fieldName":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    nop

    .end local p1    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v7    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    move-object/from16 v8, p1

    :cond_1
    move-object v7, v8

    .end local p1    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_0
    if-gez p6, :cond_2

    .line 134
    const/4 v8, 0x0

    .end local p6    # "ordinal":I
    .local v8, "ordinal":I
    goto :goto_1

    .line 137
    .end local v8    # "ordinal":I
    .restart local p6    # "ordinal":I
    :cond_2
    move/from16 v8, p6

    .end local p6    # "ordinal":I
    .restart local v8    # "ordinal":I
    :goto_1
    iput-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 138
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 139
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 140
    iput v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 141
    move/from16 v9, p7

    iput v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 142
    move/from16 v10, p8

    iput v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 143
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 144
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 146
    if-eqz v2, :cond_7

    .line 147
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 148
    .local v14, "modifiers":I
    and-int/lit8 v15, v14, 0x1

    if-nez v15, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v15, v6

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v15, 0x1

    :goto_3
    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 149
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v15

    if-nez v15, :cond_6

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_4

    :cond_5
    move v15, v6

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v15, 0x1

    :goto_5
    iput-boolean v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 151
    .end local v14    # "modifiers":I
    goto :goto_6

    .line 152
    :cond_7
    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 153
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result v14

    iput-boolean v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 156
    :goto_6
    if-eqz v5, :cond_8

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 157
    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto :goto_7

    .line 159
    :cond_8
    const-string v14, ""

    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 162
    :goto_7
    const/4 v14, 0x0

    .line 163
    .local v14, "format":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v15

    .line 165
    .local v15, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/16 v16, 0x0

    .line 166
    .local v16, "jsonDirect":Z
    if-eqz v15, :cond_a

    .line 167
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 170
    const/4 v13, 0x0

    .line 172
    .end local v14    # "format":Ljava/lang/String;
    .local v13, "format":Ljava/lang/String;
    move-object v14, v13

    .end local v13    # "format":Ljava/lang/String;
    .restart local v14    # "format":Ljava/lang/String;
    :cond_9
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v13

    .line 173
    .end local v16    # "jsonDirect":Z
    .local v13, "jsonDirect":Z
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v6

    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 174
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_8

    .line 176
    .end local v13    # "jsonDirect":Z
    .restart local v16    # "jsonDirect":Z
    :cond_a
    const/4 v13, 0x0

    .line 177
    .end local v16    # "jsonDirect":Z
    .restart local v13    # "jsonDirect":Z
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 178
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 180
    :goto_8
    iput-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 184
    if-eqz v1, :cond_b

    .line 185
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 188
    :cond_b
    if-eqz v2, :cond_c

    .line 189
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 192
    :cond_c
    const/4 v5, 0x0

    .line 195
    .local v5, "getOnly":Z
    if-eqz v1, :cond_10

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v19, v6

    .local v19, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v6

    move/from16 v20, v5

    const/4 v5, 0x1

    if-ne v6, v5, :cond_d

    .line 198
    .end local v5    # "getOnly":Z
    .local v20, "getOnly":Z
    move-object/from16 v5, v19

    const/4 v6, 0x0

    aget-object v16, v5, v6

    .line 199
    .end local v19    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v16, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object v18, v18, v6

    .line 207
    .local v18, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v21, v7

    move-object/from16 v7, v18

    const/16 v18, 0x1

    goto :goto_a

    .line 200
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v19    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_d
    move-object/from16 v5, v19

    const/4 v6, 0x0

    .end local v19    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    move-object/from16 v21, v7

    const/4 v7, 0x2

    .end local v7    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    if-ne v6, v7, :cond_f

    const/4 v6, 0x0

    aget-object v7, v5, v6

    const-class v6, Ljava/lang/String;

    if-ne v7, v6, :cond_f

    const/16 v18, 0x1

    aget-object v6, v5, v18

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_e

    .line 201
    const/4 v6, 0x0

    aget-object v7, v5, v6

    move-object/from16 v16, v7

    .local v7, "fieldType":Ljava/lang/reflect/Type;
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_a

    .line 203
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    const/16 v18, 0x1

    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    .line 204
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 205
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    const/16 v17, 0x1

    .line 207
    .end local v20    # "getOnly":Z
    .local v17, "getOnly":Z
    move/from16 v20, v17

    .end local v17    # "getOnly":Z
    .restart local v20    # "getOnly":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 208
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_b

    .line 209
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "getOnly":Z
    .end local v21    # "name":Ljava/lang/String;
    .local v5, "getOnly":Z
    .local v7, "name":Ljava/lang/String;
    :cond_10
    move/from16 v20, v5

    move-object/from16 v21, v7

    const/16 v18, 0x1

    .end local v5    # "getOnly":Z
    .end local v7    # "name":Ljava/lang/String;
    .restart local v20    # "getOnly":Z
    .restart local v21    # "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    .line 210
    .restart local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 211
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v20

    .line 214
    .end local v16    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "getOnly":Z
    .restart local v5    # "getOnly":Z
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    move-object/from16 v6, v16

    move/from16 v5, v20

    iput-boolean v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 215
    if-eqz v13, :cond_11

    const-class v1, Ljava/lang/String;

    if-ne v6, v1, :cond_11

    move/from16 v1, v18

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 217
    if-eqz v3, :cond_12

    const-class v1, Ljava/lang/Object;

    if-ne v6, v1, :cond_12

    instance-of v1, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_12

    .line 218
    move-object v1, v7

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 219
    .local v1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 220
    .local v2, "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_12

    .line 221
    move-object/from16 v22, v1

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .end local v1    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .local v22, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 222
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 224
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 225
    return-void

    .line 229
    .end local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v22    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_12
    move-object v1, v7

    .line 231
    .local v1, "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v2, v7, Ljava/lang/Class;

    if-nez v2, :cond_15

    .line 232
    if-eqz v4, :cond_13

    move-object v2, v4

    goto :goto_d

    :cond_13
    move-object v2, v3

    :goto_d
    move-object/from16 v23, v1

    move-object/from16 v1, p12

    invoke-static {v3, v2, v7, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 234
    .end local v1    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    if-eq v2, v7, :cond_16

    .line 235
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_14

    .line 236
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_e

    .line 237
    :cond_14
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_16

    .line 238
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_e

    .line 243
    .end local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v1    # "genericFieldType":Ljava/lang/reflect/Type;
    :cond_15
    move-object/from16 v23, v1

    move-object/from16 v2, v23

    .end local v1    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    :cond_16
    :goto_e
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 244
    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 246
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 247
    return-void
.end method

.method private static getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 9
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 351
    .local p1, "genericInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    const/4 v1, 0x0

    .line 355
    .local v1, "changed":Z
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 356
    aget-object v2, p0, v0

    .line 357
    .local v2, "typeArg":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 358
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 359
    .local v3, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 360
    .local v4, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v4, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v5

    .line 361
    .local v5, "p_changed":Z
    if-eqz v5, :cond_1

    .line 362
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v6, p0, v0

    .line 363
    const/4 v1, 0x1

    .line 365
    .end local v3    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    .end local v5    # "p_changed":Z
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_3

    .line 366
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, p0, v0

    .line 368
    const/4 v1, 0x1

    .line 355
    .end local v2    # "typeArg":Ljava/lang/reflect/Type;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_4
    return v1

    .line 352
    .end local v1    # "changed":Z
    :cond_5
    :goto_2
    return v0
.end method

.method private static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 10
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .line 377
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 381
    :cond_0
    const/4 v1, 0x0

    .line 382
    .local v1, "changed":Z
    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "changed":Z
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_6

    .line 383
    aget-object v3, p0, v1

    .line 384
    .local v3, "typeArg":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    .line 385
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 386
    .local v4, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 387
    .local v5, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v5, p1, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v6

    .line 388
    .local v6, "p_changed":Z
    if-eqz v6, :cond_1

    .line 389
    new-instance v7, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v7, p0, v1

    .line 390
    const/4 v2, 0x1

    .line 392
    .end local v4    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    .end local v6    # "p_changed":Z
    :cond_1
    goto :goto_2

    :cond_2
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_5

    .line 393
    move v4, v2

    move v2, v0

    .local v2, "j":I
    .local v4, "changed":Z
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 394
    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    aget-object v5, p2, v2

    aput-object v5, p0, v1

    .line 396
    const/4 v4, 0x1

    .line 393
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v2    # "j":I
    .end local v3    # "typeArg":Ljava/lang/reflect/Type;
    :cond_4
    move v2, v4

    .end local v4    # "changed":Z
    .local v2, "changed":Z
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    :cond_6
    return v2

    .line 378
    .end local v2    # "changed":Z
    :cond_7
    :goto_3
    return v0
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 278
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 282
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "genericInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 286
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 287
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 288
    .local v0, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 289
    .local v2, "componentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v2, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 290
    .local v3, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v2, v3, :cond_1

    .line 291
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 292
    .local v1, "fieldTypeX":Ljava/lang/reflect/Type;
    return-object v1

    .line 295
    .end local v1    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_1
    return-object p2

    .line 298
    .end local v0    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v3    # "componentTypeX":Ljava/lang/reflect/Type;
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    return-object p2

    .line 302
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 303
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 304
    .local v0, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 305
    .local v2, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 307
    .local v3, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 308
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    nop

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 309
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 310
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object p2, v5, v1

    .line 311
    return-object p2

    .line 308
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "i":I
    .end local v2    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    .line 317
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 319
    .local v0, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 323
    .local v1, "arguments":[Ljava/lang/reflect/Type;
    invoke-static {v1, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v2

    .line 325
    .local v2, "changed":Z
    if-nez v2, :cond_8

    .line 326
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_6

    .line 327
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 328
    .local v3, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .restart local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    goto :goto_2

    .line 329
    .end local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_7

    .line 330
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 331
    .restart local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    goto :goto_1

    .line 333
    .end local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :cond_7
    move-object v3, v0

    .line 334
    .restart local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 337
    .restart local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v2

    .line 340
    .end local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_8
    if-eqz v2, :cond_9

    .line 341
    new-instance v3, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 342
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object p2, v3

    .line 343
    return-object p2

    .line 347
    .end local v0    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "arguments":[Ljava/lang/reflect/Type;
    .end local v2    # "changed":Z
    :cond_9
    return-object p2

    .line 283
    :cond_a
    :goto_3
    return-object p2
.end method

.method private static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 406
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 408
    .local v0, "gd":Ljava/lang/reflect/GenericDeclaration;
    const/4 v1, 0x0

    .line 409
    .local v1, "class_gd":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 410
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Class;

    .line 413
    :cond_0
    const/4 v2, 0x0

    .line 414
    .local v2, "arguments":[Ljava/lang/reflect/Type;
    if-ne v1, p0, :cond_1

    .line 415
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_4

    .line 416
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 417
    .local v3, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 418
    .end local v3    # "ptype":Ljava/lang/reflect/ParameterizedType;
    goto :goto_1

    .line 420
    :cond_1
    move-object v3, v2

    move-object v2, p0

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "arguments":[Ljava/lang/reflect/Type;
    :goto_0
    if-eqz v2, :cond_3

    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_3

    if-eq v2, v1, :cond_3

    .line 421
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 423
    .local v4, "superType":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 424
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 425
    .local v5, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 426
    .local v6, "p_superType_args":[Ljava/lang/reflect/Type;
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 427
    move-object v3, v6

    .line 420
    .end local v4    # "superType":Ljava/lang/reflect/Type;
    .end local v5    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "p_superType_args":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 432
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object v2, v3

    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .local v2, "arguments":[Ljava/lang/reflect/Type;
    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    if-nez v1, :cond_5

    goto :goto_4

    .line 436
    :cond_5
    const/4 v3, 0x0

    .line 437
    .local v3, "actualType":Ljava/lang/reflect/Type;
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 438
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 439
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 440
    aget-object v3, v2, v5

    .line 441
    goto :goto_3

    .line 438
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 445
    .end local v5    # "j":I
    :cond_7
    :goto_3
    return-object v3

    .line 433
    .end local v3    # "actualType":Ljava/lang/reflect/Type;
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_8
    :goto_4
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 9
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 473
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 474
    return v2

    .line 477
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 478
    return v3

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 483
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 484
    return v0

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v1

    .line 488
    .local v1, "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v4

    .line 490
    .local v4, "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eq v1, v4, :cond_4

    .line 491
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    return v2

    .line 495
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    return v3

    .line 500
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v5, v7, :cond_5

    move v5, v3

    goto :goto_0

    :cond_5
    move v5, v6

    .line 501
    .local v5, "isSampeType":Z
    :goto_0
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_6

    move v6, v3

    nop

    .line 503
    .local v6, "oSameType":Z
    :cond_6
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    .line 504
    return v3

    .line 507
    :cond_7
    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    .line 508
    return v2

    .line 511
    :cond_8
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_9

    .line 512
    return v3

    .line 515
    :cond_9
    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_a

    .line 516
    return v2

    .line 519
    :cond_a
    iget-object v7, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 520
    return v3

    .line 523
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "java."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "java."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 524
    return v2

    .line 527
    :cond_c
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method protected genFieldNameChars()[C
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 251
    .local v0, "nameLen":I
    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    .line 252
    .local v1, "name_chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 253
    const/16 v2, 0x22

    aput-char v2, v1, v5

    .line 254
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v3

    .line 255
    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    .line 256
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 544
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 261
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-ne p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    .local v0, "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 270
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 274
    :cond_2
    return-object v0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 469
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method public setAccessible()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 560
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 564
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
