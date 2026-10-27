.class final Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;
.super Ljava/lang/Object;
.source "DirectByteBufferUtils.java"

# interfaces
.implements Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/utils/DirectByteBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenJdkReleaseStrategy"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

.field private static final cleanMethod:Ljava/lang/reflect/Method;

.field private static final cleanerMethod:Ljava/lang/reflect/Method;

.field private static final viewedBufferMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;-><init>()V

    sput-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    const-string v0, "sun.nio.ch.DirectBuffer"

    const-string v1, "cleaner"

    .line 57
    invoke-static {v0, v1}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanerMethod:Ljava/lang/reflect/Method;

    const-string v1, "sun.misc.Cleaner"

    const-string v2, "clean"

    .line 58
    invoke-static {v1, v2}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanMethod:Ljava/lang/reflect/Method;

    const-string v1, "viewedBuffer"

    .line 59
    invoke-static {v0, v1}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "attachment"

    .line 63
    invoke-static {v0, v1}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    :cond_0
    sput-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->viewedBufferMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    .locals 1

    .line 47
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-object v0
.end method


# virtual methods
.method public release(Ljava/nio/Buffer;)V
    .locals 5

    .line 77
    :try_start_0
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v2, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->viewedBufferMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->release(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t release direct buffer as neither cleaner nor viewedBuffer were available on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 97
    sget-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authorisation failed to invoke release on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
