.class public Lcom/xiaopeng/devtools/model/c/d;
.super Ljava/lang/Object;
.source "LcdDebugModel.java"


# instance fields
.field private sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/a;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/d;->sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/d;)Lcom/xiaopeng/devtools/presenter/factorytest/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/d;->sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;

    return-object p0
.end method


# virtual methods
.method public bW(I)V
    .locals 4

    .line 71
    nop

    .line 73
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/disp/disp/attr/lcdclk"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    nop

    .line 82
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    .line 76
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 80
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 76
    :catch_1
    move-exception p1

    .line 77
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const-string v1, "LcdDebugModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    if-eqz v0, :cond_0

    .line 82
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 85
    :goto_1
    goto :goto_2

    .line 83
    :catch_2
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 88
    :cond_0
    :goto_2
    return-void

    .line 80
    :goto_3
    if-eqz v0, :cond_1

    .line 82
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    goto :goto_4

    .line 83
    :catch_3
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :cond_1
    :goto_4
    throw p1
.end method

.method public fI()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaopeng/devtools/model/c/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/d$1;-><init>(Lcom/xiaopeng/devtools/model/c/d;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/d$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
