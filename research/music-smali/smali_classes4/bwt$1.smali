.class Lbwt$1;
.super Ljava/lang/Object;
.source "AppMgrProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwt;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvl;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbwt;


# direct methods
.method constructor <init>(Lbwt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbwt$1;->c:Lbwt;

    iput-object p2, p0, Lbwt$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbwt$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvl;)Ljava/lang/Object;
    .locals 2

    .line 42
    iget-object v0, p0, Lbwt$1;->c:Lbwt;

    invoke-static {v0}, Lbwt;->a(Lbwt;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbwt$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lbwt$1;->c:Lbwt;

    invoke-static {v0}, Lbwt;->a(Lbwt;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbwt$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lbwt$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lbwt$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbvl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lbvl;

    invoke-virtual {p0, p1}, Lbwt$1;->a(Lbvl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
