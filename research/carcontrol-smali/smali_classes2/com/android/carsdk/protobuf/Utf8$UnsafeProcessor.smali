.class final Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;
.super Lcom/android/carsdk/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:I

.field private static final AVAILABLE:Z

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 994
    invoke-static {}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    .line 995
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 996
    invoke-static {v0, v1}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    .line 997
    invoke-static {}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->byteArrayBaseOffset()I

    move-result v2

    sput v2, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 1003
    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 993
    invoke-static {p0}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->checkRequiredMethods(Ljava/lang/Class;)V

    return-void
.end method

.method private static addressOffset(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1623
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static byteArrayBaseOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 1616
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static checkRequiredMethods(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lsun/misc/Unsafe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1668
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "arrayBaseOffset"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 1669
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    const-string v4, "getByte"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    .line 1670
    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v1

    const-string v5, "putByte"

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 1671
    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    const-string v6, "getLong"

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    .line 1674
    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v2, v3

    const-string v7, "objectFieldOffset"

    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    .line 1675
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 1676
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    .line 1677
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    .line 1678
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1592
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1593
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 1598
    :goto_0
    invoke-static {}, Lcom/android/carsdk/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1599
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    aput-object p1, v4, v0

    const/4 p0, 0x2

    if-eqz v1, :cond_0

    const-string p1, "available"

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "unavailable"

    :goto_1
    aput-object p1, v4, p0

    const-string/jumbo p0, "{0}.{1}: {2}"

    .line 1598
    invoke-virtual {v2, v3, p0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 1608
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    .line 1633
    :try_start_0
    new-instance v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor$1;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 1657
    :goto_0
    invoke-static {}, Lcom/android/carsdk/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    if-eqz v0, :cond_0

    const-string v3, "available"

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "unavailable"

    :goto_1
    const-string/jumbo v4, "sun.misc.Unsafe: {}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static isAvailable()Z
    .locals 1

    .line 1010
    sget-boolean v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .locals 9

    .line 1474
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1

    .line 1483
    sget-object v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, p0, v2

    invoke-virtual {v1, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_1

    :cond_0
    move-wide p0, v4

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_6

    if-nez p2, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_5

    .line 1501
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, p0

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide p0, v2

    goto :goto_0

    :cond_5
    :goto_2
    return v5

    :cond_6
    const/16 v6, -0x10

    if-ge v1, v6, :cond_b

    const/4 v6, 0x2

    if-ge p2, v6, :cond_7

    .line 1509
    invoke-static {p0, p1, v1, p2}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_7
    add-int/lit8 p2, p2, -0x2

    .line 1513
    sget-object v6, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, p0, v2

    invoke-virtual {v6, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_a

    const/16 p1, -0x60

    if-ne v1, v0, :cond_8

    if-lt p0, p1, :cond_a

    :cond_8
    const/16 v0, -0x13

    if-ne v1, v0, :cond_9

    if-ge p0, p1, :cond_a

    :cond_9
    add-long/2addr v2, v7

    .line 1520
    invoke-virtual {v6, v7, v8}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_4

    :cond_a
    return v5

    :cond_b
    const/4 v0, 0x3

    if-ge p2, v0, :cond_c

    .line 1528
    invoke-static {p0, p1, v1, p2}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 p2, p2, -0x3

    .line 1532
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v6, p0, v2

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gt p0, v4, :cond_d

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1e

    if-nez p0, :cond_d

    add-long p0, v6, v2

    .line 1540
    invoke-virtual {v0, v6, v7}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    if-gt v1, v4, :cond_d

    add-long/2addr v2, p0

    .line 1542
    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_4

    :cond_d
    return v5
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 9

    .line 1398
    invoke-static {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1

    .line 1407
    sget-object v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, p1, v2

    invoke-virtual {v1, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_1

    :cond_0
    move-wide p1, v4

    :cond_1
    if-nez p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_6

    if-nez p3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_5

    .line 1425
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, p1

    .line 1426
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide p1, v2

    goto :goto_0

    :cond_5
    :goto_2
    return v5

    :cond_6
    const/16 v6, -0x10

    if-ge v1, v6, :cond_b

    const/4 v6, 0x2

    if-ge p3, v6, :cond_7

    .line 1433
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_7
    add-int/lit8 p3, p3, -0x2

    .line 1438
    sget-object v6, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, p1, v2

    invoke-virtual {v6, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-gt p1, v4, :cond_a

    const/16 p2, -0x60

    if-ne v1, v0, :cond_8

    if-lt p1, p2, :cond_a

    :cond_8
    const/16 v0, -0x13

    if-ne v1, v0, :cond_9

    if-ge p1, p2, :cond_a

    :cond_9
    add-long/2addr v2, v7

    .line 1444
    invoke-virtual {v6, p0, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v4, :cond_4

    :cond_a
    return v5

    :cond_b
    const/4 v0, 0x3

    if-ge p3, v0, :cond_c

    .line 1451
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 p3, p3, -0x3

    .line 1456
    sget-object v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v6, p1, v2

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-gt p1, v4, :cond_d

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_d

    add-long p1, v6, v2

    .line 1463
    invoke-virtual {v0, p0, v6, v7}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    if-gt v1, v4, :cond_d

    add-long/2addr v2, p1

    .line 1465
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v4, :cond_4

    :cond_d
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .locals 5

    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    .line 1382
    sget-object v2, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    invoke-virtual {v2, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    move-wide p0, v3

    goto :goto_0

    :cond_2
    sub-int v0, p2, v0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 1391
    sget-object v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const-wide/16 v1, 0x8

    add-long/2addr p0, v1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v0

    return p2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 5

    const/16 v0, 0x10

    if-ge p3, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    .line 1352
    sget-object v2, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    invoke-virtual {v2, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-gez p1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    move-wide p1, v3

    goto :goto_0

    :cond_2
    sub-int v0, p3, v0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 1361
    sget-object v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const-wide/16 v1, 0x8

    add-long/2addr p1, v1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    sub-int/2addr p3, v0

    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .locals 3

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1577
    sget-object p3, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-virtual {p3, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    invoke-static {p2, v0, p0}, Lcom/android/carsdk/protobuf/Utf8;->access$200(III)I

    move-result p0

    return p0

    .line 1580
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1574
    :cond_1
    sget-object p3, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    invoke-static {p2, p0}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p0

    return p0

    .line 1571
    :cond_2
    invoke-static {p2}, Lcom/android/carsdk/protobuf/Utf8;->access$600(I)I

    move-result p0

    return p0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 3

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1559
    sget-object p4, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p4, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    .line 1560
    invoke-virtual {p4, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    .line 1559
    invoke-static {p1, v0, p0}, Lcom/android/carsdk/protobuf/Utf8;->access$200(III)I

    move-result p0

    return p0

    .line 1563
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1556
    :cond_1
    sget-object p4, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p4, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    invoke-static {p1, p0}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p0

    return p0

    .line 1553
    :cond_2
    invoke-static {p1}, Lcom/android/carsdk/protobuf/Utf8;->access$600(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1205
    sget v4, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int/2addr v4, v2

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1207
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 1208
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    .line 1217
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    .line 1218
    sget-object v3, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v11, v4

    int-to-byte v13, v13

    invoke-virtual {v3, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    .line 1222
    sget v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    :goto_1
    int-to-long v0, v0

    sub-long/2addr v4, v0

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_2
    if-ge v2, v8, :cond_b

    .line 1226
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    .line 1228
    sget-object v14, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v15, v4, v11

    int-to-byte v13, v13

    invoke-virtual {v14, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide v4, v11

    move-wide v13, v15

    move v12, v3

    move-object v15, v9

    move-object/from16 v16, v10

    goto/16 :goto_4

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    .line 1230
    sget-object v14, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v9

    move-object/from16 v16, v10

    add-long v9, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {v14, v1, v4, v5, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-long v3, v9, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 1231
    invoke-virtual {v14, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide v13, v3

    move-wide v4, v11

    :goto_3
    const/16 v12, 0x80

    goto/16 :goto_4

    :cond_3
    move-object v15, v9

    move-object/from16 v16, v10

    const v3, 0xdfff

    const v9, 0xd800

    if-lt v13, v9, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v17, 0x3

    sub-long v17, v6, v17

    cmp-long v10, v4, v17

    if-gtz v10, :cond_5

    .line 1234
    sget-object v3, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v4, v11

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    invoke-virtual {v3, v1, v4, v5, v14}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-long v4, v9, v11

    ushr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v14, 0x80

    int-to-byte v12, v12

    .line 1235
    invoke-virtual {v3, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v9, 0x1

    add-long v19, v4, v9

    and-int/lit8 v9, v13, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    .line 1236
    invoke-virtual {v3, v1, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide/from16 v13, v19

    const-wide/16 v4, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v10, 0x4

    sub-long v10, v6, v10

    cmp-long v10, v4, v10

    const/4 v11, 0x0

    if-gtz v10, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    .line 1241
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1244
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1245
    sget-object v9, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long v10, v4, v12

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    invoke-virtual {v9, v1, v4, v5, v14}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-long v4, v10, v12

    ushr-int/lit8 v14, v2, 0xc

    and-int/lit8 v14, v14, 0x3f

    const/16 v12, 0x80

    or-int/lit16 v13, v14, 0x80

    int-to-byte v13, v13

    .line 1246
    invoke-virtual {v9, v1, v10, v11, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v13, 0x1

    add-long v10, v4, v13

    ushr-int/lit8 v17, v2, 0x6

    and-int/lit8 v13, v17, 0x3f

    or-int/2addr v13, v12

    int-to-byte v13, v13

    .line 1247
    invoke-virtual {v9, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v4, 0x1

    add-long v13, v10, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v12

    int-to-byte v2, v2

    .line 1248
    invoke-virtual {v9, v1, v10, v11, v2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move v2, v3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v3, v12

    move-object v9, v15

    move-object/from16 v10, v16

    move-wide v11, v4

    move-wide v4, v13

    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 1242
    :cond_7
    new-instance v0, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8, v11}, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/android/carsdk/protobuf/Utf8$1;)V

    throw v0

    :cond_8
    if-gt v9, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 1251
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1253
    :cond_9
    new-instance v0, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8, v11}, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/android/carsdk/protobuf/Utf8$1;)V

    throw v0

    .line 1256
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v7, v15

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_b
    sget v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    goto/16 :goto_1

    :cond_c
    move-object v7, v9

    move-object v6, v10

    .line 1210
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    .line 1211
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1266
    invoke-static/range {p2 .. p2}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1267
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1268
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1269
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_c

    const/4 v9, 0x0

    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_0

    .line 1279
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_0

    .line 1280
    sget-object v12, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v13, v4

    int-to-byte v15, v15

    invoke-virtual {v12, v4, v5, v15}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v13

    goto :goto_0

    :cond_0
    if-ne v9, v8, :cond_1

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 1284
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    :goto_1
    if-ge v9, v8, :cond_b

    .line 1289
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_2

    cmp-long v16, v4, v6

    if-gez v16, :cond_2

    .line 1291
    sget-object v12, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v17, v4, v13

    int-to-byte v15, v15

    invoke-virtual {v12, v4, v5, v15}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide/from16 v19, v6

    move-wide/from16 v4, v17

    const/16 v15, 0x80

    move-wide/from16 v17, v2

    goto/16 :goto_3

    :cond_2
    const/16 v12, 0x800

    if-ge v15, v12, :cond_3

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v12, v4, v17

    if-gtz v12, :cond_3

    .line 1293
    sget-object v12, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v17, v2

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {v12, v4, v5, v3}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long v3, v1, v13

    and-int/lit8 v5, v15, 0x3f

    const/16 v15, 0x80

    or-int/2addr v5, v15

    int-to-byte v5, v5

    .line 1294
    invoke-virtual {v12, v1, v2, v5}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide v4, v3

    move-wide/from16 v19, v6

    :goto_2
    const/16 v15, 0x80

    goto/16 :goto_3

    :cond_3
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_4

    if-ge v1, v15, :cond_5

    :cond_4
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_5

    .line 1297
    sget-object v1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v2, v4, v13

    ushr-int/lit8 v12, v15, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    invoke-virtual {v1, v4, v5, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long v4, v2, v13

    ushr-int/lit8 v12, v15, 0x6

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/2addr v12, v13

    int-to-byte v12, v12

    .line 1298
    invoke-virtual {v1, v2, v3, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    const-wide/16 v2, 0x1

    add-long v21, v4, v2

    and-int/lit8 v2, v15, 0x3f

    or-int/2addr v2, v13

    int-to-byte v2, v2

    .line 1299
    invoke-virtual {v1, v4, v5, v2}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide/from16 v19, v6

    move-wide/from16 v4, v21

    const-wide/16 v13, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v12, 0x4

    sub-long v12, v6, v12

    cmp-long v3, v4, v12

    const/4 v12, 0x0

    if-gtz v3, :cond_8

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_7

    .line 1304
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1307
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1308
    sget-object v3, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v19, v6

    const-wide/16 v13, 0x1

    add-long v6, v4, v13

    ushr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-virtual {v3, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long v4, v6, v13

    ushr-int/lit8 v9, v2, 0xc

    and-int/lit8 v9, v9, 0x3f

    const/16 v15, 0x80

    or-int/2addr v9, v15

    int-to-byte v9, v9

    .line 1309
    invoke-virtual {v3, v6, v7, v9}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long v6, v4, v13

    ushr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v15

    int-to-byte v9, v9

    .line 1310
    invoke-virtual {v3, v4, v5, v9}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long v4, v6, v13

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v15

    int-to-byte v2, v2

    .line 1311
    invoke-virtual {v3, v6, v7, v2}, Lsun/misc/Unsafe;->putByte(JB)V

    move v9, v1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move v12, v15

    move-wide/from16 v2, v17

    move-wide/from16 v6, v19

    goto/16 :goto_1

    :cond_6
    move v9, v1

    .line 1305
    :cond_7
    new-instance v0, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8, v12}, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/android/carsdk/protobuf/Utf8$1;)V

    throw v0

    :cond_8
    if-gt v2, v15, :cond_a

    if-gt v15, v1, :cond_a

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_9

    .line 1314
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1316
    :cond_9
    new-instance v0, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8, v12}, Lcom/android/carsdk/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/android/carsdk/protobuf/Utf8$1;)V

    throw v0

    .line 1319
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    .line 1324
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 1272
    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v8, -0x1

    .line 1273
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 11

    or-int v0, p3, p4

    .line 1015
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    .line 1019
    sget v0, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int/2addr p3, v0

    int-to-long v2, p3

    add-int/2addr v0, p4

    int-to-long p3, v0

    if-eqz p1, :cond_10

    cmp-long v0, v2, p3

    if-ltz v0, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    .line 1039
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v7, v2

    .line 1041
    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v7

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v5

    :cond_3
    const/16 v9, -0x10

    if-ge v0, v9, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    .line 1050
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v2, v7

    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    cmp-long v1, v9, p3

    if-ltz v1, :cond_4

    .line 1052
    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p1

    return p1

    :cond_4
    move-wide v2, v9

    :cond_5
    if-gt p1, v6, :cond_9

    const/16 v1, -0x60

    if-ne v0, v4, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v4, -0x13

    if-ne v0, v4, :cond_7

    if-ge p1, v1, :cond_9

    .line 1055
    :cond_7
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v0, v2, v7

    .line 1061
    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v6, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v0

    goto :goto_3

    :cond_9
    :goto_1
    return v5

    :cond_a
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_c

    .line 1071
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v2, v7

    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    cmp-long p1, v9, p3

    if-ltz p1, :cond_b

    .line 1073
    invoke-static {v0, v4}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p1

    return p1

    :cond_b
    move-wide v2, v9

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_2
    if-nez v1, :cond_e

    .line 1079
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v2, v7

    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    cmp-long p1, v9, p3

    if-ltz p1, :cond_d

    .line 1081
    invoke-static {v0, v4, v1}, Lcom/android/carsdk/protobuf/Utf8;->access$200(III)I

    move-result p1

    return p1

    :cond_d
    move-wide v2, v9

    :cond_e
    if-gt v4, v6, :cond_f

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_f

    if-gt v1, v6, :cond_f

    .line 1089
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v0, v2, v7

    .line 1098
    invoke-virtual {p1, p2, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v6, :cond_8

    :cond_f
    return v5

    :cond_10
    :goto_3
    sub-long/2addr p3, v2

    long-to-int p1, p3

    .line 1104
    invoke-static {p2, v2, v3, p1}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1016
    :cond_11
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 1017
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 10

    or-int v0, p3, p4

    .line 1110
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    .line 1114
    invoke-static {p2}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v2

    if-eqz p1, :cond_10

    cmp-long p4, v2, p2

    if-ltz p4, :cond_0

    return p1

    :cond_0
    int-to-byte p4, p1

    const/16 v0, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p4, v0, :cond_3

    const/16 p1, -0x3e

    if-lt p4, p1, :cond_2

    .line 1135
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v6, v2

    .line 1137
    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/16 v8, -0x10

    if-ge p4, v8, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    .line 1146
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v8, v2, v6

    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    cmp-long v1, v8, p2

    if-ltz v1, :cond_4

    .line 1148
    invoke-static {p4, p1}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p1

    return p1

    :cond_4
    move-wide v2, v8

    :cond_5
    if-gt p1, v5, :cond_9

    const/16 v1, -0x60

    if-ne p4, v0, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v0, -0x13

    if-ne p4, v0, :cond_7

    if-ge p1, v1, :cond_9

    .line 1151
    :cond_7
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v0, v2, v6

    .line 1157
    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v0

    goto :goto_3

    :cond_9
    :goto_1
    return v4

    :cond_a
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_c

    .line 1167
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v8, v2, v6

    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    cmp-long p1, v8, p2

    if-ltz p1, :cond_b

    .line 1169
    invoke-static {p4, v0}, Lcom/android/carsdk/protobuf/Utf8;->access$100(II)I

    move-result p1

    return p1

    :cond_b
    move-wide v2, v8

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_2
    if-nez v1, :cond_e

    .line 1175
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v8, v2, v6

    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    cmp-long p1, v8, p2

    if-ltz p1, :cond_d

    .line 1177
    invoke-static {p4, v0, v1}, Lcom/android/carsdk/protobuf/Utf8;->access$200(III)I

    move-result p1

    return p1

    :cond_d
    move-wide v2, v8

    :cond_e
    if-gt v0, v5, :cond_f

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_f

    if-gt v1, v5, :cond_f

    .line 1185
    sget-object p1, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v0, v2, v6

    .line 1194
    invoke-virtual {p1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_8

    :cond_f
    return v4

    :cond_10
    :goto_3
    sub-long/2addr p2, v2

    long-to-int p1, p2

    .line 1200
    invoke-static {v2, v3, p1}, Lcom/android/carsdk/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1111
    :cond_11
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1112
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
