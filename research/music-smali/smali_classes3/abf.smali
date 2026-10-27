.class public Labf;
.super Ljava/lang/Object;
.source "JDKUtils.java"


# static fields
.field public static final A:Ljava/util/function/BiFunction;
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

.field public static final B:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final D:Ljava/lang/invoke/MethodHandle;

.field public static final E:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "[B>;"
        }
    .end annotation
.end field

.field static final F:Ljava/lang/invoke/MethodHandles$Lookup;

.field static volatile G:Ljava/lang/invoke/MethodHandle;

.field static volatile H:Z

.field static volatile I:Ljava/lang/Throwable;

.field static volatile J:Ljava/lang/Throwable;

.field static final K:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:I

.field public static final e:Ljava/lang/Byte;

.field public static final f:Ljava/lang/Byte;

.field public static final g:Ljava/lang/reflect/Field;

.field public static final h:J

.field public static volatile i:Z

.field public static final j:J

.field public static final k:J

.field public static final l:Ljava/lang/reflect/Field;

.field public static final m:J

.field public static volatile n:Z

.field static final o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final q:Z

.field public static final r:Z

.field public static final s:Z

.field public static final t:Z

.field public static final u:I

.field public static final v:Ljava/lang/Class;

.field public static final w:Z

.field public static final x:Z

.field public static final y:I

