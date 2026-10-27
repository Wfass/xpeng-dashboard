.class public Lcom/alibaba/fastjson2/internal/asm/ASMUtils;
.super Ljava/lang/Object;
.source "ASMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;
    }
.end annotation


# static fields
.field public static final DESC_FIELD_READER:Ljava/lang/String;

.field public static final DESC_FIELD_READER_ARRAY:Ljava/lang/String;

.field public static final DESC_FIELD_WRITER:Ljava/lang/String;

.field public static final DESC_FIELD_WRITER_ARRAY:Ljava/lang/String;

.field public static final DESC_JSONSCHEMA:Ljava/lang/String;

.field public static final DESC_JSON_READER:Ljava/lang/String;

.field public static final DESC_JSON_WRITER:Ljava/lang/String;

.field public static final DESC_OBJECT_READER:Ljava/lang/String;

.field public static final DESC_OBJECT_WRITER:Ljava/lang/String;

.field public static final DESC_SUPPLIER:Ljava/lang/String; = "Ljava/util/function/Supplier;"

.field public static final TYPE_BYTE_ARRAY_VALUE_CONSUMER:Ljava/lang/String;

.field public static final TYPE_CHAR_ARRAY_VALUE_CONSUMER:Ljava/lang/String;

.field public static final TYPE_DATE_UTILS:Ljava/lang/String;

.field public static final TYPE_FIELD_READE:Ljava/lang/String;

.field public static final TYPE_FIELD_WRITER:Ljava/lang/String;

.field public static final TYPE_JSON_READER:Ljava/lang/String;

.field public static final TYPE_JSON_WRITER:Ljava/lang/String;

.field public static final TYPE_OBJECT:Ljava/lang/String; = "java/lang/Object"

.field public static final TYPE_OBJECT_READER:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_1:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_10:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_11:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_12:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_2:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_3:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_4:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_5:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_6:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_7:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_8:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_9:Ljava/lang/String;

.field public static final TYPE_OBJECT_READER_ADAPTER:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_1:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_10:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_11:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_12:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_2:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_3:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_4:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_5:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_6:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_7:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_8:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_9:Ljava/lang/String;

.field public static final TYPE_OBJECT_WRITER_ADAPTER:Ljava/lang/String;

.field public static final TYPE_TYPE_UTILS:Ljava/lang/String;

.field public static final TYPE_UNSAFE_UTILS:Ljava/lang/String;

.field static final descCacheRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[C>;"
        }
    .end annotation
.end field

