.class Lbxd$1;
.super Ljava/lang/Object;
.source "VADEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxd;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvt;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxd;


# direct methods
.method constructor <init>(Lbxd;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lbxd$1;->b:Lbxd;

    iput-object p2, p0, Lbxd$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvt;)Ljava/lang/Object;
    .locals 1

    .line 43
    iget-object v0, p0, Lbxd$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbvt;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lbvt;

    invoke-virtual {p0, p1}, Lbxd$1;->a(Lbvt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
