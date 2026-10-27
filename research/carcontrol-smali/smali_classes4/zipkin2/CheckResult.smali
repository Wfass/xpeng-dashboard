.class public final Lzipkin2/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# static fields
.field public static final OK:Lzipkin2/CheckResult;


# instance fields
.field final error:Ljava/lang/Throwable;

.field final ok:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lzipkin2/CheckResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/CheckResult;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lzipkin2/CheckResult;->OK:Lzipkin2/CheckResult;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lzipkin2/CheckResult;->ok:Z

    .line 50
    iput-object p2, p0, Lzipkin2/CheckResult;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public static failed(Ljava/lang/Throwable;)Lzipkin2/CheckResult;
    .locals 2

    .line 32
    new-instance v0, Lzipkin2/CheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lzipkin2/CheckResult;-><init>(ZLjava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lzipkin2/CheckResult;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public ok()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lzipkin2/CheckResult;->ok:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckResult{ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lzipkin2/CheckResult;->ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/CheckResult;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
