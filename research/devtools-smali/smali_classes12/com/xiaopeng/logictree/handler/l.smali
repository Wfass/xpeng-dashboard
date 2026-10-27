.class public Lcom/xiaopeng/logictree/handler/l;
.super Lcom/xiaopeng/logictree/handler/h;
.source "UsbInfo.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 17
    const-string p1, "UsbInfo"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->CLASS_NAME:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/l;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "check whether tbox attached ? "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/l;->YB:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/l;->YB:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/commonfunc/utils/i;->a(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->YB:[Ljava/lang/String;

    const-string v0, "2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/l;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "check whether udisk attached ? "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/i;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 33
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    goto :goto_0

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->YB:[Ljava/lang/String;

    const-string v0, "3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/l;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "get udisk fsType"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/system/a/a;->sleep(J)V

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/l;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/i;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 42
    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_5
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 53
    return-void
.end method
