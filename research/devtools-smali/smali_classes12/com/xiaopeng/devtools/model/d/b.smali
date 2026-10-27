.class public Lcom/xiaopeng/devtools/model/d/b;
.super Ljava/lang/Object;
.source "OledMusicBookModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/d/b$a;,
        Lcom/xiaopeng/devtools/model/d/b$c;,
        Lcom/xiaopeng/devtools/model/d/b$b;
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

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/d/b$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/d/b;-><init>()V

    return-void
.end method

.method public static hb()Lcom/xiaopeng/devtools/model/d/b;
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/b$c;->hc()Lcom/xiaopeng/devtools/model/d/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/model/d/b$a;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaopeng/devtools/model/d/b$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/model/d/b$b;-><init>(Lcom/xiaopeng/devtools/model/d/b;Lcom/xiaopeng/devtools/model/d/b$a;)V

    const-string p1, "oled/oled_custom_default.json"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
