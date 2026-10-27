.class Lcom/xiaopeng/devtools/model/d/b$b;
.super Landroid/os/AsyncTask;
.source "OledMusicBookModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
        ">;>;"
    }
.end annotation


# instance fields
.field private tM:Lcom/xiaopeng/devtools/model/d/b$a;

.field final synthetic tN:Lcom/xiaopeng/devtools/model/d/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/d/b;Lcom/xiaopeng/devtools/model/d/b$a;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/b$b;->tN:Lcom/xiaopeng/devtools/model/d/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/d/b$b;->tM:Lcom/xiaopeng/devtools/model/d/b$a;

    .line 39
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/b$b;->e([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs e([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;"
        }
    .end annotation

    .line 43
    nop

    .line 44
    nop

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 48
    new-array v1, v1, [B

    .line 49
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 50
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/xiaopeng/devtools/model/d/b$b$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/model/d/b$b$1;-><init>(Lcom/xiaopeng/devtools/model/d/b$b;)V

    .line 52
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/model/d/b$b$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz p1, :cond_0

    .line 58
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 53
    :catch_1
    move-exception v1

    goto :goto_2

    .line 56
    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5

    .line 53
    :catch_2
    move-exception v1

    move-object p1, v0

    .line 54
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    if-eqz p1, :cond_1

    .line 58
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    :goto_3
    goto :goto_4

    .line 59
    :catch_3
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 64
    :cond_1
    :goto_4
    return-object v0

    .line 56
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz p1, :cond_2

    .line 58
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 61
    goto :goto_6

    .line 59
    :catch_4
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :cond_2
    :goto_6
    throw v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/b$b;->p(Ljava/util/List;)V

    return-void
.end method

.method protected p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/b$b;->tM:Lcom/xiaopeng/devtools/model/d/b$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/b$b;->tM:Lcom/xiaopeng/devtools/model/d/b$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/d/b$a;->r(Ljava/util/List;)V

    .line 73
    :cond_0
    return-void
.end method
