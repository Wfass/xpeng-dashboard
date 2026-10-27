.class public final Lcom/alibaba/fastjson2/d;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/d$b;,
        Lcom/alibaba/fastjson2/d$e;,
        Lcom/alibaba/fastjson2/d$f;,
        Lcom/alibaba/fastjson2/d$d;,
        Lcom/alibaba/fastjson2/d$c;,
        Lcom/alibaba/fastjson2/d$a;
    }
.end annotation


# static fields
.field static final A:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/d$a;",
            "[B>;"
        }
    .end annotation
.end field

.field static final B:Ljava/util/Properties;

.field static final C:Lahq;

.field static final D:Lzx;

.field static final E:Lcom/alibaba/fastjson2/d$b;

.field static final F:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lxa;",
            ">;"
        }
    .end annotation
.end field

.field static final G:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lzx;",
            ">;"
        }
    .end annotation
.end field

.field static final H:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lafe;",
            ">;"
        }
    .end annotation
.end field

.field static final I:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/d$b;",
            ">;"
        }
    .end annotation
.end field

.field static final J:Lwk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final K:Lwk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk<",
            "Lcom/alibaba/fastjson2/e;",
            ">;"
        }
    .end annotation
.end field

.field static final L:[B

.field static volatile a:Ljava/lang/Throwable;

.field public static final b:Ljava/lang/String;

.field static c:Z

.field static d:J

.field static e:Ljava/lang/String;

.field static f:Ljava/time/ZoneId;

.field static g:J

.field static h:Ljava/lang/String;

.field static i:Ljava/time/ZoneId;

.field static j:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field static k:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field static final l:[Lcom/alibaba/fastjson2/d$e;

.field static final m:[Lcom/alibaba/fastjson2/d$f;

.field static final n:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/ab$a;",
            "Lcom/alibaba/fastjson2/ab;",
            ">;"
        }
    .end annotation
.end field

.field static final o:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/ab$a;",
            "Lcom/alibaba/fastjson2/ab;",
            ">;"
        }
    .end annotation
.end field

.field static final p:Lcom/alibaba/fastjson2/d$d;

.field static final q:Lcom/alibaba/fastjson2/d$d;

.field static final r:Lcom/alibaba/fastjson2/d$c;

.field static s:I

.field static final t:[C

.field static final u:[I

.field static final v:[F

.field static final w:[D

.field static final x:Ljava/lang/Double;

.field static final y:[Lcom/alibaba/fastjson2/d$a;

.field static final z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/d$a;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x2000

    .line 51
    new-array v1, v0, [Lcom/alibaba/fastjson2/d$e;

    sput-object v1, Lcom/alibaba/fastjson2/d;->l:[Lcom/alibaba/fastjson2/d$e;

    .line 52
    new-array v0, v0, [Lcom/alibaba/fastjson2/d$f;

    sput-object v0, Lcom/alibaba/fastjson2/d;->m:[Lcom/alibaba/fastjson2/d$f;

    const/16 v0, 0x800

    .line 60
    sput v0, Lcom/alibaba/fastjson2/d;->s:I

    const/16 v0, 0x40

    .line 92
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson2/d;->t:[C

    const/16 v1, 0x67

    .line 103
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson2/d;->u:[I

    const/16 v1, 0xb

    .line 113
    new-array v1, v1, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/alibaba/fastjson2/d;->v:[F

    const/16 v1, 0x17

    .line 118
    new-array v1, v1, [D

    fill-array-data v1, :array_3

    sput-object v1, Lcom/alibaba/fastjson2/d;->w:[D

    const-wide/16 v1, 0x0

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/d;->x:Ljava/lang/Double;

    .line 129
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 131
    sget-object v2, Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catch_0
    invoke-static {v2}, Labe;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Labe;->a(Ljava/io/Closeable;)V

    .line 148
    throw v0

    .line 150
    :cond_0
    :goto_0
    sput-object v1, Lcom/alibaba/fastjson2/d;->B:Ljava/util/Properties;

    const-string v2, "fastjson2.creator"

    .line 153
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "asm"

    .line 165
    :cond_4
    sput-object v3, Lcom/alibaba/fastjson2/d;->b:Ljava/lang/String;

    const-string v2, "fastjson2.useJacksonAnnotation"

    .line 169
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v2, "false"

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sput-boolean v3, Lcom/alibaba/fastjson2/d;->c:Z

    const-string v3, "fastjson2.readerVector"

    .line 186
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    .line 188
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 190
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 195
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    goto :goto_1

    :cond_9
    move v1, v6

    .line 204
    :goto_1
    sget-boolean v2, Labf;->x:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 205
    sget v2, Labf;->y:I

    if-lt v2, v0, :cond_b

    :try_start_1
    const-string v0, "com.alibaba.fastjson2.JSONWriterUTF8Vector$Factory"

    .line 207
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 210
    sput-object v0, Lcom/alibaba/fastjson2/d;->a:Ljava/lang/Throwable;

    move-object v0, v3

    :goto_2
    :try_start_2
    const-string v2, "com.alibaba.fastjson2.JSONWriterUTF16Vector$Factory"

    .line 214
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 217
    sput-object v2, Lcom/alibaba/fastjson2/d;->a:Ljava/lang/Throwable;

    move-object v2, v3

    :goto_3
    if-eqz v1, :cond_a

    :try_start_3
    const-string v5, "com.alibaba.fastjson2.JSONReaderASCIIVector$Factory"

    .line 222
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/d$d;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    .line 225
    sput-object v5, Lcom/alibaba/fastjson2/d;->a:Ljava/lang/Throwable;

    move-object v5, v3

    :goto_4
    :try_start_4
    const-string v7, "com.alibaba.fastjson2.JSONReaderUTF8Vector$Factory"

    .line 229
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 230
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/d$d;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v7

    .line 232
    sput-object v7, Lcom/alibaba/fastjson2/d;->a:Ljava/lang/Throwable;

    move-object v7, v3

    goto :goto_6

    :cond_a
    move-object v5, v3

    goto :goto_5

    :cond_b
    move-object v0, v3

    move-object v2, v0

    move-object v5, v2

    :goto_5
    move-object v7, v5

    .line 237
    :goto_6
    sget v8, Labf;->y:I

    const/16 v9, 0x80

    if-lt v8, v9, :cond_c

    if-eqz v1, :cond_c

    :try_start_5
    const-string v1, "com.alibaba.fastjson2.JSONReaderUTF16Vector$Factory"

    .line 239
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/d$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 242
    sput-object v1, Lcom/alibaba/fastjson2/d;->a:Ljava/lang/Throwable;

    :cond_c
    move-object v1, v3

    goto :goto_7

    :cond_d
    move-object v0, v3

    move-object v1, v0

    move-object v2, v1

    move-object v5, v2

    move-object v7, v5

    .line 246
    :goto_7
    sput-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    .line 247
    sput-object v2, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    .line 248
    sput-object v5, Lcom/alibaba/fastjson2/d;->p:Lcom/alibaba/fastjson2/d$d;

    .line 249
    sput-object v7, Lcom/alibaba/fastjson2/d;->q:Lcom/alibaba/fastjson2/d$d;

    .line 250
    sput-object v1, Lcom/alibaba/fastjson2/d;->r:Lcom/alibaba/fastjson2/d$c;

    const/16 v0, 0x10

    .line 264
    new-array v0, v0, [Lcom/alibaba/fastjson2/d$a;

    move v1, v6

    .line 265
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 266
    new-instance v2, Lcom/alibaba/fastjson2/d$a;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/d$a;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 268
    :cond_e
    sput-object v0, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    .line 272
    const-class v0, Lcom/alibaba/fastjson2/d$a;

    const-class v1, [C

    const-string v2, "chars"

    .line 273
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 274
    const-class v0, Lcom/alibaba/fastjson2/d$a;

    const-class v1, [B

    const-string v2, "bytes"

    .line 275
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/d;->A:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 284
    new-instance v0, Lahq;

    invoke-direct {v0}, Lahq;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->C:Lahq;

    .line 285
    new-instance v0, Lzx;

    invoke-direct {v0}, Lzx;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->D:Lzx;

    .line 291
    sget-object v0, Lcom/alibaba/fastjson2/d;->b:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x422aac39

    if-eq v2, v5, :cond_10

    const v5, 0x40afd6bd

    if-eq v2, v5, :cond_f

    goto :goto_9

    :cond_f
    const-string v2, "reflect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v6

    goto :goto_9

    :cond_10
    const-string v2, "lambda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v4

    :cond_11
    :goto_9
    if-eqz v1, :cond_13

    if-eq v1, v4, :cond_13

    .line 298
    :try_start_6
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_12

    sget-boolean v0, Labf;->s:Z

    if-nez v0, :cond_12

    .line 299
    sget-object v0, Lcom/alibaba/fastjson2/i;->c:Lcom/alibaba/fastjson2/i;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-object v3, v0

    :catch_6
    :cond_12
    if-nez v3, :cond_14

    .line 305
    sget-object v3, Lcom/alibaba/fastjson2/h;->a:Lcom/alibaba/fastjson2/h;

    goto :goto_a

    .line 294
    :cond_13
    sget-object v3, Lcom/alibaba/fastjson2/h;->a:Lcom/alibaba/fastjson2/h;

    .line 309
    :cond_14
    :goto_a
    sput-object v3, Lcom/alibaba/fastjson2/d;->E:Lcom/alibaba/fastjson2/d$b;

    .line 312
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->F:Ljava/lang/ThreadLocal;

    .line 313
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->G:Ljava/lang/ThreadLocal;

    .line 314
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->H:Ljava/lang/ThreadLocal;

    .line 316
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/d;->I:Ljava/lang/ThreadLocal;

    .line 318
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v0, v1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/d;->J:Lwk;

    .line 319
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson2/e;

    invoke-virtual {v0, v1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/d;->K:Lwk;

    const/16 v0, 0x37

    .line 324
    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/fastjson2/d;->L:[B

    const/16 v0, 0x30

    :goto_b
    const/16 v1, 0x39

    if-gt v0, v1, :cond_15

    .line 326
    sget-object v1, Lcom/alibaba/fastjson2/d;->L:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_b

    :cond_15
    const/16 v0, 0x61

    :goto_c
    const/16 v1, 0x66

    if-gt v0, v1, :cond_16

    .line 329
    sget-object v1, Lcom/alibaba/fastjson2/d;->L:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_c

    :cond_16
    const/16 v0, 0x41

    :goto_d
    const/16 v1, 0x46

    if-gt v0, v1, :cond_17

    .line 332
    sget-object v1, Lcom/alibaba/fastjson2/d;->L:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_d

    :cond_17
    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data
.end method

.method public static varargs a([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab$a;
    .locals 2

    .line 371
    new-instance v0, Lcom/alibaba/fastjson2/ab$a;

    sget-object v1, Lcom/alibaba/fastjson2/d;->C:Lahq;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;[Lcom/alibaba/fastjson2/ab$b;)V

    return-object v0
.end method

.method public static varargs a(Lzx;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/u$c;
    .locals 1

    if-nez p0, :cond_0

    .line 415
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p0

    .line 418
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    .line 419
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    return-object v0
.end method

.method public static varargs a([Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/u$c;
    .locals 6

    .line 385
    new-instance v0, Lcom/alibaba/fastjson2/u$c;

    .line 386
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    const/4 v1, 0x0

    .line 388
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 389
    iget-wide v2, v0, Lcom/alibaba/fastjson2/u$c;->p:J

    aget-object v4, p0, v1

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/fastjson2/u$c;->p:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/alibaba/fastjson2/d;->B:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 254
    sget-boolean v0, Lcom/alibaba/fastjson2/d;->c:Z

    return v0
.end method

.method public static b()Lcom/alibaba/fastjson2/ab$a;
    .locals 2

    .line 361
    new-instance v0, Lcom/alibaba/fastjson2/ab$a;

    sget-object v1, Lcom/alibaba/fastjson2/d;->C:Lahq;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;)V

    return-object v0
.end method

.method public static c()Lcom/alibaba/fastjson2/u$c;
    .locals 2

    .line 375
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/alibaba/fastjson2/u$c;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/u$c;-><init>(Lzx;)V

    return-object v1
.end method

.method public static d()Lahq;
    .locals 1

    .line 456
    sget-object v0, Lcom/alibaba/fastjson2/d;->C:Lahq;

    return-object v0
.end method

.method public static e()Lzx;
    .locals 1

    .line 460
    sget-object v0, Lcom/alibaba/fastjson2/d;->G:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzx;

    if-eqz v0, :cond_0

    return-object v0

    .line 465
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/d;->D:Lzx;

    return-object v0
.end method

.method public static f()Lxa;
    .locals 1

    .line 486
    sget-object v0, Lcom/alibaba/fastjson2/d;->F:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxa;

    return-object v0
.end method

.method public static g()Lafe;
    .locals 1

    .line 498
    sget-object v0, Lcom/alibaba/fastjson2/d;->H:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafe;

    return-object v0
.end method

.method private static synthetic h()Ljava/io/InputStream;
    .locals 2

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "fastjson2.properties"

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$6Vp9TM9joiWAdGFSD1mhuH8keoc()Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/alibaba/fastjson2/d;->h()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
