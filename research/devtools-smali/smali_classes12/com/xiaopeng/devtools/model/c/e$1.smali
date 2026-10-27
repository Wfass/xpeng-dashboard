.class Lcom/xiaopeng/devtools/model/c/e$1;
.super Landroid/os/AsyncTask;
.source "TestRebootModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/c/e;->a(Lcom/xiaopeng/devtools/model/c/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic sl:Lcom/xiaopeng/devtools/model/c/e$b;

.field final synthetic sm:Lcom/xiaopeng/devtools/model/c/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/e;Lcom/xiaopeng/devtools/model/c/e$b;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/e$1;->sm:Lcom/xiaopeng/devtools/model/c/e;

    iput-object p2, p0, Lcom/xiaopeng/devtools/model/c/e$1;->sl:Lcom/xiaopeng/devtools/model/c/e$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 29
    const-string p1, "persist.service.panic"

    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/e$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/e$1;->sl:Lcom/xiaopeng/devtools/model/c/e$b;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/e$1;->sl:Lcom/xiaopeng/devtools/model/c/e$b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/e$b;->bY(I)V

    .line 39
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/e$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
