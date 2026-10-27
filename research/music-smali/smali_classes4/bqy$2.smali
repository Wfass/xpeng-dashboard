.class Lbqy$2;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqy;->c(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

.field final synthetic b:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbqy$2;->b:Lbqy;

    iput-object p2, p0, Lbqy$2;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lbqy$2;->b:Lbqy;

    invoke-static {v0}, Lbqy;->a(Lbqy;)Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    iget-object v2, p0, Lbqy$2;->a:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    return-void
.end method
