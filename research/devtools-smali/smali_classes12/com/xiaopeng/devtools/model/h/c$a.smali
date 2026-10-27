.class Lcom/xiaopeng/devtools/model/h/c$a;
.super Landroid/os/AsyncTask;
.source "SystemInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/h/c;
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
        "Ljava/util/List<",
        "Landroid/content/pm/PackageInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic uQ:Lcom/xiaopeng/devtools/model/h/c;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/h/c;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/h/c$a;->uQ:Lcom/xiaopeng/devtools/model/h/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/h/c;Lcom/xiaopeng/devtools/model/h/c$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/h/c$a;-><init>(Lcom/xiaopeng/devtools/model/h/c;)V

    return-void
.end method


# virtual methods
.method protected varargs c([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/h/c$a;->uQ:Lcom/xiaopeng/devtools/model/h/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/h/c;->a(Lcom/xiaopeng/devtools/model/h/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 81
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 82
    const-string v3, "com.xiaopeng."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.aispeech."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.settings"

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.systemui"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    goto :goto_0

    .line 88
    :cond_2
    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/h/c$a;->c([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/h/c$a;->p(Ljava/util/List;)V

    return-void
.end method

.method protected p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/h/c$a;->uQ:Lcom/xiaopeng/devtools/model/h/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/h/c;->b(Lcom/xiaopeng/devtools/model/h/c;)Lcom/xiaopeng/devtools/presenter/g/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/g/c;->u(Ljava/util/List;)V

    .line 95
    return-void
.end method
