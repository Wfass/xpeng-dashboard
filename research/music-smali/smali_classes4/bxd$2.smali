.class Lbxd$2;
.super Ljava/lang/Object;
.source "VADEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxd;->b()V
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
.field final synthetic a:Lbxd;


# direct methods
.method constructor <init>(Lbxd;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lbxd$2;->a:Lbxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvt;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-interface {p1}, Lbvt;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lbvt;

    invoke-virtual {p0, p1}, Lbxd$2;->a(Lbvt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
