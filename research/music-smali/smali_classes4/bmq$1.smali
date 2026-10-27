.class Lbmq$1;
.super Ljava/lang/Object;
.source "ReadingRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

.field final synthetic b:Lbmq;


# direct methods
.method constructor <init>(Lbmq;Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbmq$1;->b:Lbmq;

    iput-object p2, p0, Lbmq$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lbmq$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->setUpdateTime(J)V

    .line 61
    iget-object v0, p0, Lbmq$1;->b:Lbmq;

    invoke-static {v0}, Lbmq;->a(Lbmq;)Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    move-result-object v0

    iget-object v1, p0, Lbmq$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 62
    iget-object v0, p0, Lbmq$1;->b:Lbmq;

    invoke-static {v0}, Lbmq;->b(Lbmq;)V

    return-void
.end method
