.class Lcom/xiaopeng/devtools/model/g/b$a;
.super Landroid/os/AsyncTask;
.source "ControlPanelModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/g/b;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic uG:Lcom/xiaopeng/devtools/model/g/b;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/g/b;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/b$a;->uG:Lcom/xiaopeng/devtools/model/g/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/g/b;Lcom/xiaopeng/devtools/model/g/b$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/g/b$a;-><init>(Lcom/xiaopeng/devtools/model/g/b;)V

    return-void
.end method


# virtual methods
.method protected bG(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/g/b$a;->uG:Lcom/xiaopeng/devtools/model/g/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/g/b;->a(Lcom/xiaopeng/devtools/model/g/b;)Lcom/xiaopeng/devtools/presenter/f/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/f/d;->cl(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 33
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sdcard/data.json"

    const/high16 v1, 0x7f0f0000

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/devtools/utils/g;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 34
    const-string p1, "sdcard/data.json"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->cv(Ljava/lang/String;)[B

    move-result-object p1

    .line 35
    nop

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/g/b$a;->d([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/g/b$a;->bG(Ljava/lang/String;)V

    return-void
.end method