.field static final descMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final paramMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final typeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 27
    const-class v0, Lcom/alibaba/fastjson2/util/JDKUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_UNSAFE_UTILS:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_ADAPTER:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_1:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_2:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_3:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_4:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_5:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_6:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_7:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_8:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_9:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_10:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_11:Ljava/lang/String;

    .line 42
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER_12:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_FIELD_READE:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_JSON_READER:Ljava/lang/String;

    .line 46
    const-class v3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER:Ljava/lang/String;

    .line 47
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_ADAPTER:Ljava/lang/String;

    .line 49
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader1;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_1:Ljava/lang/String;

    .line 50
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader2;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_2:Ljava/lang/String;

    .line 51
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader3;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_3:Ljava/lang/String;

    .line 52
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader4;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_4:Ljava/lang/String;

    .line 53
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader5;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_5:Ljava/lang/String;

    .line 54
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader6;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_6:Ljava/lang/String;

    .line 55
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader7;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_7:Ljava/lang/String;

    .line 56
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader8;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_8:Ljava/lang/String;

    .line 57
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader9;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_9:Ljava/lang/String;

    .line 58
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader10;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_10:Ljava/lang/String;

    .line 59
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader11;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_11:Ljava/lang/String;

    .line 60
    const-class v4, Lcom/alibaba/fastjson2/reader/ObjectReader12;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_READER_12:Ljava/lang/String;

    .line 61
    const-class v4, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_BYTE_ARRAY_VALUE_CONSUMER:Ljava/lang/String;

    .line 62
    const-class v4, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_CHAR_ARRAY_VALUE_CONSUMER:Ljava/lang/String;

    .line 63
    const-class v4, Lcom/alibaba/fastjson2/util/TypeUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_TYPE_UTILS:Ljava/lang/String;

    .line 64
    const-class v4, Lcom/alibaba/fastjson2/util/DateUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_DATE_UTILS:Ljava/lang/String;

    .line 66
    const-class v4, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER:Ljava/lang/String;

    .line 67
    const-class v5, Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_JSON_WRITER:Ljava/lang/String;

    .line 68
    const-class v6, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_FIELD_WRITER:Ljava/lang/String;

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x4c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v8, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x3b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_WRITER:Ljava/lang/String;

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_WRITER_ARRAY:Ljava/lang/String;

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v9, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_READER:Ljava/lang/String;

    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_READER_ARRAY:Ljava/lang/String;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_JSON_READER:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_JSON_WRITER:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_OBJECT_READER:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_OBJECT_WRITER:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_JSONSCHEMA:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->paramMapping:Ljava/util/Map;

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descMapping:Ljava/util/Map;

    .line 85
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->typeMapping:Ljava/util/Map;

    .line 88
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    const-class v6, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 90
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "[Ljava.lang.reflect.Type;"

    const-string v10, "java.lang.reflect.Type"

    filled-new-array {v9, v10, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "<init>"

    invoke-direct {v5, v6, v10, v9}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "actualTypeArguments"

    const-string v9, "ownerType"

    const-string v11, "rawType"

    filled-new-array {v6, v9, v11}, [Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    const-string v6, "java.lang.Object"

    filled-new-array {v6, v6, v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v11, "org.apache.commons.lang3.tuple.Triple"

    const-string v12, "of"

    invoke-direct {v5, v11, v12, v9}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v9, "left"

    const-string v11, "middle"

    const-string/jumbo v12, "right"

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    filled-new-array {v6, v6, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v13, "org.apache.commons.lang3.tuple.MutableTriple"

    invoke-direct {v5, v13, v10, v6}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    const-string v6, "java.math.BigDecimal"

    const-string v9, "javax.money.CurrencyUnit"

    const-string v11, "javax.money.MonetaryContext"

    filled-new-array {v6, v9, v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "org.javamoney.moneta.Money"

    invoke-direct {v5, v12, v10, v11}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v11, "number"

    const-string v13, "currency"

    const-string v14, "monetaryContext"

    filled-new-array {v11, v13, v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v12, v10, v6}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "I"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v6, "V"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v9, "Z"

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v10, "C"

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v11, "B"

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v12, "S"

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v13, "F"

    invoke-interface {v3, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v13, "J"

    invoke-interface {v3, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v13, "D"

    invoke-interface {v3, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "F"

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "J"

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "D"

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x32

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 151
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/util/Collection;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader1;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader2;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader3;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader4;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader5;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader6;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader7;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader8;

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader9;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader10;

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader11;

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader12;

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-class v5, Lcom/alibaba/fastjson2/reader/FieldReader;

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-class v5, Lcom/alibaba/fastjson2/JSONReader;

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-class v5, Lcom/alibaba/fastjson2/function/ObjBoolConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-class v5, Lcom/alibaba/fastjson2/function/ObjCharConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-class v5, Lcom/alibaba/fastjson2/function/ObjByteConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-class v5, Lcom/alibaba/fastjson2/function/ObjShortConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-class v5, Ljava/util/function/ObjIntConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-class v5, Ljava/util/function/ObjLongConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-class v5, Lcom/alibaba/fastjson2/function/ObjFloatConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-class v5, Ljava/util/function/ObjDoubleConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-class v5, Ljava/util/function/BiConsumer;

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-class v5, Lcom/alibaba/fastjson2/util/JDKUtils;

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-class v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-class v5, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-class v5, Lcom/alibaba/fastjson2/JSONWriter$Context;

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-class v5, Lcom/alibaba/fastjson2/JSONB;

    aput-object v5, v3, v4

    const-class v4, Lcom/alibaba/fastjson2/schema/JSONSchema;

    aput-object v4, v3, v1

    const-class v4, Lcom/alibaba/fastjson2/annotation/JSONType;

    aput-object v4, v3, v2

    const/16 v4, 0x30

    const-class v5, Ljava/util/Date;

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-class v5, Ljava/util/function/Supplier;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 203
    aget-object v5, v3, v4

    .line 204
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 205
    sget-object v9, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->typeMapping:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    sget-object v9, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descMapping:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->typeMapping:Ljava/util/Map;

    const-class v1, Lcom/alibaba/fastjson2/JSONWriter;

    sget-object v2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_JSON_WRITER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descMapping:Ljava/util/Map;

    const-class v2, Lcom/alibaba/fastjson2/JSONWriter;

    sget-object v3, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_JSON_WRITER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-class v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    sget-object v3, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->TYPE_OBJECT_WRITER:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    sget-object v2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_OBJECT_WRITER:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-class v0, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    sget-object v2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_WRITER_ARRAY:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-class v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    sget-object v2, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->DESC_FIELD_READER_ARRAY:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descCacheRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static desc(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    sget-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descCacheRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    const/16 v0, 0x200

    new-array v0, v0, [C

    :cond_2
    const/16 v2, 0x4c

    const/4 v3, 0x0

    .line 251
    aput-char v2, v0, v3

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v4

    .line 253
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 254
    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    const/16 v5, 0x2f

    .line 255
    aput-char v5, v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0x3b

    aput-char v4, v0, v2

    .line 260
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-direct {v2, v0, v3, p0}, Ljava/lang/String;-><init>([CII)V

    .line 261
    sget-object p0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->descCacheRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;
    .locals 12

    .line 266
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 267
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 268
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 270
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 271
    const-class v4, Ljava/time/format/DateTimeParseException;

    const-string v5, "cause"

    const/4 v6, 0x2

    const-string v7, "message"

    if-ne v0, v4, :cond_1

    .line 272
    array-length v4, v3

    const-string v8, "errorIndex"

    const-string v9, "parsedString"

    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    .line 273
    aget-object v4, v3, v2

    const-class v10, Ljava/lang/String;

    if-ne v4, v10, :cond_1

    aget-object v4, v3, v1

    const-class v10, Ljava/lang/CharSequence;

    if-ne v4, v10, :cond_1

    aget-object v4, v3, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v10, :cond_1

    .line 274
    filled-new-array {v7, v9, v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    array-length v4, v3

    const/4 v11, 0x4

    if-ne v4, v11, :cond_1

    .line 277
    aget-object v4, v3, v2

    const-class v11, Ljava/lang/String;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v1

    const-class v11, Ljava/lang/CharSequence;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v11, :cond_1

    aget-object v4, v3, v10

    const-class v10, Ljava/lang/Throwable;

    if-ne v4, v10, :cond_1

    .line 278
    filled-new-array {v7, v9, v8, v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_1
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    array-length v0, v3

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    aget-object v0, v3, v2

    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_5

    const-class v0, Ljava/lang/Throwable;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_3
    aget-object v0, v3, v2

    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_4

    .line 287
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_4
    const-class v0, Ljava/lang/Throwable;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :cond_5
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 311
    check-cast p0, Ljava/lang/reflect/Method;

    .line 312
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 315
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    goto :goto_1

    .line 317
    :cond_6
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 318
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 321
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p0

    const-string v3, "<init>"

    .line 324
    :goto_1
    array-length v5, v0

    if-nez v5, :cond_7

    .line 325
    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 328
    :cond_7
    sget-object v5, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->paramMapping:Ljava/util/Map;

    new-instance v6, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3, v0}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils$MethodInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_8

    return-object v5

    .line 333
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_9

    .line 335
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 338
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 344
    :try_start_0
    new-instance v6, Lcom/alibaba/fastjson2/internal/asm/ClassReader;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson2/internal/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 345
    new-instance v7, Lcom/alibaba/fastjson2/internal/asm/TypeCollector;

    invoke-direct {v7, v3, v0}, Lcom/alibaba/fastjson2/internal/asm/TypeCollector;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 346
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson2/internal/asm/ClassReader;->accept(Lcom/alibaba/fastjson2/internal/asm/TypeCollector;)V

    .line 348
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/internal/asm/TypeCollector;->getParameterNamesForMethod()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 349
    array-length v6, v3

    add-int/lit8 v7, p0, -0x1

    if-ne v6, v7, :cond_a

    .line 350
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 351
    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 352
    new-array v6, p0, [Ljava/lang/String;

    const-string/jumbo v7, "this$0"

    .line 353
    aput-object v7, v6, v2

    .line 354
    array-length v7, v3

    invoke-static {v3, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 362
    :cond_a
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {v5}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 363
    throw p0

    .line 362
    :catch_0
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 366
    :cond_b
    new-array v3, p0, [Ljava/lang/String;

    .line 368
    aget-object v0, v0, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v0, v5, :cond_c

    .line 369
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "this.$0"

    .line 370
    aput-object v0, v3, v2

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    if-ge v1, p0, :cond_d

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-object v3
.end method

.method public static type(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->typeMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
