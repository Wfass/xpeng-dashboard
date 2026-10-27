.class public Lcom/lzy/okgo/convert/FileConvert;
.super Ljava/lang/Object;
.source "FileConvert.java"

# interfaces
.implements Lcom/lzy/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/convert/Converter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;


# instance fields
.field private callback:Lcom/lzy/okgo/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/callback/Callback<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private folder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/convert/FileConvert;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lzy/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lzy/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lzy/okgo/convert/FileConvert;->folder:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/lzy/okgo/convert/FileConvert;->fileName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okgo/convert/FileConvert;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .param p0, "x0"    # Lcom/lzy/okgo/convert/FileConvert;
    .param p1, "x1"    # Lcom/lzy/okgo/model/Progress;

    .line 42
    invoke-direct {p0, p1}, Lcom/lzy/okgo/convert/FileConvert;->onProgress(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lzy/okgo/convert/FileConvert;)Lcom/lzy/okgo/callback/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/lzy/okgo/convert/FileConvert;

    .line 42
    iget-object v0, p0, Lcom/lzy/okgo/convert/FileConvert;->callback:Lcom/lzy/okgo/callback/Callback;

    return-object v0
.end method

.method private onProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 1
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 116
    new-instance v0, Lcom/lzy/okgo/convert/FileConvert$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/convert/FileConvert$2;-><init>(Lcom/lzy/okgo/convert/FileConvert;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Ljava/io/File;
    .locals 12
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzy/okgo/convert/FileConvert;->folder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lzy/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/convert/FileConvert;->folder:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/lzy/okgo/convert/FileConvert;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->getNetFileName(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/convert/FileConvert;->fileName:Ljava/lang/String;

    .line 73
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzy/okgo/convert/FileConvert;->folder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "dir":Ljava/io/File;
    invoke-static {v1}, Lcom/lzy/okgo/utils/IOUtils;->createFolder(Ljava/io/File;)Z

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lzy/okgo/convert/FileConvert;->fileName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/lzy/okgo/utils/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "bodyStream":Ljava/io/InputStream;
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 80
    .local v4, "buffer":[B
    const/4 v5, 0x0

    move-object v6, v5

    .line 82
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .local v7, "body":Lokhttp3/ResponseBody;
    if-nez v7, :cond_2

    .line 110
    invoke-static {v3}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v6}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    .line 85
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 86
    new-instance v5, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v5}, Lcom/lzy/okgo/model/Progress;-><init>()V

    .line 87
    .local v5, "progress":Lcom/lzy/okgo/model/Progress;
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 88
    iget-object v8, p0, Lcom/lzy/okgo/convert/FileConvert;->fileName:Ljava/lang/String;

    iput-object v8, v5, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    .line 90
    const/4 v8, 0x2

    iput v8, v5, Lcom/lzy/okgo/model/Progress;->status:I

    .line 91
    iput-object v0, v5, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    .line 92
    iput-object v0, v5, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    .line 95
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v8

    .line 96
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "len":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    .line 97
    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 99
    iget-object v8, p0, Lcom/lzy/okgo/convert/FileConvert;->callback:Lcom/lzy/okgo/callback/Callback;

    if-nez v8, :cond_3

    .end local v9    # "len":I
    goto :goto_0

    .line 100
    .restart local v9    # "len":I
    :cond_3
    int-to-long v10, v9

    new-instance v8, Lcom/lzy/okgo/convert/FileConvert$1;

    invoke-direct {v8, p0}, Lcom/lzy/okgo/convert/FileConvert$1;-><init>(Lcom/lzy/okgo/convert/FileConvert;)V

    invoke-static {v5, v10, v11, v8}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    nop

    .line 110
    invoke-static {v3}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v6}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 110
    .end local v5    # "progress":Lcom/lzy/okgo/model/Progress;
    .end local v7    # "body":Lokhttp3/ResponseBody;
    .end local v9    # "len":I
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v6}, Lcom/lzy/okgo/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/convert/FileConvert;->convertResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/lzy/okgo/convert/FileConvert;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 65
    return-void
.end method
