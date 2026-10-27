.class Lcom/xiaopeng/devtools/model/h/a$a;
.super Landroid/os/AsyncTask;
.source "EcuVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private uM:Lcom/xiaopeng/devtools/model/h/a$c;

.field final synthetic uN:Lcom/xiaopeng/devtools/model/h/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/h/a;Lcom/xiaopeng/devtools/model/h/a$c;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/h/a$a;->uN:Lcom/xiaopeng/devtools/model/h/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/h/a$a;->uM:Lcom/xiaopeng/devtools/model/h/a$c;

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs a([[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 53
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/model/h/a$a;->cancel(Z)Z

    .line 55
    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-object v4, p1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 59
    aget-object v4, p1, v2

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/model/h/a$a;->uN:Lcom/xiaopeng/devtools/model/h/a;

    aget-object v5, p1, v1

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Lcom/xiaopeng/devtools/model/h/a;->a(Lcom/xiaopeng/devtools/model/h/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    aget-object v4, p1, v2

    array-length v4, v4

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_1

    .line 61
    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bG(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/h/a$a;->uM:Lcom/xiaopeng/devtools/model/h/a$c;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/h/a$a;->uM:Lcom/xiaopeng/devtools/model/h/a$c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/h/a$c;->onSuccess(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/h/a$a;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/h/a$a;->bG(Ljava/lang/String;)V

    return-void
.end method
