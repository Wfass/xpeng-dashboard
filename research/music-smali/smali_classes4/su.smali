.class public abstract Lsu;
.super Ljava/lang/Object;
.source "FieldReader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lsu;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/reflect/Type;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Field;

.field protected final i:J

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/Locale;

.field public final l:Laai;

.field final m:Z

.field final n:J

.field final o:J

.field volatile p:Lwk;

.field volatile q:Lcom/alibaba/fastjson2/g;

.field final r:Z

.field final s:Z

.field t:Ljava/lang/reflect/Type;

.field u:Ljava/lang/Class;

.field volatile v:Lwk;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lsu;->b:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lsu;->d:Ljava/lang/reflect/Type;

    .line 84
    iput-object p3, p0, Lsu;->c:Ljava/lang/Class;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 85
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    iput-boolean v1, p0, Lsu;->m:Z

    .line 87
    iput-wide p5, p0, Lsu;->e:J

    .line 88
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lsu;->n:J

    .line 89
    invoke-static {p1}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lsu;->o:J

    .line 90
    iput p4, p0, Lsu;->a:I

    .line 91
    iput-object p7, p0, Lsu;->f:Ljava/lang/String;

    .line 92
    iput-object p8, p0, Lsu;->k:Ljava/util/Locale;

    .line 93
    iput-object p9, p0, Lsu;->j:Ljava/lang/Object;

    .line 94
    iput-object p10, p0, Lsu;->l:Laai;

    .line 95
    iput-object p11, p0, Lsu;->g:Ljava/lang/reflect/Method;

    .line 96
    iput-object p12, p0, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz p11, :cond_2

    .line 99
    invoke-virtual {p11}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p1

    if-nez p1, :cond_2

    :goto_1
    move p2, v0

    goto :goto_2

    :cond_2
    if-eqz p12, :cond_3

    .line 101
    invoke-virtual {p12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 104
    :cond_3
    :goto_2
    iput-boolean p2, p0, Lsu;->s:Z

    const-wide/16 p1, -0x1

    if-eqz p12, :cond_4

    const-wide/high16 p7, 0x80000000000000L

    and-long p4, p5, p7

    const-wide/16 p6, 0x0

    cmp-long p4, p4, p6

    if-nez p4, :cond_4

    .line 108
    sget-object p4, Labf;->a:Lsun/misc/Unsafe;

    invoke-virtual {p4, p12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p4

    goto :goto_3

    :cond_4
    move-wide p4, p1

    .line 110
    :goto_3
    iput-wide p4, p0, Lsu;->i:J

    cmp-long p1, p4, p1

    if-nez p1, :cond_5

    if-eqz p12, :cond_5

    if-nez p11, :cond_5

    .line 114
    :try_start_0
    invoke-virtual {p12, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Labf;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    const/4 p1, 0x0

    if-eqz p11, :cond_6

    .line 122
    invoke-virtual {p11}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_5

    :cond_6
    if-eqz p12, :cond_7

    .line 124
    invoke-virtual {p12}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 127
    :cond_7
    :goto_5
    invoke-static {p1, p3}, Laax;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lsu;->r:Z

    return-void
.end method

.method static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;
    .locals 7

    if-eqz p2, :cond_c

    .line 505
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 506
    invoke-interface {p0}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "java.sql.Timestamp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    goto :goto_0

    :sswitch_1
    const-string v2, "java.sql.Time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "java.sql.Date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "[B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "byte[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    :cond_0
    :goto_0
    if-eqz v1, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_8

    .line 518
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    invoke-static {p2, p3}, Lxk;->a(Ljava/lang/String;Ljava/util/Locale;)Lxk;

    move-result-object p0

    return-object p0

    .line 522
    :cond_1
    const-class v0, Ljava/time/ZonedDateTime;

    if-ne p1, v0, :cond_2

    .line 523
    invoke-static {p2, p3}, Lzs;->a(Ljava/lang/String;Ljava/util/Locale;)Lzs;

    move-result-object p0

    return-object p0

    .line 526
    :cond_2
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p1, v0, :cond_3

    .line 527
    new-instance p0, Lyt;

    invoke-direct {p0, p2, p3}, Lyt;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 530
    :cond_3
    const-class v0, Ljava/time/LocalDate;

    if-ne p1, v0, :cond_4

    .line 531
    invoke-static {p2, p3}, Lys;->a(Ljava/lang/String;Ljava/util/Locale;)Lys;

    move-result-object p0

    return-object p0

    .line 534
    :cond_4
    const-class v0, Ljava/time/LocalTime;

    if-ne p1, v0, :cond_5

    .line 535
    new-instance p0, Lyu;

    invoke-direct {p0, p2, p3}, Lyu;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 538
    :cond_5
    const-class v0, Ljava/time/Instant;

    if-ne p1, v0, :cond_6

    .line 539
    invoke-static {p2, p3}, Lyd;->a(Ljava/lang/String;Ljava/util/Locale;)Lyd;

    move-result-object p0

    return-object p0

    .line 542
    :cond_6
    const-class v0, Ljava/util/Optional;

    if-ne p1, v0, :cond_7

    .line 543
    invoke-static {p0, p2, p3}, Lzh;->a(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)Lzh;

    move-result-object p0

    return-object p0

    .line 546
    :cond_7
    const-class p0, Ljava/util/Date;

    if-ne p1, p0, :cond_c

    .line 547
    invoke-static {p2, p3}, Lxp;->a(Ljava/lang/String;Ljava/util/Locale;)Lxp;

    move-result-object p0

    return-object p0

    .line 516
    :cond_8
    new-instance p0, Lyl;

    invoke-direct {p0, p2}, Lyl;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 513
    :cond_9
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Labh;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object p0

    return-object p0

    .line 511
    :cond_a
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Labh;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object p0

    return-object p0

    .line 509
    :cond_b
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Labh;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51e5b596 -> :sswitch_4
        0xb47 -> :sswitch_3
        0x40d5de3a -> :sswitch_2
        0x40dd4159 -> :sswitch_1
        0x4aad720a -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Lsu;)Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p1, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lsu;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Laax;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lsu;)I
    .locals 8

    .line 204
    iget-object v0, p0, Lsu;->b:Ljava/lang/String;

    iget-object v1, p1, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 206
    iget v3, p0, Lsu;->a:I

    iget p1, p1, Lsu;->a:I

    if-ge v3, p1, :cond_0

    return v1

    :cond_0
    if-le v3, p1, :cond_1

    return v2

    :cond_1
    return v0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lsu;->c()Z

    move-result v0

    invoke-virtual {p1}, Lsu;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lsu;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    return v0

    .line 221
    :cond_5
    iget-object v3, p0, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    .line 222
    :goto_1
    iget-object v5, p1, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p1, Lsu;->g:Ljava/lang/reflect/Method;

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_9

    .line 224
    invoke-interface {v5}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 225
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v5, :cond_9

    .line 228
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v2

    .line 230
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    .line 236
    :cond_9
    iget-object v3, p0, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_c

    iget-object v5, p1, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_c

    .line 237
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 238
    iget-object v5, p1, Lsu;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 240
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_b

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_b

    if-ne v6, v5, :cond_a

    return v2

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_3

    .line 246
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_c

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_c

    if-ne v5, v3, :cond_b

    return v1

    .line 253
    :cond_c
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_19

    iget-object v5, p1, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_19

    .line 254
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 255
    iget-object v5, p1, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 257
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_e

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_e

    if-ne v6, v5, :cond_d

    return v1

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_4

    .line 263
    :cond_e
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_f

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_f

    if-ne v5, v3, :cond_e

    return v2

    .line 269
    :cond_f
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    if-ne v3, v2, :cond_17

    iget-object v3, p1, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    if-ne v3, v2, :cond_17

    .line 270
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v4

    .line 271
    iget-object v5, p1, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v4, v5, v4

    if-eq v3, v4, :cond_17

    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_10

    return v2

    .line 278
    :cond_10
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_11

    return v1

    .line 282
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_13

    const-class v5, Ljava/lang/Integer;

    if-eq v4, v5, :cond_12

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_13

    :cond_12
    return v2

    .line 286
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_15

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_14

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_15

    :cond_14
    return v1

    .line 290
    :cond_15
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    const-class v4, Lqc;

    invoke-static {v3, v4}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lqc;

    .line 291
    iget-object v4, p1, Lsu;->g:Ljava/lang/reflect/Method;

    const-class v5, Lqc;

    invoke-static {v4, v5}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lqc;

    if-eqz v3, :cond_16

    if-nez v4, :cond_16

    return v1

    :cond_16
    if-nez v3, :cond_17

    if-eqz v4, :cond_17

    return v2

    .line 303
    :cond_17
    iget-object v3, p0, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 304
    iget-object v4, p1, Lsu;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    const/4 v5, 0x0

    .line 306
    invoke-static {v3, v5}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v4, v5}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    iget-object v5, p0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p1, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    return v2

    .line 311
    :cond_18
    iget-object v5, p1, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    .line 317
    :cond_19
    invoke-virtual {p0}, Lsu;->d()Lwk;

    move-result-object v3

    .line 318
    invoke-virtual {p1}, Lsu;->d()Lwk;

    move-result-object v4

    if-eqz v3, :cond_1a

    if-nez v4, :cond_1a

    return v1

    :cond_1a
    if-nez v3, :cond_1b

    if-eqz v4, :cond_1b

    return v2

    .line 327
    :cond_1b
    iget-object v3, p0, Lsu;->c:Ljava/lang/Class;

    .line 328
    iget-object p1, p1, Lsu;->c:Ljava/lang/Class;

    .line 330
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    .line 331
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v4, :cond_1c

    if-nez v5, :cond_1c

    return v1

    :cond_1c
    if-nez v4, :cond_1d

    if-eqz v5, :cond_1d

    return v2

    .line 340
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 341
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz v3, :cond_1e

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    if-nez v3, :cond_1f

    if-eqz p1, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 160
    iget-object v0, p0, Lsu;->t:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson2/u$c;)Lwk;
    .locals 1

    .line 144
    iget-object v0, p0, Lsu;->p:Lwk;

    if-eqz v0, :cond_0

    .line 145
    iget-object p1, p0, Lsu;->p:Lwk;

    return-object p1

    .line 147
    :cond_0
    iget-object v0, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lsu;->p:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 1

    .line 137
    iget-object v0, p0, Lsu;->p:Lwk;

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lsu;->p:Lwk;

    return-object p1

    .line 140
    :cond_0
    iget-object v0, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lsu;->p:Lwk;

    return-object p1
