.class Lbah$1;
.super Ljava/lang/Object;
.source "MusicLoginUidCacheBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbah;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbah;


# direct methods
.method constructor <init>(Lbah;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbah$1;->b:Lbah;

    iput-object p2, p0, Lbah$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    iget-object v0, p0, Lbah$1;->b:Lbah;

    invoke-static {v0}, Lbah;->a(Lbah;)Ljava/util/LinkedList;

    move-result-object v0

    const-string v1, "MusicLoginUidCache"

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    iget-object v3, p0, Lbah$1;->b:Lbah;

    invoke-virtual {v3}, Lbah;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/ad;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put:tempUidList="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 47
    iget-object v2, p0, Lbah$1;->b:Lbah;

    invoke-static {v2, v0}, Lbah;->a(Lbah;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    :cond_0
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 53
    iget-object v2, p0, Lbah$1;->b:Lbah;

    invoke-static {v2, v0}, Lbah;->a(Lbah;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 55
    :cond_1
    iget-object v2, p0, Lbah$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, p0, Lbah$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lbah$1;->b:Lbah;

    invoke-static {v3, v2}, Lbah;->a(Lbah;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    iget-object v3, p0, Lbah$1;->b:Lbah;

    invoke-virtual {v3}, Lbah;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put:uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbah$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
