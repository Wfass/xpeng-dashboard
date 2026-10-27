.class Lbal$1;
.super Ljava/lang/Object;
.source "MusicUrlOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbal;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbal;


# direct methods
.method constructor <init>(Lbal;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbal$1;->a:Lbal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lbal$1;->a:Lbal;

    invoke-virtual {v0}, Lbal;->b()Ljava/util/List;

    return-void
.end method
