.class public abstract Lcom/xiaopeng/devtools/a/a/a;
.super Ljava/lang/Object;
.source "CmdHandler.java"


# instance fields
.field protected CLASS_NAME:Ljava/lang/String;

.field protected final DELIMITER:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected vd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "CmdHandler"

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->CLASS_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "CMD_NAME"

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->vd:Ljava/lang/String;

    .line 12
    const-string v0, ","

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->DELIMITER:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/devtools/a/a/a;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 40
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    return v0

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected bN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->vd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/l;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->vd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/l;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->vd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/l;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a/a;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public declared-synchronized f([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 19
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method
