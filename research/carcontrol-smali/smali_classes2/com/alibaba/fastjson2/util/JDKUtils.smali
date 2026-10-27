.class public Lcom/alibaba/fastjson2/util/JDKUtils;
.super Ljava/lang/Object;
.source "JDKUtils.java"


# static fields
.field public static final ANDROID:Z

.field public static final ANDROID_SDK_INT:I

.field public static final ARRAY_BYTE_BASE_OFFSET:J

.field public static final ARRAY_CHAR_BASE_OFFSET:J

.field public static final BIG_ENDIAN:Z

.field static final CLASS_SQL_DATASOURCE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final CLASS_SQL_ROW_SET:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final CLASS_TRANSIENT:Ljava/lang/Class;

.field static volatile CONSTRUCTOR_LOOKUP:Ljava/lang/invoke/MethodHandle; = null

.field static volatile CONSTRUCTOR_LOOKUP_ERROR:Z = false

.field public static final FIELD_BIGINTEGER_MAG_OFFSET:J

.field public static final FIELD_DECIMAL_INT_COMPACT_OFFSET:J

.field public static final FIELD_STRING_CODER:Ljava/lang/reflect/Field;

.field public static volatile FIELD_STRING_CODER_ERROR:Z = false

.field public static final FIELD_STRING_CODER_OFFSET:J

.field public static final FIELD_STRING_VALUE:Ljava/lang/reflect/Field;

.field public static volatile FIELD_STRING_VALUE_ERROR:Z = false

.field public static final FIELD_STRING_VALUE_OFFSET:J

.field public static final GRAAL:Z

.field public static final HAS_SQL:Z

.field static final IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field public static final JVM_VERSION:I

.field public static final LATIN1:Ljava/lang/Byte;

.field public static final METHOD_HANDLE_HAS_NEGATIVE:Ljava/lang/invoke/MethodHandle;

.field public static final OPENJ9:Z

.field public static final PREDICATE_IS_ASCII:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final STRING_CODER:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "[B",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "[C",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final UNSAFE:Lsun/misc/Unsafe;

.field public static final UNSAFE_SUPPORT:Z = true

.field public static final UTF16:Ljava/lang/Byte;

.field public static final VECTOR_BIT_LENGTH:I

.field public static final VECTOR_SUPPORT:Z

.field static volatile initErrorLast:Ljava/lang/Throwable;

