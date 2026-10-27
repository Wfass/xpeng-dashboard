.class public Lcom/xiaopeng/devtools/a/a/d;
.super Lcom/xiaopeng/devtools/a/a/a;
.source "XpengSettings.java"


# instance fields
.field private ve:Lcom/xiaopeng/devtools/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/a/a/a;-><init>(Landroid/content/Context;)V

    .line 14
    const-string p1, "SETTINGS"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/d;->vd:Ljava/lang/String;

    .line 15
    const-string p1, "XpengSettings"

    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/d;->CLASS_NAME:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/devtools/a/a/d;->ve:Lcom/xiaopeng/devtools/a/b;

    .line 17
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/a/a/a;->destroy()V

    .line 40
    return-void
.end method

.method public declared-synchronized f([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 21
    nop

    .line 23
    :try_start_0
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/a/a/d;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x1

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/xiaopeng/devtools/a/a/d;->ve:Lcom/xiaopeng/devtools/a/b;

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/devtools/a/b;->bL(Ljava/lang/String;)V

    .line 26
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/d;->bO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 28
    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/d;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a/d;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
