.class final Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;
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
    name = "AndroidReleaseStrategy"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

.field private static final freeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;-><init>()V

    sput-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;->INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    const-string v0, "java.nio.DirectByteBuffer"

    const-string v1, "free"

    .line 116
    invoke-static {v0, v1}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;->freeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    .locals 1

    .line 107
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;->INSTANCE:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-object v0
.end method


# virtual methods
.method public release(Ljava/nio/Buffer;)V
    .locals 5

    .line 127
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;->freeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
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

    .line 135
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

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t release direct buffer as free method weren\'t available on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
