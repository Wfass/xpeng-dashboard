.class Lahu$a;
.super Landroid/os/AsyncTask;
.source "LocalImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Laht;

.field private final c:Z

.field private final d:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

.field private e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Laht;Z)V
    .locals 1

    .line 223
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    new-instance v0, Lahu$a$1;

    invoke-direct {v0, p0}, Lahu$a$1;-><init>(Lahu$a;)V

    iput-object v0, p0, Lahu$a;->d:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    const/4 v0, 0x1

    .line 249
    iput v0, p0, Lahu$a;->e:I

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lahu$a;->a:Ljava/lang/ref/WeakReference;

    .line 225
    iput-object p2, p0, Lahu$a;->b:Laht;

    .line 226
    iput-boolean p3, p0, Lahu$a;->c:Z

    return-void
.end method

.method static synthetic a(Lahu$a;)Laht;
    .locals 0

    .line 215
    iget-object p0, p0, Lahu$a;->b:Laht;

    return-object p0
.end method

.method static synthetic b(Lahu$a;)I
    .locals 0

    .line 215
    iget p0, p0, Lahu$a;->e:I

    return p0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 p1, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lahu$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 255
    :cond_0
    iget-object v0, p0, Lahu$a;->b:Laht;

    iget-object v0, v0, Laht;->a:Landroid/net/Uri;

    .line 257
    iget-object v1, p0, Lahu$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_1

    return-object p1

    .line 260
    :cond_1
    invoke-static {v0}, Lcom/android/car/apps/common/i;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    invoke-static {v1, v0}, Lcom/android/car/apps/common/i;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 262
    invoke-static {v1, v0}, Lcom/android/car/apps/common/i;->a(Landroid/content/Context;Landroid/content/Intent$ShortcutIconResource;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 264
    :cond_2
    invoke-static {v0}, Lcom/android/car/apps/common/i;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lahu$a;->d:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 268
    :cond_3
    iget-boolean v2, p0, Lahu$a;->c:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 269
    iput v2, p0, Lahu$a;->e:I

    .line 270
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 273
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 275
    :try_start_2
    invoke-static {v0, v2}, Lahw;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 277
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lahu$a;->d:Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

    invoke-static {v3, v4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 279
    sget v4, Lcom/android/car/apps/common/h$d;->improper_image_refs_tint_color:I

    .line 280
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 279
    invoke-static {v3, v4}, Lcom/android/car/apps/common/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 281
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v4

    :catchall_0
    move-exception v1

    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 272
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    if-eqz v3, :cond_4

    .line 282
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_1
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    move-object v2, p1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 272
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_2
    if-eqz v2, :cond_5

    .line 282
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_3
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    return-object p1

    :catch_5
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLoadingTask#doInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalImageFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object p1
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 295
    invoke-static {}, Lahu;->a()Z

    move-result v0

    const-string v1, "LocalImageFetcher"

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute canceled:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lahu$a;->isCancelled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " drawable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lahu$a;->b:Laht;

    iget-object v2, v2, Laht;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-virtual {p0}, Lahu$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    invoke-static {}, Lahu;->b()Lahu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {}, Lahu;->b()Lahu;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lahu;->a(Lahu;Lahu$a;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const-string p1, "ImageLoadingTask#onPostExecute: LocalImageFetcher was reset !"

    .line 303
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lahu$a;->a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lahu$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
