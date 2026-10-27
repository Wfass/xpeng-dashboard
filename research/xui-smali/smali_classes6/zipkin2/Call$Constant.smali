.class final Lzipkin2/Call$Constant;
.super Lzipkin2/Call$Base;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/Call$Base<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lzipkin2/Call$Base;-><init>()V

    .line 190
    iput-object p1, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    .line 191
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

    .line 186
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    invoke-virtual {p0}, Lzipkin2/Call$Constant;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lzipkin2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "TV;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    new-instance v0, Lzipkin2/Call$Constant;

    iget-object v1, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lzipkin2/Call$Constant;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected doEnqueue(Lzipkin2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/Callback<",
            "TV;>;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    .local p1, "callback":Lzipkin2/Callback;, "Lzipkin2/Callback<TV;>;"
    iget-object v0, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lzipkin2/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method protected doExecute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    iget-object v0, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 211
    :cond_0
    instance-of v1, p1, Lzipkin2/Call$Constant;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 212
    move-object v1, p1

    check-cast v1, Lzipkin2/Call$Constant;

    .line 213
    .local v1, "that":Lzipkin2/Call$Constant;
    iget-object v3, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v3, v1, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    iget-object v2, v1, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 215
    .end local v1    # "that":Lzipkin2/Call$Constant;
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 220
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    const/4 v0, 0x1

    .line 221
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 222
    iget-object v1, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    .line 223
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    .local p0, "this":Lzipkin2/Call$Constant;, "Lzipkin2/Call$Constant<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantCall{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Call$Constant;->v:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
