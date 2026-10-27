.class public Lcom/xiaopeng/devtools/model/c/e;
.super Ljava/lang/Object;
.source "TestRebootModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/e$b;,
        Lcom/xiaopeng/devtools/model/c/e$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/c/e$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/c/e;-><init>()V

    return-void
.end method

.method public static fJ()Lcom/xiaopeng/devtools/model/c/e;
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/e$a;->fK()Lcom/xiaopeng/devtools/model/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/model/c/e$b;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/devtools/model/c/e$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/model/c/e$1;-><init>(Lcom/xiaopeng/devtools/model/c/e;Lcom/xiaopeng/devtools/model/c/e$b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 40
    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/e$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public bX(I)V
    .locals 3

    .line 44
    new-instance v0, Lcom/xiaopeng/devtools/model/c/e$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/e$2;-><init>(Lcom/xiaopeng/devtools/model/c/e;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/e$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
