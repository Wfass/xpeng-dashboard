.class public Lcom/android/car/media/common/MediaItemMetadata$a;
.super Ljava/lang/Object;
.source "MediaItemMetadata.java"

# interfaces
.implements Lahs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/MediaItemMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/media/common/MediaItemMetadata;


# direct methods
.method public constructor <init>(Lcom/android/car/media/common/MediaItemMetadata;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-virtual {v0}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-virtual {v0}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/android/car/apps/common/c;->a(Landroid/content/Context;)Lcom/android/car/apps/common/c;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/android/car/apps/common/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-static {p1}, Lcom/android/car/media/common/MediaItemMetadata;->a(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    .line 122
    invoke-static {p1}, Lcom/android/car/media/common/MediaItemMetadata;->a(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 164
    invoke-direct {p0, p1}, Lcom/android/car/media/common/MediaItemMetadata$a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/android/car/apps/common/h$d;->improper_image_refs_tint_color:I

    .line 168
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 167
    invoke-static {v0, p1}, Lcom/android/car/apps/common/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lahs$b;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    sget-object v0, Lahs$b;->NONE:Lahs$b;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    invoke-static {p2, p1}, Lcom/android/car/media/common/MediaItemMetadata;->a(Lahs$b;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 180
    invoke-direct {p0}, Lcom/android/car/media/common/MediaItemMetadata$a;->b()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p2

    .line 181
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-static {v0}, Lcom/android/car/media/common/MediaItemMetadata;->b(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 145
    :cond_1
    check-cast p2, Lcom/android/car/media/common/MediaItemMetadata$a;

    .line 147
    invoke-direct {p0, p1}, Lcom/android/car/media/common/MediaItemMetadata$a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    invoke-direct {p2, p1}, Lcom/android/car/media/common/MediaItemMetadata$a;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez v2, :cond_6

    if-eqz p1, :cond_2

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata$a;->a()Landroid/net/Uri;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Lcom/android/car/media/common/MediaItemMetadata$a;->a()Landroid/net/Uri;

    move-result-object v2

    if-nez p1, :cond_5

    if-eqz v2, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/android/car/media/common/MediaItemMetadata$a;->b()I

    move-result p1

    invoke-direct {p2}, Lcom/android/car/media/common/MediaItemMetadata$a;->b()I

    move-result p2

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 156
    :cond_5
    :goto_1
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 150
    :cond_6
    :goto_2
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata$a;->a:Lcom/android/car/media/common/MediaItemMetadata;

    invoke-static {v1}, Lcom/android/car/media/common/MediaItemMetadata;->b(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
