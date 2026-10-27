.class Lbra$1;
.super Ljava/lang/Object;
.source "UsbCacheRequestManager.java"

# interfaces
.implements Lbqx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbra;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbra;


# direct methods
.method constructor <init>(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lbra$1;->d:Lbra;

    iput-object p2, p0, Lbra$1;->a:Ljava/util/List;

    iput-object p3, p0, Lbra$1;->b:Ljava/util/List;

    iput-object p4, p0, Lbra$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 24
    iget-object v0, p0, Lbra$1;->d:Lbra;

    invoke-static {v0, p1}, Lbra;->a(Lbra;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lbra$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 28
    iget-object v4, p0, Lbra$1;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29
    iget-object v4, p0, Lbra$1;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v4, p0, Lbra$1;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lbra$1;->d:Lbra;

    invoke-static {v0, p1}, Lbra;->b(Lbra;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lbra$1;->d:Lbra;

    invoke-virtual {v0, p1}, Lbra;->a(Ljava/util/List;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadInfo1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbCacheRequestManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadInfo2: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 38
    iget-object p1, p0, Lbra$1;->d:Lbra;

    iget-object v0, p0, Lbra$1;->c:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lbra;->a(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 40
    :cond_2
    iget-object p1, p0, Lbra$1;->d:Lbra;

    iget-object v0, p0, Lbra$1;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lbra;->d(Ljava/util/List;)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object p1, p0, Lbra$1;->d:Lbra;

    iget-object v0, p0, Lbra$1;->c:Ljava/util/List;

    iget-object v1, p0, Lbra$1;->a:Ljava/util/List;

    iget-object v2, p0, Lbra$1;->b:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lbra;->b(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method
