.class Lbdl$b;
.super Ljava/lang/Object;
.source "AbsReissueModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbdl;


# direct methods
.method private constructor <init>(Lbdl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lbdl$b;->a:Lbdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbdl;Lbdl$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lbdl$b;-><init>(Lbdl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 74
    iget-object v0, p0, Lbdl$b;->a:Lbdl;

    iget-boolean v0, v0, Lbdl;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lbdl$b;->a:Lbdl;

    iput-boolean v1, v0, Lbdl;->b:Z

    .line 76
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->b()V

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->a()Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lbdl$b;->a:Lbdl;

    iget-object v2, v2, Lbdl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbdl$a;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run:  ======== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReissueModel"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no network: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lbdl$b;->a:Lbdl;

    const/16 v4, 0x194

    sget v5, Lcom/xiaopeng/musicradio/common/k$g;->current_no_net:I

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v2, v4, v5}, Lbdl;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v3

    new-instance v4, Lbdl$b$1;

    invoke-direct {v4, p0, v0, v2}, Lbdl$b$1;-><init>(Lbdl$b;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;)V

    invoke-virtual {v3, v0, v4}, Lbec;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbkv;)V

    goto :goto_0
.end method
