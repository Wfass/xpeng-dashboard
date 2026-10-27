.class Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;
.super Ljava/lang/Object;
.source "MusicFileIteratable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;->a:Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;->a:Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->access$000(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->sFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 42
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 43
    aget-object v3, v1, v2

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;->a:Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->access$000(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;->a:Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->access$000(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
