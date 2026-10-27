.class Lcom/xiaopeng/devtools/model/g/a/a$b;
.super Landroid/os/Handler;
.source "AdasCollectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic uI:Lcom/xiaopeng/devtools/model/g/a/a;

.field private uJ:[B


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/g/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uI:Lcom/xiaopeng/devtools/model/g/a/a;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    .line 101
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    .line 102
    return-void
.end method

.method private w([B)V
    .locals 4

    .line 139
    nop

    .line 141
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/xiaopeng/devtools/presenter/f/a/a;->zt:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 146
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 148
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 149
    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    nop

    .line 155
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 153
    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    .line 150
    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    .line 153
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 150
    :catch_1
    move-exception p1

    .line 151
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    if-eqz v0, :cond_1

    .line 155
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    :goto_1
    goto :goto_2

    .line 156
    :catch_2
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 161
    :cond_1
    :goto_2
    return-void

    .line 153
    :goto_3
    if-eqz v0, :cond_2

    .line 155
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 158
    goto :goto_4

    .line 156
    :catch_3
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :cond_2
    :goto_4
    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x400

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 110
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 112
    array-length v0, p1

    iget v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    iget v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 114
    iget v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/g/a/a$b;->w([B)V

    .line 117
    iput v3, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    .line 118
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    .line 119
    array-length v0, p1

    iget v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    iget v1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 121
    iget v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    .line 124
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 125
    iget p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/g/a/a$b;->w([B)V

    .line 127
    iput v3, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->mPosition:I

    .line 128
    new-array p1, v2, [B

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$b;->uJ:[B

    .line 136
    :cond_4
    :goto_1
    return-void
.end method
