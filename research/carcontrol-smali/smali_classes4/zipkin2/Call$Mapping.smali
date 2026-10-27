.class final Lzipkin2/Call$Mapping;
.super Lzipkin2/Call$Base;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/Call$Base<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final delegate:Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation
.end field

.field final mapper:Lzipkin2/Call$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call$Mapper<",
            "TV;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzipkin2/Call$Mapper;Lzipkin2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Call$Mapper<",
            "TV;TR;>;",
            "Lzipkin2/Call<",
            "TV;>;)V"
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lzipkin2/Call$Base;-><init>()V

    .line 232
    iput-object p1, p0, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    .line 233
    iput-object p2, p0, Lzipkin2/Call$Mapping;->delegate:Lzipkin2/Call;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lzipkin2/Call$Mapping;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lzipkin2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "TR;>;"
        }
    .end annotation

    .line 261
    new-instance v0, Lzipkin2/Call$Mapping;

    iget-object v1, p0, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    iget-object v2, p0, Lzipkin2/Call$Mapping;->delegate:Lzipkin2/Call;

    invoke-virtual {v2}, Lzipkin2/Call;->clone()Lzipkin2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lzipkin2/Call$Mapping;-><init>(Lzipkin2/Call$Mapper;Lzipkin2/Call;)V

    return-object v0
.end method

.method protected doEnqueue(Lzipkin2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lzipkin2/Call$Mapping;->delegate:Lzipkin2/Call;

    new-instance v1, Lzipkin2/Call$Mapping$1;

    invoke-direct {v1, p0, p1}, Lzipkin2/Call$Mapping$1;-><init>(Lzipkin2/Call$Mapping;Lzipkin2/Callback;)V

    invoke-virtual {v0, v1}, Lzipkin2/Call;->enqueue(Lzipkin2/Callback;)V

    return-void
.end method

.method protected doExecute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    iget-object v1, p0, Lzipkin2/Call$Mapping;->delegate:Lzipkin2/Call;

    invoke-virtual {v1}, Lzipkin2/Call;->execute()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lzipkin2/Call$Mapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mapping{call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/Call$Mapping;->delegate:Lzipkin2/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/Call$Mapping;->mapper:Lzipkin2/Call$Mapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
