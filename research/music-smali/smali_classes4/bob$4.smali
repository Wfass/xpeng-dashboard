.class Lbob$4;
.super Ljava/lang/Object;
.source "SearchHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbob;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbob;


# direct methods
.method constructor <init>(Lbob;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lbob$4;->a:Lbob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lbob$4;->a:Lbob;

    invoke-static {v0}, Lbob;->a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->deleteAll()V

    return-void
.end method