.field static final reflectErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field static volatile reflectErrorLast:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 24
    const-class v1, [C

    const-class v2, [B

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    const/4 v4, 0x1

    .line 25
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->reflectErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    .line 75
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string/jumbo v8, "theUnsafe"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 78
    :try_start_1
    invoke-virtual {v8, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v9, v0

    .line 79
    :try_start_2
    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v11, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v9, v5

    goto :goto_0

    :catchall_2
    move-exception v0

    move-wide v9, v5

    move-object v8, v7

    .line 81
    :goto_0
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    move-wide v11, v5

    .line 84
    :goto_1
    sput-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 85
    sput-wide v9, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 86
    sput-wide v11, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    cmp-long v0, v9, v5

    if-eqz v0, :cond_18

    const/4 v8, 0x2

    const/4 v9, -0x1

    :try_start_3
    const-string v0, "java.vm.name"

    .line 95
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "OpenJ9"

    .line 96
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    const-string v11, "Dalvik"

    .line 97
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    const-string v0, "org.graalvm.nativeimage.imagecode"

    .line 98
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_0

    move v12, v4

    goto :goto_2

    :cond_0
    move v12, v3

    :goto_2
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    .line 100
    :cond_1
    :try_start_6
    sput-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_ERROR:Z

    :cond_2
    const-string v0, "java.specification.version"

    .line 103
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "1."

    .line 105
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 106
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/16 v13, 0x2e

    .line 108
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ne v13, v9, :cond_4

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v13, v0

    goto :goto_3

    :cond_4
    move v13, v9

    :goto_3
    if-eqz v11, :cond_5

    :try_start_7
    const-string v0, "android.os.Build$VERSION"

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v14, "SDK_INT"

    .line 114
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move v12, v3

    goto :goto_5

    :catchall_6
    move-exception v0

    move v11, v3

    goto :goto_4

    :catchall_7
    move-exception v0

    move v10, v3

    move v11, v10

    :goto_4
    move v12, v11

    :goto_5
    move v13, v9

    .line 118
    :goto_6
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    :cond_5
    move v0, v9

    .line 121
    :goto_7
    sput-boolean v10, Lcom/alibaba/fastjson2/util/JDKUtils;->OPENJ9:Z

    .line 122
    sput-boolean v11, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    .line 123
    sput-boolean v12, Lcom/alibaba/fastjson2/util/JDKUtils;->GRAAL:Z

    .line 124
    sput v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    :try_start_8
    const-string v0, "javax.sql.DataSource"

    .line 130
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    const-string v10, "javax.sql.RowSet"

    .line 131
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move v12, v4

    goto :goto_8

    :catchall_8
    move-object v0, v7

    :catchall_9
    move v12, v3

    move-object v10, v7

    .line 135
    :goto_8
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_SQL_DATASOURCE:Ljava/lang/Class;

    .line 136
    sput-object v10, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_SQL_ROW_SET:Ljava/lang/Class;

    .line 137
    sput-boolean v12, Lcom/alibaba/fastjson2/util/JDKUtils;->HAS_SQL:Z

    if-nez v11, :cond_6

    :try_start_a
    const-string v0, "java.beans.Transient"

    .line 142
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_9

    :catchall_a
    :cond_6
    move-object v0, v7

    .line 146
    :goto_9
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_TRANSIENT:Ljava/lang/Class;

    .line 148
    sput v13, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const-string v10, "coder"

    const-string/jumbo v12, "value"

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    .line 153
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v0, :cond_7

    .line 155
    :try_start_b
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 156
    :try_start_c
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    sget-object v13, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_a

    :catch_0
    move-object v0, v7

    .line 159
    :catch_1
    sput-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_ERROR:Z

    move-wide v15, v5

    goto :goto_a

    :cond_7
    move-wide v15, v5

    move-object v0, v7

    .line 163
    :goto_a
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE:Ljava/lang/reflect/Field;

    .line 164
    sput-wide v15, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_OFFSET:J

    .line 166
    sput-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER:Ljava/lang/reflect/Field;

    .line 167
    sput-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER_OFFSET:J

    .line 168
    sput-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER_ERROR:Z

    goto :goto_d

    .line 172
    :cond_8
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v0, :cond_9

    .line 174
    :try_start_d
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 175
    :try_start_e
    sget-object v13, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_b

    :catch_2
    move-object v0, v7

    .line 177
    :catch_3
    sput-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_ERROR:Z

    move-wide v15, v5

    goto :goto_b

    :cond_9
    move-wide v15, v5

    move-object v0, v7

    .line 180
    :goto_b
    sput-wide v15, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_OFFSET:J

    .line 181
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE:Ljava/lang/reflect/Field;

    .line 185
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v0, :cond_a

    .line 187
    :try_start_f
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 188
    :try_start_10
    sget-object v13, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v15
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_c

    :catch_4
    move-object v0, v7

    .line 190
    :catch_5
    sput-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER_ERROR:Z

    move-wide v15, v5

    goto :goto_c

    :cond_a
    move-wide v15, v5

    move-object v0, v7

    .line 193
    :goto_c
    sput-wide v15, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER_OFFSET:J

    .line 194
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_CODER:Ljava/lang/reflect/Field;

    .line 200
    :goto_d
    :try_start_11
    const-class v0, Ljava/math/BigDecimal;

    const-string v13, "intCompact"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 201
    sget-object v13, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_e

    :catchall_b
    move-wide v15, v5

    .line 205
    :goto_e
    sput-wide v15, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    .line 211
    :try_start_12
    const-class v0, Ljava/math/BigInteger;

    const-string v13, "mag"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 212
    sget-object v13, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 216
    :catchall_c
    sput-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_BIGINTEGER_MAG_OFFSET:J

    .line 219
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v5, :cond_b

    move v0, v4

    goto :goto_f

    :cond_b
    move v0, v3

    :goto_f
    sput-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 227
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v0, :cond_d

    .line 229
    :try_start_13
    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v5, "IMPL_LOOKUP"

    .line 230
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 231
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    move-object v15, v10

    :try_start_14
    invoke-virtual {v6, v5}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    .line 232
    invoke-virtual {v6, v0, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_10

    :catchall_d
    move-object v15, v10

    :catchall_e
    move-object v0, v7

    :goto_10
    if-nez v0, :cond_c

    .line 237
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    :cond_c
    move-object v5, v0

    goto :goto_11

    :cond_d
    move-object v15, v10

    move-object v5, v7

    .line 240
    :goto_11
    sput-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const/16 v6, 0xb

    .line 245
    :try_start_15
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-lt v0, v6, :cond_e

    const-string v0, "java.lang.management.ManagementFactory"

    .line 246
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v9, "java.lang.management.RuntimeMXBean"

    .line 247
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getRuntimeMXBean"

    new-array v13, v3, [Ljava/lang/Class;

    .line 248
    invoke-virtual {v0, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Object;

    .line 249
    invoke-virtual {v0, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v10, "getInputArguments"

    new-array v13, v3, [Ljava/lang/Class;

    .line 250
    invoke-virtual {v9, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    .line 251
    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v9, "--add-modules=jdk.incubator.vector"

    .line 252
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    if-eqz v9, :cond_f

    :try_start_16
    const-string v0, "jdk.incubator.vector.ByteVector"

    .line 255
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v10, "jdk.incubator.vector.VectorSpecies"

    .line 256
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v13, "SPECIES_MAX"

    .line 257
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v13, "length"

    new-array v7, v3, [Ljava/lang/Class;

    .line 259
    invoke-virtual {v10, v13, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Object;

    .line 260
    invoke-virtual {v7, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    mul-int/2addr v0, v14

    move/from16 v16, v0

    goto :goto_14

    :catchall_f
    move-exception v0

    goto :goto_12

    :cond_e
    move v9, v3

    goto :goto_13

    :catchall_10
    move-exception v0

    move v9, v3

    .line 265
    :goto_12
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    :cond_f
    :goto_13
    const/16 v16, -0x1

    .line 267
    :goto_14
    sput-boolean v9, Lcom/alibaba/fastjson2/util/JDKUtils;->VECTOR_SUPPORT:Z

    .line 268
    sput v16, Lcom/alibaba/fastjson2/util/JDKUtils;->VECTOR_BIT_LENGTH:I

    .line 275
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v7, 0x11

    const-string v9, "isASCII"

    if-lt v0, v7, :cond_10

    .line 277
    :try_start_17
    const-class v7, Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    :try_start_18
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 280
    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 277
    invoke-virtual {v5, v7, v9, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    move-object v10, v7

    move-object v7, v0

    goto :goto_16

    :catchall_11
    move-exception v0

    goto :goto_15

    :catchall_12
    move-exception v0

    const/4 v7, 0x0

    .line 283
    :goto_15
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    move-object v10, v7

    const/4 v7, 0x0

    goto :goto_16

    :cond_10
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_16
    const-string v13, "java.lang.StringCoding"

    if-nez v7, :cond_11

    .line 287
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-lt v0, v6, :cond_11

    .line 289
    :try_start_19
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 290
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 293
    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 290
    invoke-virtual {v5, v10, v9, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    .line 296
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    :cond_11
    :goto_17
    move-object/from16 v22, v7

    if-eqz v22, :cond_12

    .line 302
    :try_start_1a
    invoke-static {v10}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v18

    const-string/jumbo v19, "test"

    .line 303
    const-class v0, Ljava/util/function/Predicate;

    .line 306
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v20

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    .line 307
    invoke-static {v0, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v21

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 309
    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v23

    .line 303
    invoke-static/range {v18 .. v23}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Predicate;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    .line 313
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    :cond_12
    const/4 v0, 0x0

    .line 317
    :goto_18
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->PREDICATE_IS_ASCII:Ljava/util/function/Predicate;

    .line 322
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-lt v0, v6, :cond_13

    .line 324
    :try_start_1b
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "hasNegatives"

    .line 325
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 328
    invoke-static {v7, v2, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 325
    invoke-virtual {v5, v0, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v0

    .line 331
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    :cond_13
    const/4 v0, 0x0

    .line 334
    :goto_19
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->METHOD_HANDLE_HAS_NEGATIVE:Ljava/lang/invoke/MethodHandle;

    .line 339
    :try_start_1c
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    if-ne v0, v14, :cond_14

    .line 340
    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    .line 342
    const-class v7, Ljava/lang/String;

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    .line 343
    invoke-static {v8, v1, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 342
    invoke-virtual {v6, v7, v8}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v22

    const-string v19, "apply"

    .line 346
    const-class v7, Ljava/util/function/BiFunction;

    .line 349
    invoke-static {v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v20

    const-class v7, Ljava/lang/Object;

    const-class v8, Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v3

    .line 350
    invoke-static {v7, v8, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v21

    const-class v7, Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    .line 352
    invoke-static {v7, v1, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v23

    move-object/from16 v18, v6

    .line 346
    invoke-static/range {v18 .. v23}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-polymorphic {v1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    goto :goto_1a

    :cond_14
    const/4 v1, 0x0

    :goto_1a
    if-le v0, v14, :cond_15

    if-nez v11, :cond_15

    .line 360
    :try_start_1d
    const-class v0, Ljava/lang/String;

    const-string v6, "COMPACT_STRINGS"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 361
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    .line 362
    const-class v0, Ljava/lang/String;

    invoke-virtual {v6, v0, v7, v8}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception v0

    .line 364
    :try_start_1e
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_15

    .line 366
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    goto :goto_1c

    :cond_15
    move v0, v3

    :goto_1c
    if-eqz v0, :cond_16

    .line 370
    const-class v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 371
    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    .line 372
    invoke-static {v6, v2, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 371
    invoke-virtual {v0, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    const-string v7, "apply"

    .line 374
    const-class v5, Ljava/util/function/BiFunction;

    .line 377
    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    const-class v5, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v3

    .line 378
    invoke-static {v5, v6, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    const-class v5, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v4, v3

    .line 380
    invoke-static {v5, v2, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    move-object v6, v0

    .line 374
    invoke-static/range {v6 .. v11}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v3

    .line 382
    invoke-virtual {v3}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-polymorphic {v3}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_19

    .line 384
    :try_start_1f
    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 387
    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v4, v15, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    const-string v7, "applyAsInt"

    .line 390
    const-class v4, Ljava/util/function/ToIntFunction;

    .line 393
    invoke-static {v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    .line 394
    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    .line 396
    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    move-object v6, v0

    .line 390
    invoke-static/range {v6 .. v11}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v4

    .line 398
    invoke-virtual {v4}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-polymorphic {v4}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToIntFunction;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    .line 400
    :try_start_20
    const-class v5, Ljava/lang/String;

    .line 403
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    .line 400
    invoke-virtual {v0, v5, v12, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    const-string v7, "apply"

    .line 406
    const-class v5, Ljava/util/function/Function;

    .line 409
    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    const-class v5, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    .line 410
    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    const-class v5, Ljava/lang/String;

    .line 412
    invoke-static {v2, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    move-object v6, v0

    .line 406
    invoke-static/range {v6 .. v11}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    move-object/from16 v17, v3

    move-object v7, v4

    goto :goto_20

    :catchall_17
    move-exception v0

    goto :goto_1f

    :catchall_18
    move-exception v0

    goto :goto_1e

    :catchall_19
    move-exception v0

    goto :goto_1d

    :cond_16
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    goto :goto_20

    :catchall_1a
    move-exception v0

    const/4 v1, 0x0

    :goto_1d
    const/4 v3, 0x0

    :goto_1e
    const/4 v4, 0x0

    .line 417
    :goto_1f
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    move-object/from16 v17, v3

    move-object v7, v4

    const/4 v0, 0x0

    :goto_20
    if-nez v7, :cond_17

    .line 421
    sget-object v7, Lcom/alibaba/fastjson2/util/-$$Lambda$JDKUtils$5_e71DVRC3QvEXCfV5JzVkbbzcM;->INSTANCE:Lcom/alibaba/fastjson2/util/-$$Lambda$JDKUtils$5_e71DVRC3QvEXCfV5JzVkbbzcM;

    .line 424
    :cond_17
    sput-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    .line 425
    sput-object v17, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    .line 426
    sput-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    .line 427
    sput-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    return-void

    .line 89
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->initErrorLast:Ljava/lang/Throwable;

    const-string v2, "init JDKUtils error"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharArray(Ljava/lang/String;)[C
    .locals 3

    .line 443
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_ERROR:Z

    if-nez v0, :cond_0

    .line 445
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x1

    .line 447
    sput-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_STRING_VALUE_ERROR:Z

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static isSQLDataSourceOrRowSet(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_SQL_DATASOURCE:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_SQL_ROW_SET:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static setReflectErrorLast(Ljava/lang/Throwable;)V
    .locals 1

    .line 436
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->reflectErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 437
    sput-object p0, Lcom/alibaba/fastjson2/util/JDKUtils;->reflectErrorLast:Ljava/lang/Throwable;

    return-void
.end method

.method public static trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 9

    .line 455
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CONSTRUCTOR_LOOKUP_ERROR:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 459
    :try_start_0
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->CONSTRUCTOR_LOOKUP:Ljava/lang/invoke/MethodHandle;

    .line 460
    sget v3, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v4, 0xf

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    if-nez v2, :cond_0

    .line 462
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles$Lookup;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    .line 464
    invoke-static {v4, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 462
    invoke-virtual {v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 466
    sput-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->CONSTRUCTOR_LOOKUP:Ljava/lang/invoke/MethodHandle;

    :cond_0
    const/16 v3, 0x1f

    .line 471
    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->OPENJ9:Z

    if-eqz v4, :cond_1

    move v0, v3

    .line 469
    :cond_1
    invoke-polymorphic {v2, p0, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v2, :cond_3

    .line 475
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v3, Ljava/lang/invoke/MethodHandles$Lookup;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v7, v1

    .line 477
    invoke-static {v4, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 475
    invoke-virtual {v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 479
    sput-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->CONSTRUCTOR_LOOKUP:Ljava/lang/invoke/MethodHandle;

    :cond_3
    const/4 v3, 0x0

    .line 481
    invoke-polymorphic {v2, p0, v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Class;Ljava/lang/Void;I)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 484
    :catchall_0
    sput-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->CONSTRUCTOR_LOOKUP_ERROR:Z

    .line 488
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v0, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    return-object p0
.end method
