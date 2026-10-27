.class final Lzipkin2/internal/DependencyLinker$Pair;
.super Ljava/lang/Object;
.source "DependencyLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/DependencyLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pair"
.end annotation


# instance fields
.field final left:Ljava/lang/String;

.field final right:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 231
    :cond_0
    instance-of v1, p1, Lzipkin2/internal/DependencyLinker$Pair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 232
    :cond_1
    check-cast p1, Lzipkin2/internal/DependencyLinker$Pair;

    .line 233
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    iget-object v3, p1, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    iget-object p1, p1, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 240
    iget-object v0, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 242
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
