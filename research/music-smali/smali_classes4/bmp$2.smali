.class Lbmp$2;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmp;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

.field final synthetic b:Lbmp;


# direct methods
.method constructor <init>(Lbmp;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbmp$2;->b:Lbmp;

    iput-object p2, p0, Lbmp$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lbmp$2;->b:Lbmp;

    invoke-static {v0}, Lbmp;->a(Lbmp;)Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    move-result-object v0

    iget-object v1, p0, Lbmp$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 67
    iget-object v0, p0, Lbmp$2;->b:Lbmp;

    invoke-virtual {v0}, Lbmp;->b()V

    return-void
.end method
