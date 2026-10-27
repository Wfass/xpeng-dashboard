.class public abstract Lzipkin2/reporter/Sender;
.super Lzipkin2/Component;
.source "Sender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lzipkin2/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encoding()Lzipkin2/codec/Encoding;
.end method

.method public abstract messageMaxBytes()I
.end method

.method public messageSizeInBytes(I)I
    .locals 1
    .param p1, "encodedSizeInBytes"    # I

    .line 77
    new-array v0, p1, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/reporter/Sender;->messageSizeInBytes(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public abstract messageSizeInBytes(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation
.end method

.method public abstract sendSpans(Ljava/util/List;)Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lzipkin2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
