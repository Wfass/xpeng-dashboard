.class Lcom/xiaopeng/devtools/model/g/a/a$a;
.super Landroid/os/AsyncTask;
.source "AdasCollectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic uI:Lcom/xiaopeng/devtools/model/g/a/a;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/g/a/a;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/a/a$a;->uI:Lcom/xiaopeng/devtools/model/g/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/g/a/a;Lcom/xiaopeng/devtools/model/g/a/a$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/g/a/a$a;-><init>(Lcom/xiaopeng/devtools/model/g/a/a;)V

    return-void
.end method

.method private f(Ljava/io/File;)V
    .locals 4

    .line 72
    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/model/g/a/a$a;->f(Ljava/io/File;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 83
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/g/a/a$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 58
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/xiaopeng/devtools/presenter/f/a/a;->nw:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 63
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 64
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/g/a/a$a;->f(Ljava/io/File;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/g/a/a$a;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/FileEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/FileEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 89
    return-void
.end method
