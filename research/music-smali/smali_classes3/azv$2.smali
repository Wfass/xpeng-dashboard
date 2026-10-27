.class Lazv$2;
.super Ljava/lang/Object;
.source "LocalLoveOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazv;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lazv;


# direct methods
.method constructor <init>(Lazv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lazv$2;->c:Lazv;

    iput-object p2, p0, Lazv$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lazv$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lazv$2;->c:Lazv;

    iget-object v1, p0, Lazv$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lazv$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lazv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lazv$2;->c:Lazv;

    invoke-virtual {v1, v0}, Lazv;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;-><init>()V

    .line 93
    iget-object v1, p0, Lazv$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setUid(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lazv$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setHash(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LocalLove;->setCacheTime(J)V

    .line 97
    iget-object v1, p0, Lazv$2;->c:Lazv;

    iget-object v1, v1, Lazv;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method
