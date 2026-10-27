.class public Lorg/jaudiotagger/utils/DirectByteBufferUtils;
.super Ljava/lang/Object;
.source "DirectByteBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;,
        Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;,
        Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;,
        Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    }
.end annotation


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;

.field private static releaseStrategy:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    .line 33
    invoke-static {}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->decideReleaseStrategy()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->releaseStrategy:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static decideReleaseStrategy()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    .locals 5

    const-string v0, "java.vendor"

    .line 173
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sun Microsystems Inc."

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Oracle Corporation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "The Android Project"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$AndroidReleaseStrategy;->access$200()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    sget-object v1, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Won\'t be able to release direct buffers as this JVM is unsupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;->access$300()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    :goto_0
    invoke-static {}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->access$100()Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    move-result-object v0

    return-object v0
.end method

.method private static loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    .line 194
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    .line 195
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static release(Ljava/nio/Buffer;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 239
    invoke-virtual {p0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->releaseStrategy:Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    invoke-interface {v0, p0}, Lorg/jaudiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;->release(Ljava/nio/Buffer;)V

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not direct."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
