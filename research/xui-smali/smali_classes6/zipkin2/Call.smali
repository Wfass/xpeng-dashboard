.class public abstract Lzipkin2/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/Call$Base;,
        Lzipkin2/Call$ErrorHandling;,
        Lzipkin2/Call$FlatMapping;,
        Lzipkin2/Call$Mapping;,
        Lzipkin2/Call$Constant;,
        Lzipkin2/Call$ErrorHandler;,
        Lzipkin2/Call$FlatMapper;,
        Lzipkin2/Call$Mapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    .local p0, "this":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation

    .line 58
    .local p0, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lzipkin2/Call$Constant;

    invoke-direct {v0, p0}, Lzipkin2/Call$Constant;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static emptyList()Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public static propagateIfFatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 137
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    .line 139
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 141
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 142
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/LinkageError;

    throw v0

    .line 140
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 138
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    invoke-virtual {p0}, Lzipkin2/Call;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract enqueue(Lzipkin2/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TV;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final flatMap(Lzipkin2/Call$FlatMapper;)Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/Call$FlatMapper<",
            "TV;TR;>;)",
            "Lzipkin2/Call<",
            "TR;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    .local p1, "flatMapper":Lzipkin2/Call$FlatMapper;, "Lzipkin2/Call$FlatMapper<TV;TR;>;"
    new-instance v0, Lzipkin2/Call$FlatMapping;

    invoke-direct {v0, p1, p0}, Lzipkin2/Call$FlatMapping;-><init>(Lzipkin2/Call$FlatMapper;Lzipkin2/Call;)V

    return-object v0
.end method

.method public final handleError(Lzipkin2/Call$ErrorHandler;)Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Call$ErrorHandler<",
            "TV;>;)",
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    .local p1, "errorHandler":Lzipkin2/Call$ErrorHandler;, "Lzipkin2/Call$ErrorHandler<TV;>;"
    new-instance v0, Lzipkin2/Call$ErrorHandling;

    invoke-direct {v0, p1, p0}, Lzipkin2/Call$ErrorHandling;-><init>(Lzipkin2/Call$ErrorHandler;Lzipkin2/Call;)V

    return-object v0
.end method

.method public abstract isCanceled()Z
.end method

.method public final map(Lzipkin2/Call$Mapper;)Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/Call$Mapper<",
            "TV;TR;>;)",
            "Lzipkin2/Call<",
            "TR;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lzipkin2/Call;, "Lzipkin2/Call<TV;>;"
    .local p1, "mapper":Lzipkin2/Call$Mapper;, "Lzipkin2/Call$Mapper<TV;TR;>;"
    new-instance v0, Lzipkin2/Call$Mapping;

    invoke-direct {v0, p1, p0}, Lzipkin2/Call$Mapping;-><init>(Lzipkin2/Call$Mapper;Lzipkin2/Call;)V

    return-object v0
.end method
