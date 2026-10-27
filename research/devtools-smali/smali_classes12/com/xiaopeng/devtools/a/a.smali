.class public Lcom/xiaopeng/devtools/a/a;
.super Ljava/lang/Object;
.source "CmdParser.java"


# instance fields
.field private uU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/devtools/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V
    .locals 3

    monitor-enter p0

    .line 26
    :try_start_0
    const-string v0, "CmdParser"

    const-string v1, "Register PC command handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    const-string v1, "XPENG+LOG"

    new-instance v2, Lcom/xiaopeng/devtools/a/a/c;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/devtools/a/a/c;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    const-string v1, "XPENG+SETTINGS"

    new-instance v2, Lcom/xiaopeng/devtools/a/a/d;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/devtools/a/a/d;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    const-string v1, "XPENG+CAN"

    new-instance v2, Lcom/xiaopeng/devtools/a/a/b;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/devtools/a/a/b;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/devtools/a/b;)Z
    .locals 4

    .line 46
    const-string v0, "CmdParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/a/a;->b(Ljava/lang/String;Lcom/xiaopeng/devtools/a/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 54
    const-string p2, "CmdParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process done successfully. cmd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    nop

    .line 61
    return v2

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 58
    return v0

    .line 51
    :cond_2
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;Lcom/xiaopeng/devtools/a/b;)Z
    .locals 7

    .line 65
    const-string v0, "CmdParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 72
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 74
    :cond_0
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_1
    move-object v1, v3

    :goto_0
    const-string v4, "CmdParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {p2}, Lcom/xiaopeng/devtools/a/b;->hQ()V

    .line 82
    iget-object v3, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/a/a/a;

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/a/a;->bK(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Lcom/xiaopeng/devtools/a/a/a;->f([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v1, "CmdParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p1, "XPENG+CMD Error:NA\r\n"

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 90
    :goto_1
    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {p2, v3}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 97
    move v0, v2

    .line 99
    :cond_3
    return v0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 96
    return v0

    .line 73
    :cond_4
    :goto_2
    return v0
.end method

.method public bK(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 105
    const-string v0, "CmdParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitArgu() cmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 108
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v0, "CmdParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitArgu() args : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-object p1
.end method

.method public declared-synchronized hO()V
    .locals 3

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    const-string v0, "CmdParser"

    const-string v1, "unregister PC command handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/a/a/a;

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/a/a/a;->destroy()V

    .line 40
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/a/a;->uU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_2
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
