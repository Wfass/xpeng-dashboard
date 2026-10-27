.class Laht;
.super Ljava/lang/Object;
.source "ImageKey.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/util/Size;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/util/Size;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/car/apps/common/i;->a(Landroid/net/Uri;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Empty uri!"

    invoke-static {v0, v1}, Lfg;->a(ZLjava/lang/Object;)V

    .line 37
    iput-object p1, p0, Laht;->a:Landroid/net/Uri;

    .line 38
    iput-object p2, p0, Laht;->b:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    check-cast p1, Laht;

    .line 47
    iget-object v2, p0, Laht;->a:Landroid/net/Uri;

    iget-object v3, p1, Laht;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laht;->b:Landroid/util/Size;

    iget-object p1, p1, Laht;->b:Landroid/util/Size;

    .line 48
    invoke-virtual {v2, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laht;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Laht;->b:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageKey{mImageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laht;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxImageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laht;->b:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
