.class Lbqy$3;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqy;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Ljava/util/List;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lbqy$3;->b:Lbqy;

    iput-object p2, p0, Lbqy$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lbqy$3;->b:Lbqy;

    invoke-static {v0}, Lbqy;->a(Lbqy;)Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    move-result-object v0

    iget-object v1, p0, Lbqy$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method
