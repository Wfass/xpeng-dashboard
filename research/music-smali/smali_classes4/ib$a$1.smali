.class Lib$a$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib$a;->a(Lib$c;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lib$c;

.field final synthetic b:Lib$a;


# direct methods
.method constructor <init>(Lib$a;Lib$c;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lib$a$1;->b:Lib$a;

    iput-object p2, p0, Lib$a$1;->a:Lib$c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Lib;
    .locals 2

    .line 870
    :try_start_0
    iget-object p1, p0, Lib$a$1;->b:Lib$a;

    invoke-virtual {p1}, Lib$a;->a()Lib;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Palette"

    const-string v1, "Exception thrown during async generate"

    .line 872
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lib;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lib$a$1;->a:Lib$c;

    invoke-interface {v0, p1}, Lib$c;->a(Lib;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 865
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lib$a$1;->a([Landroid/graphics/Bitmap;)Lib;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 865
    check-cast p1, Lib;

    invoke-virtual {p0, p1}, Lib$a$1;->a(Lib;)V

    return-void
.end method
