.class public Lcom/xiaopeng/devtools/model/h/a;
.super Ljava/lang/Object;
.source "EcuVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/h/a$c;,
        Lcom/xiaopeng/devtools/model/h/a$b;,
        Lcom/xiaopeng/devtools/model/h/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/h/a$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/h/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/h/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/h/a;->bI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    const-string v0, "Unknown"

    .line 27
    :try_start_0
    const-string v1, "Unknown"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    const-string v0, "VersionModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_version = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 30
    :goto_0
    const-string v0, "VersionModel"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :goto_1
    return-object v1
.end method

.method public static hG()Lcom/xiaopeng/devtools/model/h/a;
    .locals 1

    .line 21
    invoke-static {}, Lcom/xiaopeng/devtools/model/h/a$b;->hH()Lcom/xiaopeng/devtools/model/h/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs a(Lcom/xiaopeng/devtools/model/h/a$c;[[Ljava/lang/String;)V
    .locals 3

    .line 37
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/model/h/a$a;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/model/h/a$a;-><init>(Lcom/xiaopeng/devtools/model/h/a;Lcom/xiaopeng/devtools/model/h/a$c;)V

    new-array p1, v1, [[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    aput-object v2, p1, v1

    const/4 v1, 0x1

    aget-object p2, p2, v1

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/h/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method
