.class Larg$1;
.super Ljava/lang/Object;
.source "XpCacheOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larg;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Larg;


# direct methods
.method constructor <init>(Larg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Larg$1;->c:Larg;

    iput-object p2, p0, Larg$1;->a:Ljava/lang/String;

    iput-object p3, p0, Larg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;-><init>()V

    .line 44
    iget-object v1, p0, Larg$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->setKey(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Larg$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->setValue(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Larg$1;->c:Larg;

    invoke-static {v1}, Larg;->a(Larg;)Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method