.end method

.method public a(Lzx;)Lwk;
    .locals 4

    .line 151
    iget-object v0, p0, Lsu;->p:Lwk;

    if-eqz v0, :cond_0

    .line 152
    iget-object p1, p0, Lsu;->p:Lwk;

    return-object p1

    .line 155
    :cond_0
    iget-wide v0, p0, Lsu;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    iput-object p1, p0, Lsu;->p:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lsu;->q:Lcom/alibaba/fastjson2/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsu;->q:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p3, p0, Lsu;->q:Lcom/alibaba/fastjson2/g;

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object p3

    iput-object p3, p0, Lsu;->q:Lcom/alibaba/fastjson2/g;

    .line 199
    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/alibaba/fastjson2/u;->a(Lsu;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lsu;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, p1, v0}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 376
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 392
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 400
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 396
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 388
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 406
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 411
    invoke-virtual {p0, v5}, Lsu;->a(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 412
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 413
    iget-object v6, p0, Lsu;->c:Ljava/lang/Class;

    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_3

    move-object v7, p2

    move v6, v4

    goto :goto_2

    .line 416
    :cond_0
    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lsu;->c:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lsu;->c:Ljava/lang/Class;

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_3

    :cond_1
    sget-object v6, Lcom/alibaba/fastjson2/u$d;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v6, p3

    cmp-long v6, v6, v1

    if-eqz v6, :cond_3

    .line 420
    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    .line 421
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v7, v6

    goto :goto_1

    :cond_3
    move-object v7, p2

    :goto_1
    move v6, v3

    .line 424
    :goto_2
    iget-object v8, p0, Lsu;->c:Ljava/lang/Class;

    if-eq v5, v8, :cond_4

    if-eqz v6, :cond_4

    .line 425
    invoke-virtual {v0, v5, v8}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 428
    invoke-interface {v5, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v7

    goto :goto_3

    :cond_5
    move-object v5, p2

    move v6, v3

    :goto_3
    if-eqz v5, :cond_e

    .line 435
    iget-object v7, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_6

    goto/16 :goto_7

    .line 438
    :cond_6
    instance-of v7, v5, Lcom/alibaba/fastjson2/e;

    if-eqz v7, :cond_8

    .line 439
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v6, p3

    cmp-long v0, v6, v1

    if-eqz v0, :cond_7

    .line 440
    new-array v0, v3, [Lcom/alibaba/fastjson2/u$d;

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    aput-object v1, v0, v4

    goto :goto_4

    .line 441
    :cond_7
    new-array v0, v4, [Lcom/alibaba/fastjson2/u$d;

    .line 442
    :goto_4
    check-cast v5, Lcom/alibaba/fastjson2/e;

    iget-object v1, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_7

    .line 443
    :cond_8
    instance-of v7, v5, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v7, :cond_9

    .line 444
    check-cast v5, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v0, p0, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_7

    :cond_9
    cmp-long v7, p3, v1

    if-nez v7, :cond_b

    .line 445
    iget-object v7, p0, Lsu;->c:Ljava/lang/Class;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lsu;->f:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 446
    invoke-virtual {p0}, Lsu;->d()Lwk;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 448
    invoke-static {v5}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v2

    iget-object v3, p0, Lsu;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lsu;->b:Ljava/lang/String;

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 451
    :cond_a
    iget-object v1, p0, Lsu;->c:Ljava/lang/Class;

    invoke-static {v5, v1, v0}, Labo;->a(Ljava/lang/Object;Ljava/lang/Class;Lzx;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    move-object v5, v0

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_e

    .line 455
    invoke-static {v5}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v5

    .line 457
    sget-object v6, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v6, p3

    cmp-long v1, v6, v1

    if-eqz v1, :cond_c

    .line 458
    new-array v1, v3, [Lcom/alibaba/fastjson2/u$d;

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    aput-object v2, v1, v4

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 460
    :cond_c
    invoke-static {v0, v5}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object v7

    .line 461
    :try_start_0
    invoke-virtual {p0, v7}, Lsu;->a(Lcom/alibaba/fastjson2/u;)Lwk;

    move-result-object v1

    const/4 v3, 0x0

    .line 462
    iget-object v4, p0, Lsu;->b:Ljava/lang/String;

    move-object v2, v7

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_e

    .line 463
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/u;->close()V

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_d

    .line 460
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/u;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    throw v1

    .line 469
    :cond_e
    :goto_7
    invoke-virtual {p0, p1, v5}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 380
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 368
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lsu;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
.end method

.method public b(Lcom/alibaba/fastjson2/u$c;)Lwk;
    .locals 1

    .line 494
    iget-object v0, p0, Lsu;->v:Lwk;

    if-eqz v0, :cond_0

    .line 495
    iget-object p1, p0, Lsu;->v:Lwk;

    return-object p1

    .line 497
    :cond_0
    iget-object v0, p0, Lsu;->t:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lsu;->v:Lwk;

    return-object p1
.end method

.method public abstract b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation
.end method

.method public b()Z
    .locals 4

    .line 354
    iget-wide v0, p0, Lsu;->e:J

    const-wide/high16 v2, 0x2000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 1

    .line 594
    iget-object v0, p0, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lsu;)Z
    .locals 4

    .line 561
    iget-object v0, p0, Lsu;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object v2, p1, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 569
    :cond_0
    iget-object v2, p1, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 570
    invoke-direct {p0, p1}, Lsu;->c(Lsu;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 577
    :cond_1
    iget-object v0, p0, Lsu;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 578
    invoke-direct {p0, p0}, Lsu;->c(Lsu;)Ljava/lang/String;

    move-result-object v0

    .line 579
    iget-object v3, p1, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 580
    invoke-direct {p0, p1}, Lsu;->c(Lsu;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 585
    :cond_2
    iget-object p1, p1, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    :cond_4
    return v2
.end method

.method public c(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 0

    .line 501
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsu;->b(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0

    .line 487
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lsu;->s:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lsu;

    invoke-virtual {p0, p1}, Lsu;->a(Lsu;)I

    move-result p1

    return p1
.end method

.method public d()Lwk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/function/BiConsumer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lsu;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsu;->h:Ljava/lang/reflect/Field;

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lsu;->b:Ljava/lang/String;

    return-object v0
.end method
