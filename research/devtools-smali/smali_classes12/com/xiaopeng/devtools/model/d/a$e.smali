.class Lcom/xiaopeng/devtools/model/d/a$e;
.super Landroid/os/AsyncTask;
.source "OledModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/xiaopeng/devtools/bean/oled/OledData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic tI:Lcom/xiaopeng/devtools/model/d/a;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/d/a;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/d/a$e;->tI:Lcom/xiaopeng/devtools/model/d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/d/a;Lcom/xiaopeng/devtools/model/d/a$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/d/a$e;-><init>(Lcom/xiaopeng/devtools/model/d/a;)V

    return-void
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/OledData;",
            ">;"
        }
    .end annotation

    .line 157
    nop

    .line 158
    nop

    .line 160
    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 162
    new-array v1, v1, [B

    .line 163
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 164
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/d/a$e;->tI:Lcom/xiaopeng/devtools/model/d/a;

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/model/d/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    if-eqz v0, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :goto_0
    goto :goto_1

    .line 172
    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 177
    :cond_0
    :goto_1
    move-object p1, v1

    goto :goto_4

    .line 166
    :catch_1
    move-exception v1

    goto :goto_2

    .line 169
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_5

    .line 166
    :catch_2
    move-exception v1

    move-object v0, p1

    .line 167
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-eqz v0, :cond_1

    .line 171
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 174
    :goto_3
    goto :goto_4

    .line 172
    :catch_3
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 177
    :cond_1
    :goto_4
    return-object p1

    .line 169
    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v0, :cond_2

    .line 171
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 174
    goto :goto_6

    .line 172
    :catch_4
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    :cond_2
    :goto_6
    throw p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/a$e;->c([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/d/a$e;->p(Ljava/util/List;)V

    return-void
.end method

.method protected p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/OledData;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a$e;->tI:Lcom/xiaopeng/devtools/model/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/model/d/a;)Lcom/xiaopeng/devtools/model/d/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/d/a$e;->tI:Lcom/xiaopeng/devtools/model/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/model/d/a;)Lcom/xiaopeng/devtools/model/d/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/d/a$c;->q(Ljava/util/List;)V

    .line 188
    :cond_0
    return-void
.end method
