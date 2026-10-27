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
    .param p1, "left"    # Ljava/lang/String;
    .param p2, "right"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 230
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
    move-object v1, p1

    check-cast v1, Lzipkin2/internal/DependencyLinker$Pair;

    .line 233
    .local v1, "that":Lzipkin2/internal/DependencyLinker$Pair;
    iget-object v3, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 238
    const/4 v0, 0x1

    .line 239
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 240
    iget-object v2, p0, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 241
    mul-int/2addr v0, v1

    .line 242
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 243
    return v0
.end method