.field public static final z:Ljava/util/function/BiFunction;
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


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Labf;->e:Ljava/lang/Byte;

    const/4 v2, 0x1

    .line 25
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Labf;->f:Ljava/lang/Byte;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Labf;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 75
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v6, "theUnsafe"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    :try_start_1
    const-class v0, [B

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v7, v0

    .line 79
    :try_start_2
    const-class v0, [C

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    int-to-long v9, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v7, v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v7, v3

    move-object v6, v5

    .line 81
    :goto_0
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    move-wide v9, v3

    .line 84
    :goto_1
    sput-object v6, Labf;->a:Lsun/misc/Unsafe;

    .line 85
    sput-wide v7, Labf;->b:J

    .line 86
    sput-wide v9, Labf;->c:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_18

    const/4 v6, 0x2

    const/4 v7, -0x1

    :try_start_3
    const-string v0, "java.vm.name"

    .line 95
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "OpenJ9"

    .line 96
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    const-string v9, "Dalvik"

    .line 97
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string v0, "org.graalvm.nativeimage.imagecode"

    .line 98
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_0

    move v10, v2

    goto :goto_2

    :cond_0
    move v10, v1

    :goto_2
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 100
    :cond_1
    :try_start_6
    sput-boolean v2, Labf;->i:Z

    :cond_2
    const-string v0, "java.specification.version"

    .line 103
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "1."

    .line 105
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/16 v11, 0x2e

    .line 108
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v7, :cond_4

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v7

    :goto_3
    if-eqz v9, :cond_5

    :try_start_7
    const-string v0, "android.os.Build$VERSION"

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v12, "SDK_INT"

    .line 114
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move v10, v1

    goto :goto_5

    :catch_6
    move-exception v0

    move v9, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move v8, v1

    move v9, v8

    :goto_4
    move v10, v9

    :goto_5
    move v11, v7

    .line 118
    :goto_6
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    :cond_5
    move v0, v7

    .line 121
    :goto_7
    sput-boolean v8, Labf;->t:Z

    .line 122
    sput-boolean v9, Labf;->r:Z

    .line 123
    sput-boolean v10, Labf;->s:Z

    .line 124
    sput v0, Labf;->u:I

    :try_start_8
    const-string v0, "javax.sql.DataSource"

    .line 130
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    const-string v8, "javax.sql.RowSet"

    .line 131
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    move v10, v2

    goto :goto_8

    :catch_8
    move-object v0, v5

    :catch_9
    move v10, v1

    move-object v8, v5

    .line 135
    :goto_8
    sput-object v0, Labf;->o:Ljava/lang/Class;

    .line 136
    sput-object v8, Labf;->p:Ljava/lang/Class;

    .line 137
    sput-boolean v10, Labf;->q:Z

    if-nez v9, :cond_6

    :try_start_a
    const-string v0, "java.beans.Transient"

    .line 142
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    :cond_6
    move-object v0, v5

    .line 146
    :goto_9
    sput-object v0, Labf;->v:Ljava/lang/Class;

    .line 148
    sput v11, Labf;->d:I

    .line 150
    sget v0, Labf;->d:I

    const-string v8, "coder"

    const-string v10, "value"

    const/16 v11, 0x8

    if-ne v0, v11, :cond_8

    .line 153
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_7

    .line 155
    :try_start_b
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 156
    :try_start_c
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_a

    :catch_b
    move-object v0, v5

    .line 159
    :catch_c
    sput-boolean v2, Labf;->i:Z

    move-wide v12, v3

    goto :goto_a

    :cond_7
    move-wide v12, v3

    move-object v0, v5

    .line 163
    :goto_a
    sput-object v0, Labf;->g:Ljava/lang/reflect/Field;

    .line 164
    sput-wide v12, Labf;->h:J

    .line 166
    sput-object v5, Labf;->l:Ljava/lang/reflect/Field;

    .line 167
    sput-wide v3, Labf;->m:J

    .line 168
    sput-boolean v2, Labf;->n:Z

    goto :goto_d

    .line 172
    :cond_8
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_9

    .line 174
    :try_start_d
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 175
    :try_start_e
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_b

    :catch_d
    move-object v0, v5

    .line 177
    :catch_e
    sput-boolean v2, Labf;->i:Z

    move-wide v12, v3

    goto :goto_b

    :cond_9
    move-wide v12, v3

    move-object v0, v5

    .line 180
    :goto_b
    sput-wide v12, Labf;->h:J

    .line 181
    sput-object v0, Labf;->g:Ljava/lang/reflect/Field;

    .line 185
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_a

    .line 187
    :try_start_f
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 188
    :try_start_10
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_c

    :catch_f
    move-object v0, v5

    .line 190
    :catch_10
    sput-boolean v2, Labf;->n:Z

    move-wide v12, v3

    goto :goto_c

    :cond_a
    move-wide v12, v3

    move-object v0, v5

    .line 193
    :goto_c
    sput-wide v12, Labf;->m:J

    .line 194
    sput-object v0, Labf;->l:Ljava/lang/reflect/Field;

    .line 200
    :goto_d
    :try_start_11
    const-class v0, Ljava/math/BigDecimal;

    const-string v12, "intCompact"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 201
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_e

    :catch_11
    move-wide v12, v3

    .line 205
    :goto_e
    sput-wide v12, Labf;->j:J

    .line 211
    :try_start_12
    const-class v0, Ljava/math/BigInteger;

    const-string v12, "mag"

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 212
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 216
    :catch_12
    sput-wide v3, Labf;->k:J

    .line 219
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_b

    move v0, v2

    goto :goto_f

    :cond_b
    move v0, v1

    :goto_f
    sput-boolean v0, Labf;->w:Z

    .line 227
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_d

    .line 229
    :try_start_13
    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v3, "IMPL_LOOKUP"

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 231
    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v4, v3}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    .line 232
    sget-object v12, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v12, v0, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_10

    :catch_13
    move-object v0, v5

    :goto_10
    if-nez v0, :cond_c

    .line 237
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    :cond_c
    move-object v3, v0

    goto :goto_11

    :cond_d
    move-object v3, v5

    .line 240
    :goto_11
    sput-object v3, Labf;->F:Ljava/lang/invoke/MethodHandles$Lookup;

    const/16 v4, 0xb

    .line 245
    :try_start_14
    sget v0, Labf;->d:I

    if-lt v0, v4, :cond_e

    const-string v0, "java.lang.management.ManagementFactory"

    .line 246
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v12, "java.lang.management.RuntimeMXBean"

    .line 247
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getRuntimeMXBean"

    .line 248
    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    new-array v13, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v13, "getInputArguments"

    .line 250
    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 251
    new-array v13, v1, [Ljava/lang/Object;

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v12, "--add-modules=jdk.incubator.vector"

    .line 252
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_15

    if-eqz v12, :cond_f

    :try_start_15
    const-string v0, "jdk.incubator.vector.ByteVector"

    .line 255
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v13, "jdk.incubator.vector.VectorSpecies"

    .line 256
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "SPECIES_MAX"

    .line 257
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v14, "length"

    .line 259
    new-array v15, v1, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 260
    new-array v14, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_14

    mul-int/2addr v0, v11

    move v7, v0

    goto :goto_13

    :catch_14
    move-exception v0

    goto :goto_12

    :cond_e
    move v12, v1

    goto :goto_13

    :catch_15
    move-exception v0

    move v12, v1

    .line 265
    :goto_12
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    .line 267
    :cond_f
    :goto_13
    sput-boolean v12, Labf;->x:Z

    .line 268
    sput v7, Labf;->y:I

    .line 275
    sget v0, Labf;->d:I

    const/16 v7, 0x11

    const-string v12, "isASCII"

    if-lt v0, v7, :cond_10

    .line 277
    :try_start_16
    const-class v7, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_17

    :try_start_17
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v13, [B

    .line 280
    invoke-static {v0, v13}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 277
    invoke-virtual {v3, v7, v12, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_16

    move-object v13, v7

    move-object v7, v0

    goto :goto_15

    :catch_16
    move-exception v0

    goto :goto_14

    :catch_17
    move-exception v0

    move-object v7, v5

    .line 283
    :goto_14
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    move-object v13, v7

    move-object v7, v5

    goto :goto_15

    :cond_10
    move-object v7, v5

    move-object v13, v7

    :goto_15
    const-string v14, "java.lang.StringCoding"

    if-nez v7, :cond_11

    .line 287
    sget v0, Labf;->d:I

    if-lt v0, v4, :cond_11

    .line 289
    :try_start_18
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 290
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v15, [B

    .line 293
    invoke-static {v0, v15}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 290
    invoke-virtual {v3, v13, v12, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_16

    :catch_18
    move-exception v0

    .line 296
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    :cond_11
    :goto_16
    move-object/from16 v19, v7

    if-eqz v19, :cond_12

    .line 302
    :try_start_19
    invoke-static {v13}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v15

    const-string v16, "test"

    .line 303
    const-class v0, Ljava/util/function/Predicate;

    .line 306
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v17

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    .line 307
    invoke-static {v0, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v18

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v7, [B

    .line 309
    invoke-static {v0, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v20

    .line 303
    invoke-static/range {v15 .. v20}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Predicate;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_17

    :catch_19
    move-exception v0

    .line 313
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    :cond_12
    move-object v0, v5

    .line 317
    :goto_17
    sput-object v0, Labf;->E:Ljava/util/function/Predicate;

    .line 322
    sget v0, Labf;->d:I

    if-lt v0, v4, :cond_13

    .line 324
    :try_start_1a
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "hasNegatives"

    .line 325
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, [B

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v6, v1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v6, v2

    .line 328
    invoke-static {v7, v12, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 325
    invoke-virtual {v3, v0, v4, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_18

    :catch_1a
    move-exception v0

    .line 331
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    :cond_13
    move-object v0, v5

    .line 334
    :goto_18
    sput-object v0, Labf;->D:Ljava/lang/invoke/MethodHandle;

    .line 339
    :try_start_1b
    sget v0, Labf;->d:I

    if-ne v0, v11, :cond_14

    .line 340
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v12

    .line 342
    const-class v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v6, [C

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v7, v1

    .line 343
    invoke-static {v4, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 342
    invoke-virtual {v12, v0, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v16

    const-string v13, "apply"

    .line 346
    const-class v0, Ljava/util/function/BiFunction;

    .line 349
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v14

    const-class v0, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    .line 350
    invoke-static {v0, v4, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v15

    const-class v0, Ljava/lang/String;

    const-class v4, [C

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 352
    invoke-static {v0, v4, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v17

    .line 346
    invoke-static/range {v12 .. v17}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1f

    move-object v4, v0

    goto :goto_19

    :cond_14
    move-object v4, v5

    .line 358
    :goto_19
    :try_start_1c
    sget v0, Labf;->d:I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1e

    if-le v0, v11, :cond_15

    if-nez v9, :cond_15

    .line 360
    :try_start_1d
    const-class v0, Ljava/lang/String;

    const-string v6, "COMPACT_STRINGS"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 361
    sget-object v6, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    .line 362
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    const-class v9, Ljava/lang/String;

    invoke-virtual {v0, v9, v6, v7}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1b

    goto :goto_1a

    :catch_1b
    move-exception v0

    .line 364
    :try_start_1e
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    move-object v0, v5

    :goto_1a
    if-eqz v0, :cond_15

    .line 366
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_1b

    :cond_15
    move v0, v1

    :goto_1b
    if-eqz v0, :cond_16

    .line 370
    const-class v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 371
    const-class v3, Ljava/lang/String;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v7, [B

    new-array v9, v2, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v1

    .line 372
    invoke-static {v6, v7, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 371
    invoke-virtual {v0, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v15

    const-string v12, "apply"

    .line 374
    const-class v3, Ljava/util/function/BiFunction;

    .line 377
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v13

    const-class v3, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v1

    .line 378
    invoke-static {v3, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v14

    const-class v3, Ljava/lang/String;

    const-class v6, [B

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Byte;

    aput-object v7, v2, v1

    .line 380
    invoke-static {v3, v6, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v16

    move-object v11, v0

    .line 374
    invoke-static/range {v11 .. v16}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-polymorphic {v1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 384
    :try_start_1f
    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 387
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v6, Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v2, v8, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v15

    const-string v12, "applyAsInt"

    .line 390
    const-class v2, Ljava/util/function/ToIntFunction;

    .line 393
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v13

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    .line 394
    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v14

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    .line 396
    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v16

    move-object v11, v0

    .line 390
    invoke-static/range {v11 .. v16}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-polymorphic {v2}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToIntFunction;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1d

    .line 400
    :try_start_20
    const-class v3, Ljava/lang/String;

    const-class v6, [B

    .line 403
    invoke-static {v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    .line 400
    invoke-virtual {v0, v3, v10, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v15

    const-string v12, "apply"

    .line 406
    const-class v3, Ljava/util/function/Function;

    .line 409
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v13

    const-class v3, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    .line 410
    invoke-static {v3, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v14

    const-class v3, [B

    const-class v6, Ljava/lang/String;

    .line 412
    invoke-static {v3, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v16

    move-object v11, v0

    .line 406
    invoke-static/range {v11 .. v16}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1c

    move-object v5, v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    goto :goto_1c

    :catch_1d
    move-exception v0

    move-object v2, v5

    goto :goto_1c

    :cond_16
    move-object v1, v5

    move-object v2, v1

    goto :goto_1d

    :catch_1e
    move-exception v0

    move-object v1, v5

    move-object v2, v1

    goto :goto_1c

    :catch_1f
    move-exception v0

    move-object v1, v5

    move-object v2, v1

    move-object v4, v2

    .line 417
    :goto_1c
    sput-object v0, Labf;->I:Ljava/lang/Throwable;

    :goto_1d
    if-nez v2, :cond_17

    .line 421
    sget-object v2, L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;->INSTANCE:L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;

    .line 424
    :cond_17
    sput-object v4, Labf;->z:Ljava/util/function/BiFunction;

    .line 425
    sput-object v1, Labf;->A:Ljava/util/function/BiFunction;

    .line 426
    sput-object v2, Labf;->B:Ljava/util/function/ToIntFunction;

    .line 427
    sput-object v5, Labf;->C:Ljava/util/function/Function;

    return-void

    .line 89
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson2/c;

    sget-object v1, Labf;->I:Ljava/lang/Throwable;

    const-string v2, "init JDKUtils error"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 436
    sget-object v0, Labf;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 437
    sput-object p0, Labf;->J:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 431
    sget-object v0, Labf;->o:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Labf;->p:Ljava/lang/Class;

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

.method public static a(Ljava/lang/String;)[C
    .locals 3

    .line 443
    sget-boolean v0, Labf;->i:Z

    if-nez v0, :cond_0

    .line 445
    :try_start_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v1, Labf;->h:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x1

    .line 447
    sput-boolean v0, Labf;->i:Z

    .line 451
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 9

    .line 455
    sget-boolean v0, Labf;->H:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 459
    :try_start_0
    sget-object v2, Labf;->G:Ljava/lang/invoke/MethodHandle;

    .line 460
    sget v3, Labf;->d:I

    const/16 v4, 0xf

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    if-nez v2, :cond_0

    .line 462
    sget-object v2, Labf;->F:Ljava/lang/invoke/MethodHandles$Lookup;

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
    sput-object v2, Labf;->G:Ljava/lang/invoke/MethodHandle;

    :cond_0
    const/16 v3, 0x1f

    .line 471
    sget-boolean v4, Labf;->t:Z

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
    sget-object v2, Labf;->F:Ljava/lang/invoke/MethodHandles$Lookup;

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
    sput-object v2, Labf;->G:Ljava/lang/invoke/MethodHandle;

    :cond_3
    const/4 v3, 0x0

    .line 481
    invoke-polymorphic {v2, p0, v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Class;Ljava/lang/Void;I)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 484
    :catch_0
    sput-boolean v1, Labf;->H:Z

    .line 488
    :cond_4
    sget-object v0, Labf;->F:Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v0, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ogLAZX5yveGyhTTxApK3hVgkWtg(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Labf;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
