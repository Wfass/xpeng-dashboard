.class Lcom/xiaopeng/devtools/model/d/a$a;
.super Landroid/os/AsyncTask;
.source "OledModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic tI:Lcom/xiaopeng/devtools/model/d/a;

.field private tJ:Lcom/xiaopeng/devtools/model/d/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/devtools/model/d/a$b<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private tK:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/d/a;Lcom/xiaopeng/devtools/model/d/a$b;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tI:Lcom/xiaopeng/devtools/model/d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tJ:Lcom/xiaopeng/devtools/model/d/a$b;

    .line 198
    iput-object p3, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tK:Ljava/lang/reflect/Type;

    .line 199
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/a$a;->e([Ljava/lang/String;)Ljava/util/List;

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
            "TT;>;"
        }
    .end annotation

    .line 203
    nop

    .line 204
    nop

    .line 206
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

    .line 207
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 208
    new-array v1, v1, [B

    .line 209
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 210
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 211
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tK:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    if-eqz p1, :cond_0

    .line 217
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 223
    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 212
    :catch_1
    move-exception v1

    goto :goto_2

    .line 215
    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5

    .line 212
    :catch_2
    move-exception v1

    move-object p1, v0

    .line 213
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    if-eqz p1, :cond_1

    .line 217
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    :goto_3
    goto :goto_4

    .line 218
    :catch_3
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 223
    :cond_1
    :goto_4
    return-object v0

    .line 215
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz p1, :cond_2

    .line 217
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 220
    goto :goto_6

    .line 218
    :catch_4
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    :cond_2
    :goto_6
    throw v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/a$a;->p(Ljava/util/List;)V

    return-void
.end method

.method protected p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tJ:Lcom/xiaopeng/devtools/model/d/a$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a$a;->tJ:Lcom/xiaopeng/devtools/model/d/a$b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/d/a$b;->m(Ljava/lang/Object;)V

    .line 232
    :cond_0
    return-void
.end method
